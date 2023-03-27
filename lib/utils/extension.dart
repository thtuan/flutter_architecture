import 'package:flutter/cupertino.dart';

extension NullOrEmptyCheck on String? {
  bool get isNull => this == null;

  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

extension SpaceXY on double {
  SizedBox get spaceY => SizedBox(height: this);

  SizedBox get spaceX => SizedBox(width: this);

  SizedBox get spaceXY => SizedBox(width: this, height: this);
}

extension PaddingXt on double {
  EdgeInsets get spaceV => EdgeInsets.symmetric(vertical: this);

  EdgeInsets get spaceH => EdgeInsets.symmetric(horizontal: this);

  EdgeInsets get spaceAll => EdgeInsets.all(this);
}
