import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:measurment_converter/unit.dart';

/// Converter screen where users can input amounts to convert.
///
class ConverterScreen extends StatelessWidget {
  /// Units for this [Category]
  final List<Unit> units;

  /// This [ConverterRoute] requires the color and units to not be null.
  final Color color;

  const ConverterScreen({
    @required this.units,
    @required this.color,
  })
      : assert(units != null),
        assert(color != null);

  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    final unitWidgets = units.map((Unit unit) {
      return Container(
          color: color,
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            )
          ],
        )
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
