import 'package:flutter/material.dart';

Widget drawSymetricSubtitle({
  BuildContext context,
  String text,
  double horizontalPadding,
  double verticalPadding
}) {

  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: horizontalPadding, vertical: verticalPadding
    ),
    child: Text(
      text,
      style: Theme.of(context).textTheme.subtitle,
    ),
  );

}