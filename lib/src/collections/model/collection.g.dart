// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Collection extends Collection {
  @override
  final int id;
  @override
  final DateTime publishTime;
  @override
  final String title;
  @override
  final String description;
  @override
  final Photo coverPhoto;
  @override
  final BuiltList<Photo> previewPhotos;
  @override
  final bool isFeatured;
  @override
  final int photoCount;
  @override
  final User user;
  @override
  final BuiltList<CollectionTag> tags;
  @override
  final CollectionLinks links;

  factory _$Collection([void updates(CollectionBuilder b)]) =>
      (new CollectionBuilder()..update(updates)).build();

  _$Collection._(
      {this.id,
      this.publishTime,
      this.title,
      this.description,
      this.coverPhoto,
      this.previewPhotos,
      this.isFeatured,
      this.photoCount,
      this.user,
      this.tags,
      this.links})
      : super._();

  @override
  Collection rebuild(void updates(CollectionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionBuilder toBuilder() => new CollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Collection &&
        id == other.id &&
        publishTime == other.publishTime &&
        title == other.title &&
        description == other.description &&
        coverPhoto == other.coverPhoto &&
        previewPhotos == other.previewPhotos &&
        isFeatured == other.isFeatured &&
        photoCount == other.photoCount &&
        user == other.user &&
        tags == other.tags &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            publishTime.hashCode),
                                        title.hashCode),
                                    description.hashCode),
                                coverPhoto.hashCode),
                            previewPhotos.hashCode),
                        isFeatured.hashCode),
                    photoCount.hashCode),
                user.hashCode),
            tags.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Collection')
          ..add('id', id)
          ..add('publishTime', publishTime)
          ..add('title', title)
          ..add('description', description)
          ..add('coverPhoto', coverPhoto)
          ..add('previewPhotos', previewPhotos)
          ..add('isFeatured', isFeatured)
          ..add('photoCount', photoCount)
          ..add('user', user)
          ..add('tags', tags)
          ..add('links', links))
        .toString();
  }
}

class CollectionBuilder implements Builder<Collection, CollectionBuilder> {
  _$Collection _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DateTime _publishTime;
  DateTime get publishTime => _$this._publishTime;
  set publishTime(DateTime publishTime) => _$this._publishTime = publishTime;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  PhotoBuilder _coverPhoto;
  PhotoBuilder get coverPhoto => _$this._coverPhoto ??= new PhotoBuilder();
  set coverPhoto(PhotoBuilder coverPhoto) => _$this._coverPhoto = coverPhoto;

  ListBuilder<Photo> _previewPhotos;
  ListBuilder<Photo> get previewPhotos =>
      _$this._previewPhotos ??= new ListBuilder<Photo>();
  set previewPhotos(ListBuilder<Photo> previewPhotos) =>
      _$this._previewPhotos = previewPhotos;

  bool _isFeatured;
  bool get isFeatured => _$this._isFeatured;
  set isFeatured(bool isFeatured) => _$this._isFeatured = isFeatured;

  int _photoCount;
  int get photoCount => _$this._photoCount;
  set photoCount(int photoCount) => _$this._photoCount = photoCount;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  ListBuilder<CollectionTag> _tags;
  ListBuilder<CollectionTag> get tags =>
      _$this._tags ??= new ListBuilder<CollectionTag>();
  set tags(ListBuilder<CollectionTag> tags) => _$this._tags = tags;

  CollectionLinksBuilder _links;
  CollectionLinksBuilder get links =>
      _$this._links ??= new CollectionLinksBuilder();
  set links(CollectionLinksBuilder links) => _$this._links = links;

  CollectionBuilder();

  CollectionBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _publishTime = _$v.publishTime;
      _title = _$v.title;
      _description = _$v.description;
      _coverPhoto = _$v.coverPhoto?.toBuilder();
      _previewPhotos = _$v.previewPhotos?.toBuilder();
      _isFeatured = _$v.isFeatured;
      _photoCount = _$v.photoCount;
      _user = _$v.user?.toBuilder();
      _tags = _$v.tags?.toBuilder();
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Collection other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Collection;
  }

  @override
  void update(void updates(CollectionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Collection build() {
    _$Collection _$result;
    try {
      _$result = _$v ??
          new _$Collection._(
              id: id,
              publishTime: publishTime,
              title: title,
              description: description,
              coverPhoto: _coverPhoto?.build(),
              previewPhotos: _previewPhotos?.build(),
              isFeatured: isFeatured,
              photoCount: photoCount,
              user: _user?.build(),
              tags: _tags?.build(),
              links: _links?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'coverPhoto';
        _coverPhoto?.build();
        _$failedField = 'previewPhotos';
        _previewPhotos?.build();

        _$failedField = 'user';
        _user?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Collection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CollectionTag extends CollectionTag {
  @override
  final String title;

  factory _$CollectionTag([void updates(CollectionTagBuilder b)]) =>
      (new CollectionTagBuilder()..update(updates)).build();

  _$CollectionTag._({this.title}) : super._();

  @override
  CollectionTag rebuild(void updates(CollectionTagBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionTagBuilder toBuilder() => new CollectionTagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionTag && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(0, title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CollectionTag')..add('title', title))
        .toString();
  }
}

class CollectionTagBuilder
    implements Builder<CollectionTag, CollectionTagBuilder> {
  _$CollectionTag _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  CollectionTagBuilder();

  CollectionTagBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionTag other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CollectionTag;
  }

  @override
  void update(void updates(CollectionTagBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CollectionTag build() {
    final _$result = _$v ?? new _$CollectionTag._(title: title);
    replace(_$result);
    return _$result;
  }
}

class _$CollectionLinks extends CollectionLinks {
  @override
  final String self;
  @override
  final String html;
  @override
  final String photos;
  @override
  final String related;

  factory _$CollectionLinks([void updates(CollectionLinksBuilder b)]) =>
      (new CollectionLinksBuilder()..update(updates)).build();

  _$CollectionLinks._({this.self, this.html, this.photos, this.related})
      : super._();

  @override
  CollectionLinks rebuild(void updates(CollectionLinksBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionLinksBuilder toBuilder() =>
      new CollectionLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionLinks &&
        self == other.self &&
        html == other.html &&
        photos == other.photos &&
        related == other.related;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, self.hashCode), html.hashCode), photos.hashCode),
        related.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CollectionLinks')
          ..add('self', self)
          ..add('html', html)
          ..add('photos', photos)
          ..add('related', related))
        .toString();
  }
}

class CollectionLinksBuilder
    implements Builder<CollectionLinks, CollectionLinksBuilder> {
  _$CollectionLinks _$v;

  String _self;
  String get self => _$this._self;
  set self(String self) => _$this._self = self;

  String _html;
  String get html => _$this._html;
  set html(String html) => _$this._html = html;

  String _photos;
  String get photos => _$this._photos;
  set photos(String photos) => _$this._photos = photos;

  String _related;
  String get related => _$this._related;
  set related(String related) => _$this._related = related;

  CollectionLinksBuilder();

  CollectionLinksBuilder get _$this {
    if (_$v != null) {
      _self = _$v.self;
      _html = _$v.html;
      _photos = _$v.photos;
      _related = _$v.related;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CollectionLinks;
  }

  @override
  void update(void updates(CollectionLinksBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CollectionLinks build() {
    final _$result = _$v ??
        new _$CollectionLinks._(
            self: self, html: html, photos: photos, related: related);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
