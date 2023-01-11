import 'dart:convert';

import 'package:flutter/services.dart' as rootBundle;
import 'package:sahakosh/startup_ui/domain/startupmodel.dart';

class StartupService {
  // ignore: non_constant_identifier_names
  static Future<List<StartupModel>> ReadJsonData() async {
    //read json file
    final jsondata = await rootBundle.rootBundle.loadString("lib/startup_ui/domain/dummy.json");
    //decode json data as list
    final list = json.decode(jsondata) as List<dynamic>;

    //map json and initialize using DataModel
    return list.map((e) => StartupModel.fromJson(e)).toList();
  }
}
