import 'dart:convert';

import 'package:flutter/services.dart' as rootBundle;
import 'package:sahakosh/notifications/domain/model.dart';

class NotificationService {
  // ignore: non_constant_identifier_names
  static Future<List<NotificationModel>> ReadJsonData() async {
    //read json file
    final jsondata = await rootBundle.rootBundle.loadString("lib/notifications/domain/dummy.json");
    //decode json data as list
    final list = json.decode(jsondata) as List<dynamic>;

    //map json and initialize using DataModel
    return list.map((e) => NotificationModel.fromJson(e)).toList();
  }
}
