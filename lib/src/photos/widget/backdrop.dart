import 'dart:math' as math;

import 'package:flutter/material.dart';

const double _kFlingVelocity = 2.0;

class _BackdropFrontLayer extends StatelessWidget {
  final Widget child;
  final VoidCallback onHeaderTap;
  final GestureDragUpdateCallback onHeaderVerticalDragUpdate;
  final GestureDragEndCallback onHeaderVerticalDragEnd;

  const _BackdropFrontLayer(
      {Key key,
      @required this.child,
      @required this.onHeaderTap,
      @required this.onHeaderVerticalDragUpdate,
      @required this.onHeaderVerticalDragEnd})
      : assert(child != null),
        assert(onHeaderTap != null),
        assert(onHeaderVerticalDragUpdate != null),
        assert(onHeaderVerticalDragEnd != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
      ),
      child: Column(
        children: <Widget>[
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: Icon(Icons.remove),
            onTap: onHeaderTap,
            onVerticalDragUpdate: onHeaderVerticalDragUpdate,
            onVerticalDragEnd: onHeaderVerticalDragEnd,
          ),
          Expanded(
            child: child,
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
      elevation: 1.0,
    );
  }
}

class Backdrop extends StatefulWidget {
  final Widget backLayer;
  final Widget frontLayer;

  const Backdrop({Key key, @required this.backLayer, @required this.frontLayer})
      : assert(backLayer != null),
        assert(frontLayer != null),
        super(key: key);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop>
    with SingleTickerProviderStateMixin {
  final GlobalKey _backdropKey = GlobalKey(debugLabel: 'Backdrop');
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      value: 0.0,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  bool get _backdropFrontLayerVisible {
    final AnimationStatus animationStatus = _animationController.status;
    return animationStatus == AnimationStatus.completed ||
        animationStatus == AnimationStatus.forward;
  }

  void _toggleBackdropFrontLayerVisibility() {
    if (_backdropFrontLayerVisible) {
      _animationController.fling(velocity: -_kFlingVelocity);
    } else {
      _animationController.fling(velocity: _kFlingVelocity);
    }
  }

  double get _backdropHeight {
    final RenderBox renderBox = _backdropKey.currentContext.findRenderObject();
    return renderBox.size.height;
  }

  void _handleHeaderVerticalDragUpdate(DragUpdateDetails dragUpdateDetails) {
    if (!_animationController.isAnimating) {
      _animationController.value -=
          dragUpdateDetails.primaryDelta / _backdropHeight;
    }
  }

  void _handleHeaderVerticalDragEnd(DragEndDetails dragEndDetails) {
    if (_animationController.isAnimating ||
        _animationController.status == AnimationStatus.completed) return;

    final double flingVelocity =
        dragEndDetails.velocity.pixelsPerSecond.dy / _backdropHeight;

    if (flingVelocity < 0.0) {
      _animationController.fling(
        velocity: math.max(_kFlingVelocity, -flingVelocity),
      );
    } else if (flingVelocity > 0.0) {
      _animationController.fling(
        velocity: math.min(-_kFlingVelocity, -flingVelocity),
      );
    } else {
      if (_animationController.value < 0.5) {
        _animationController.fling(velocity: -_kFlingVelocity);
      } else {
        _animationController.fling(velocity: _kFlingVelocity);
      }
    }
  }

  Widget _buildBackdropStack(BuildContext context, BoxConstraints constraints) {
    const double frontLayerHeaderHeight = 104.0;
    final Size frontLayerSize = constraints.biggest;
    final double frontLayerTop = frontLayerSize.height - frontLayerHeaderHeight;

    Animation<RelativeRect> frontLayerAnimation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(
        0.0,
        frontLayerTop,
        0.0,
        frontLayerTop - frontLayerSize.height,
      ),
      end: RelativeRect.fromLTRB(
        0.0,
        0.0,
        0.0,
        0.0,
      ),
    ).animate(_animationController.view);

    return Container(
      key: _backdropKey,
      child: Stack(
        children: <Widget>[
          widget.backLayer,
          PositionedTransition(
            rect: frontLayerAnimation,
            child: _BackdropFrontLayer(
              child: widget.frontLayer,
              onHeaderTap: _toggleBackdropFrontLayerVisibility,
              onHeaderVerticalDragUpdate: _handleHeaderVerticalDragUpdate,
              onHeaderVerticalDragEnd: _handleHeaderVerticalDragEnd,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: LayoutBuilder(
        builder: _buildBackdropStack,
      ),
    );
  }
}
