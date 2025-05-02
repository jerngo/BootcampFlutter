import 'package:flutter/material.dart';
import 'package:tugas_10_navigation/news_view/newsview.dart';
import 'package:tugas_10_navigation/news_view/news_detailed_view/news_detailed_view.dart';

class MainNavWrapper extends StatefulWidget {
  final int initialIndex;

  const MainNavWrapper({Key? key, this.initialIndex = 0}) : super(key: key);

  @override
  _MainNavWrapperState createState() => _MainNavWrapperState();
}

class _MainNavWrapperState extends State<MainNavWrapper> {
  late int _currentIndex;

  final GlobalKey<NavigatorState> _homeNavigatorKey =
      GlobalKey<NavigatorState>();

  late final List<String> _titles;
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;

    _titles = ['Home', 'Search', 'Settings'];

    _pages = [
      WillPopScope(
        onWillPop: () async {
          if (_homeNavigatorKey.currentState != null &&
              _homeNavigatorKey.currentState!.canPop()) {
            _homeNavigatorKey.currentState!.pop();
            return false; // Jangan keluar dari app
          }
          return true; // Boleh keluar kalau sudah di root
        },
        child: Navigator(
          key: _homeNavigatorKey,
          onGenerateRoute: (settings) {
            if (settings.name == '/detailed') {
              return MaterialPageRoute(
                builder: (context) => NewsDetailedView(),
              );
            }
            return MaterialPageRoute(builder: (context) => NewsView());
          },
        ),
      ),
      SearchPage(),
      SettingPage(),
    ];
  }

  void _onTabTapped(int index) {
    if (_currentIndex == index && index == 0) {
      // Jika di tab Home dan pencet lagi, balik ke NewsView
      _homeNavigatorKey.currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          _currentIndex == 0
              ? null
              : AppBar(title: Text(_titles[_currentIndex])),
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Search Page"));
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          minimumSize: Size(100, 40),
        ),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
        },
        child: Text(
          "Logout",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
