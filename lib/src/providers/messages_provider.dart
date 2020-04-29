import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _MessagesProvider {

  List<dynamic> messages = [];

  Future<List<dynamic>> loadMessages() async {

    final String jsonResponse = await rootBundle.loadString(
      'data/messages.json'
    );
    Map optionsMap = json.decode(jsonResponse);
    this.messages = optionsMap['messages'];

    return messages;

  }

}

final _MessagesProvider messagesProvider = new _MessagesProvider();
