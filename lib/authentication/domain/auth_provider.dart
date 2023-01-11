import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:sahakosh/authentication/domain/auth_db_provider.dart';

class AuthProvider with ChangeNotifier {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance; 
  AuthDBProvider _authDBProvider = AuthDBProvider() ; 
  

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

  Future<String> loginInvestor(
      {required String email, required String password}) async {
    String result = 'OK';

    try {
      final UserCredential user = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password); 

          //checks if the sign in was successful
          if(user.credential!=null) { 
            
          }
    } catch (e) {
      result = e.toString();
    }

    return result;
  }

  Future<String> registerInvestor() async {
    String result = 'OK';

    return result;
  }

  Future<String> loginStartup() async {
    String result = 'OK';

    return result;
  }

  Future<String> registerStartup() async {
    String result = 'OK';

    return result;
  }
}
