import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:taxi/app/routes/app_pages.dart';

import 'constants/light_idea_theme.dart';
import 'constants/my_constants.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: LightIdeaTheme.light(),
      darkTheme: LightIdeaTheme.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: MyConstants.appName,
      initialRoute: Routes.splash,
      getPages: AppRoutes.routes,
    );
  }
}
