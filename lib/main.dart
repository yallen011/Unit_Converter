import 'package:flutter/material.dart';

// You can use a relative import, i.e. `import 'category.dart;'` or
// a package import, as shown below.

import 'category.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;


void main() => runApp(UnitConverterApp());

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: Center(
          child: Category(
              name: _categoryName,
              color: _categoryColor,
              iconLocation: _categoryIcon,
          ),
        ),
      ),
    );
  }
}