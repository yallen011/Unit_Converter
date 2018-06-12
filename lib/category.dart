import 'package:flutter/material.dart';
import 'package:meta/meta.dart';


final _height = 100.0;
final _radius = BorderRadius.circular(_height / 2);
final _padding = 8.0;
final _iconSize = 60.0;
final  _textSize = 24.0;
final _iconPadding = 16.0;

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {

  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  /// Builds a custom widget that shows [Category] information.
  // This information includes the icon, name, and color for the [Category].
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _height,
        child: Padding(
          padding: EdgeInsets.all(_padding),
          child: InkWell(
            borderRadius: _radius,
            splashColor: color,
            highlightColor: color,
            onTap: () => print('I was tapped!'),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(_iconPadding),
                  child: Icon(
                    iconLocation,
                    size: _iconSize,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
