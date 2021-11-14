import 'package:flutter/material.dart';
import 'package:project_flutter_620710135/pages/controller/controller_list.dart';
import 'package:project_flutter_620710135/pages/detail/datail_page.dart';
import 'package:project_flutter_620710135/pages/favorite/favorite_page.dart';
import 'package:project_flutter_620710135/pages/headset/headset_list.dart';
import 'package:project_flutter_620710135/pages/homepage/homepage.dart';
import 'package:project_flutter_620710135/pages/homepage/startpage.dart';
import 'package:project_flutter_620710135/pages/keyboard/keyboard_list.dart';
import 'package:project_flutter_620710135/pages/mouse/mouse_list.dart';
import 'package:project_flutter_620710135/pages/mouse_pad/mousepad_list.dart';
import 'package:project_flutter_620710135/pages/shop/cart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GXN GAMING SHOP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {
        HomePage.routeName: (context) => const HomePage(),
        StartPage.routeName: (context) => const StartPage(),
        KeyboardPage.routeName: (context) => const KeyboardPage(),
        mousePage.routeName: (context) => const mousePage(),
        headsetPage.routeName: (context) => const headsetPage(),
        mousepadPage.routeName: (context) => const mousepadPage(),
        controllerPage.routeName: (context) => const controllerPage(),
        DetailPage.routeName: (context) => const DetailPage(),
        FavoritePage.routeName: (context) => const FavoritePage(),
        cartPage.routeName: (context) => const cartPage(),
      },
      initialRoute : StartPage.routeName,
    );
  }
}

