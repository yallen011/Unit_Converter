// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';
// @required is defined in the meta.dart package
import 'package:meta/meta.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart

  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  // We use an underscore to indicate that these variables are private.
  // See https://www.dartlang.org/guides/language/effective-dart/design#libraries
  static const _height = 100.0;
  static const _radius = _height / 2;
  static const _padding = 8.0;
  static const _iconSize = 60.0;
  static const _textSize = 24.0;
  static const _iconPadding = 16.0;

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
  //
  // This information includes the icon, name, and color for the [Category].
  //
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  @override
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Material(
        child: Container(
          color: Colors.transparent,
          height: _height,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.all(
                  new Radius.circular(_radius)
              ),
          ),
          child: Padding(
              padding: EdgeInsets.all(_padding),
              child: InkWell(
                splashColor: this.color,
                highlightColor: this.color,
                // We can use either the () => function() or the () { function(); }
                // syntax.
                onTap: () => print('I was tapped!'),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // There are two ways to denote a list: `[]` and `List()`.
                  // Prefer to use the literal syntax, i.e. `[]`, instead of `List()`.
                  // You can add the type argument if you'd like, i.e. <Widget>[].
                  // See https://www.dartlang.org/guides/language/effective-dart/usage#do-use-collection-literals-when-possible
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(_iconPadding),
                        child: new Icon(
                            iconLocation,
                            size: _iconSize,
                        ),
                    ),
                    Center(
                      child: Text(
                        this.name,
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