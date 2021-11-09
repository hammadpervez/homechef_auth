import 'package:flutter/cupertino.dart';

extension Responsiveness on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get heightExSafeArea =>
      MediaQuery.of(this).size.height - MediaQuery.of(this).padding.top;
}
