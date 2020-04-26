import 'package:flutter/material.dart';

import 'package:trabajitos_frontend/src/pages/home_page.dart';
import 'package:trabajitos_frontend/src/pages/service_category_page.dart';
import 'package:trabajitos_frontend/src/pages/worker_profile_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {

  return <String, WidgetBuilder> {
    'home'              : (BuildContext context) => HomePage(),
    'service_category'  : (BuildContext context) => ServiceCategoryPage(),
    'worker_profile'    : (BuildContext context) => WorkerProfilePage(),
  };

}