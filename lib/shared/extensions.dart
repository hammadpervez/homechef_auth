import 'package:flutter/cupertino.dart';

extension Responsiveness on BuildContext {
  MediaQueryData get _data => MediaQuery.of(this);
  double get height => _data.size.height;
  double get width => _data.size.width;
  double get fixedHeight => _data.orientation == Orientation.portrait
      ? _data.size.height
      : _data.size.width;
  double get heightExSafeArea =>
      MediaQuery.of(this).size.height - MediaQuery.of(this).padding.top;
}
