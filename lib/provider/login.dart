import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LogProvider with ChangeNotifier {
  bool _loading = false;
  bool get loadind => _loading;
  void setLoadin(bool value) {
    _loading = value;
    notifyListeners();
  }

  void login(String email, String password) async {
    setLoadin(true);
    try {
      Response response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {'email': email, 'password': password});
      if (response.statusCode == 200) {
        print('succcesfull');
        setLoadin(false);
      } else {
        setLoadin(false);
        print('Try Again');
      }
    } catch (e) {
      setLoadin(false);
      print(e.toString);
    }
  }
}
