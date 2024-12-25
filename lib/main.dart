import 'package:ecommerc_example/controllers/types.dart';
import 'package:ecommerc_example/screen/add_category.dart';
import 'package:ecommerc_example/screen/type_addmin_screen.dart';
import 'package:ecommerc_example/screen/landing_page.dart';
import 'package:ecommerc_example/screen/login_screen.dart';
import 'package:ecommerc_example/screen/sign_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/categories_model.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ControlsCategories(),),
        ChangeNotifierProvider.value(value: Types(),),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          LandingPage.routeName : (_) => LandingPage(),
          SignupScreen.routeName : (_) => SignupScreen(),
          LoginScreen.routeName : (_) => LoginScreen(),
          TypeAddminScreen.routeName : (_) => TypeAddminScreen(),
          AddCategory.routeName : (_) => AddCategory(),
        },
      ),
    );
  }
}
