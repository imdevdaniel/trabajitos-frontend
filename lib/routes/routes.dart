import 'package:flutter/material.dart';

import 'package:trabajitos_frontend/src/pages/main_page.dart';
import 'package:trabajitos_frontend/src/pages/service_category_page.dart';
import 'package:trabajitos_frontend/src/pages/worker_profile_page.dart';
import 'package:trabajitos_frontend/src/pages/chat_page.dart';
import 'package:trabajitos_frontend/src/pages/help_page.dart';
import 'package:trabajitos_frontend/src/pages/home_page.dart';
import 'package:trabajitos_frontend/src/pages/login_page.dart';
import 'package:trabajitos_frontend/src/pages/password_reset_page.dart';
import 'package:trabajitos_frontend/src/pages/signup_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {

  return <String, WidgetBuilder> {
    'main'              : (BuildContext context) => MainPage(),
    'service_category'  : (BuildContext context) => ServiceCategoryPage(),
    'worker_profile'    : (BuildContext context) => WorkerProfilePage(),
    'chat'              : (BuildContext context) => ChatPage(),
    'help'              : (BuildContext context) => HelpPage(),
    'home'              : (BuildContext context) => HomePage(),
    'login'             : (BuildContext context) => LoginPage(),
    'passwordReset'     : (BuildContext context) => PasswordResetPage(),
    'signUp'            : (BuildContext context) => SignUpPage(),
  };

}