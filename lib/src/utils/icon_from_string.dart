import 'package:flutter/material.dart';

final Map _availableIconsSet = <String, IconData> {

  'accessibility' : Icons.accessibility,
  'add_alert'     : Icons.add_alert,
  'folder_open'   : Icons.folder_open,
  'donut_large'   : Icons.donut_large,
  'input'         : Icons.input,
  'electricity'   : Icons.offline_bolt,
  'water'         : Icons.opacity,
  'translate'     : Icons.translate,
  'hammer'        : Icons.gavel,
  'soldering'     : Icons.settings_input_component,
  'nature_people' : Icons.nature_people,
  'bricks'        : Icons.view_quilt,
  'painter'       : Icons.format_paint,
  'lock'          : Icons.lock,
  'handyman'      : Icons.face,

};

Icon getIconFromString(String iconName) {
  return Icon(_availableIconsSet[iconName], color: Colors.blue,);
}