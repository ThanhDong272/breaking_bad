import 'package:flutter/material.dart';

class DetailCharacter extends StatelessWidget {
  const DetailCharacter({Key? key}) : super(key: key);

  static const routeName = '/detail-character';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
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
      ),
      body: Center(
        child: Text('Detail characters'),
      ),
    );
  }
}
