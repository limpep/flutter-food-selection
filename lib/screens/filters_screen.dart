import 'package:flutter/material.dart';
import 'package:foodselection/components/main_draw.dart';

class FiltersScreen extends StatelessWidget {
  static final screenId = 'FiltersScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your filters'),
      ),
      drawer: MainDraw(),
      body: Center(
        child: Text('Settings'),
      ),
    );
  }
}
