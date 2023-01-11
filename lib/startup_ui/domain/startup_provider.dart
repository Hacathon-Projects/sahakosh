import 'package:flutter/material.dart';

class StartupServiceProvider with ChangeNotifier { 

  bool _loading = false;
  bool get loading => _loading;

  String _loadingText = 'Hello';
  String get loadingText => _loadingText;

  void setLoading() {
    _loading;
    notifyListeners();
  }

  void setLoadingText(String text) {
    _loadingText = text;
    notifyListeners();
  }

  Future<String> loginInvestor() async {
    String result = 'OK';

    return result;
  }
}