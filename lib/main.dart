import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/tabs_screen.dart';
import './screens/detail_character_screen.dart';

import './providers/quotes_provider.dart';
import './providers/characters_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => QuotesProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => CharactersProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.yellow,
          ).copyWith(
            secondary: Colors.yellowAccent,
          ),
        ),
        home: TabsScreen(),
        routes: {
          DetailCharacterScreen.routeName: (ctx) => DetailCharacterScreen(),
        },
      ),
    );
  }
}
