import 'package:flutter/cupertino.dart';

import 'home.dart';
import 'login.dart';

class Routes {
  static String login = "/";
  static String home = "/home";

  static Map<String, WidgetBuilder> routes = {
    login: (context) => LoginPage(),
    home: (context) => HomePage()
  };
}
