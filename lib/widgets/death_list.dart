import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/deaths_provider.dart';

import '../widgets/death_item.dart';

class DeathList extends StatelessWidget {
  const DeathList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final deathData = Provider.of<DeathsProvider>(context);
    // final death = deathData.items;

    return Consumer<DeathsProvider>(
      builder: (context, deathData, _) => ListView(
        children: deathData.items
            .map((deathItem) => DeathItem(
                  deathItem.deathId,
                  deathItem.death,
                  deathItem.cause,
                  deathItem.responsible,
                  deathItem.lastWords,
                  deathItem.season,
                  deathItem.episode,
                ))
            .toList(),
      ),
    );
  }
}
