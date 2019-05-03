import 'package:flutter/material.dart';
import 'package:yet_another_wallpaper_app/src/home/bloc/app_tab.dart';

class AppTabSelector extends StatelessWidget {
  final AppTab currentTab;
  final Function(AppTab) onAppTabSelected;

  const AppTabSelector(
      {Key key, @required this.currentTab, @required this.onAppTabSelected})
      : assert(currentTab != null),
        assert(onAppTabSelected != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: AppTab.values.indexOf(currentTab),
      onTap: (index) => onAppTabSelected(AppTab.values[index]),
      items: AppTab.values.map((appTab) {
        if (appTab == AppTab.photos) {
          return BottomNavigationBarItem(
              icon: Icon(Icons.photo), title: Text('Photos'));
        } else if (appTab == AppTab.collections) {
          return BottomNavigationBarItem(
              icon: Icon(Icons.collections), title: Text('Collections'));
        } else if (appTab == AppTab.downloads) {
          return BottomNavigationBarItem(
              icon: Icon(Icons.get_app), title: Text('Downloads'));
        }
      }).toList(),
    );
  }
}
