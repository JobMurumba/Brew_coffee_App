import 'package:breq_crew/screens/home/brew_tile.dart';
import 'package:flutter/material.dart';
import 'package:breq_crew/models/brew.dart';
import 'package:provider/provider.dart';

class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {
    final brews = Provider.of<List<Brew>>(context) ?? [];

    if (brews.isNotEmpty) {
      brews.forEach((brew) {
        //print(brew.name);
      });
    }

    return ListView.builder(
      itemCount: brews.length,
      itemBuilder: (context, index) {
        return BrewTile(brew: brews[index]);
      },
    );
  }
}
