import 'dart:convert';
import 'package:flutter/services.dart';

class _HomeOptionsProvider {

  List<dynamic> homeOptions = [];

  Future<List<dynamic>> loadHomeOptions() async {

    final String jsonResponse = await rootBundle.loadString(
      'data/local_data.json'
    );
    Map optionsMap = json.decode(jsonResponse);
    this.homeOptions = optionsMap['serviceOptions'];

    return homeOptions;

  }

}

final _HomeOptionsProvider homeOptionsProvider = new _HomeOptionsProvider();
