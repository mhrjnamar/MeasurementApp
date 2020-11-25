import 'package:flutter/material.dart';
import 'package:measurment_converter/category.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

/// The function that is called when main.dart is run.
void main() {
  runApp(UnitConverterApp());
}

/// This widget is the root of our application
/// Currently, we just show one widget in our app.
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Unit Converter',
     home: Scaffold(
       appBar: AppBar(
         title: Text('Unit Converter', style: TextStyle(fontSize: 30.0)),
         elevation: 0.0,
         backgroundColor: Colors.green[100],
       ),
       backgroundColor: Colors.green[100],
       body : Center(
         child: Category(
           name: _categoryName,
           color: _categoryColor,
           iconLocation: _categoryIcon,
         )
       )
     )
   );
  }
}