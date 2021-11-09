import 'package:flutter/services.dart';

final nameLengthFormat = LengthLimitingTextInputFormatter(20);
final nameFormat = FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z\s]'));
final emailFormat = FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z0-9@]'));
final phoneNoFormat = FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));
final phoneLengthFormat = LengthLimitingTextInputFormatter(11);
