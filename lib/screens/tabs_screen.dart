import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/deaths_provider.dart';

import './characters_screen.dart';
import './deaths_screen.dart';
import './quotes_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, dynamic>> _pages;
  int _selectedPageIndex = 0;
  var _isLoading = false;

  @override
  void initState() {
    _pages = [
      {
        'page': QuotesScreen(),
        'title': 'Quotes',
      },
      {
        'page': CharactersScreen(),
        'title': 'Characters',
      },
      {
        'page': DeathsScreen(_isLoading),
        'title': 'Deaths',
      },
    ];

    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _extractedAllDeaths() async {
    await Provider.of<DeathsProvider>(context, listen: false).fetchDeaths();
  }

  void _extractedRandomDeath() async {
    await Provider.of<DeathsProvider>(context, listen: false)
        .fetchRandomDeath();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange,
                Theme.of(context).colorScheme.primary,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: _pages[_selectedPageIndex]['title'] == 'Deaths'
            ? [
                PopupMenuButton(
                  itemBuilder: (_) => [
                    PopupMenuItem(
                      child: Text('Show All Deaths'),
                      onTap: _extractedAllDeaths,
                    ),
                    PopupMenuItem(
                      child: Text('Show Random Death'),
                      onTap: _extractedRandomDeath,
                    ),
                  ],
                )
              ]
            : null,
      ),
      body: _pages[_selectedPageIndex]['page'],
      // IndexedStack(
      //   index: _selectedPageIndex,
      //   children: [
      //     QuotesScreen(),
      //     CharactersScreen(),
      //     DeathsScreen(),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.request_quote),
            label: 'Quotes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Characters',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dangerous_outlined),
            label: 'Deaths',
          ),
        ],
      ),
    );
  }
}
