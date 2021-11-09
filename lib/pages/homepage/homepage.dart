import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_flutter_620710135/pages/controller/controller_list.dart';
import 'package:project_flutter_620710135/pages/favorite/favorite_page.dart';
import 'package:project_flutter_620710135/pages/headset/headset_list.dart';
import 'package:project_flutter_620710135/pages/homepage/home_menu.dart';
import 'package:project_flutter_620710135/pages/keyboard/keyboard_list.dart';
import 'package:project_flutter_620710135/pages/mouse/mouse_list.dart';
import 'package:project_flutter_620710135/pages/mouse_pad/mousepad_list.dart';
import 'package:project_flutter_620710135/pages/shop/cart_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  static String title = "SU GAMING SHOP";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _subPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(HomePage.title),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.black
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(35.0),
                          child: SizedBox(
                            width: 70.0,
                            height: 70.0,
                            child: Image.asset('assets/images/profile.jpg'),
                          )),
                    ),
                    Text(
                      'Suapakarn Yoojongdee',
                      style: GoogleFonts.roboto(
                          color: Colors.white, fontSize: 20.0),
                    ),
                    Text(
                      'Yoojongdee_s@silpakorn.edu',
                      style: GoogleFonts.roboto(
                          color: Colors.white70, fontSize: 13.0),
                    ),
                  ],
                )),

            ListTile(
                title: _buildDreawerItem(
                    const Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    'HOME'),
                onTap: () {
                  HomePage.title = "SU GAMING SHOP";
                  _showSubPage(0);}
            ),
            ExpansionTile(
              title: Row(
                children: [
                  const Icon(
                    Icons.sports_esports,
                    color: Colors.black,
                  ),
                  SizedBox.shrink(),
                  Text('  GAMING GEAR',style: TextStyle(fontSize:18.0),),
                ],
              ),
              children: [
                ListTile(
                  title: _buildDreawerItem(
                      const Icon(
                        Icons.keyboard,
                        color: Colors.black,
                      ),
                      ' Keyboard Gamimg'),
                   onTap: ()  {
                     HomePage.title = "KEYBOARD GAMING";
                    _showSubPage(1);}
                ),
                ListTile(
                  title: _buildDreawerItem(
                      const Icon(
                        Icons.mouse,
                        color: Colors.black,
                      ),
                      ' Mouse Gaming'),
                  onTap: () {
                    HomePage.title = "MOUSE GAMING";
                    _showSubPage(2);}
                ),
                ListTile(
                  title: _buildDreawerItem(
                      const Icon(
                        Icons.headphones,
                        color: Colors.black,
                      ),
                      ' Headset'),
                  onTap: () {
                    HomePage.title = "HEADSET GAMING";
                    _showSubPage(3);}
                ),
                ListTile(
                  title: _buildDreawerItem(
                      const Icon(
                        Icons.mouse,
                        color: Colors.black,
                      ),
                      ' Mouse Pad'),
                  onTap: () {
                    HomePage.title = "MOUSEPAD GAMING";
                    _showSubPage(4);}
                ),
                ListTile(

                  title: _buildDreawerItem(
                      const Icon(
                        Icons.control_camera,
                        color: Colors.black,
                      ),
                      ' Controller'),
                  onTap: () {
                    HomePage.title = "CONTROLLER GAMING";
                    _showSubPage(5);}
                ),

              ],
            ),
            ListTile(
                title: _buildDreawerItem(
                    const Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                    'Favorite'),
                onTap: () {
                  HomePage.title = "FAVORITE";
                  _showSubPage(6);}
            ),
            ListTile(
                title: _buildDreawerItem(
                    const Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                    'Cart'),
                onTap: () {
                  HomePage.title = "CART";
                  _showSubPage(7);}
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(child: _buildSubPage()),
      ),
    );
  }

  _showSubPage(int index) {
    setState(() {
      _subPageIndex = index;
    });

    Navigator.of(context).pop();
  }

  Widget _buildSubPage() {
    switch (_subPageIndex) {
      case 0:
        return const MenuPage();

      case 1:
        return const KeyboardPage();

      case 2:
        return const mousePage();

      case 3:
        return const headsetPage();

      case 4:
        return const mousepadPage();

      case 5:
        return const controllerPage();

      case 6:
        return const FavoritePage();

      case 7:
        return const cartPage();

      default:
        return Center(
          child: Text(
            'THIS IS A HOMEPAGE',
            style: GoogleFonts.roboto(fontSize: 35.0),
            textAlign: TextAlign.center,
          ),
        );
    }
  }

  Row _buildDreawerItem(Widget icon, String title) {
    return Row(
      children: [
        icon,
        const SizedBox(
          width: 8.0,
        ),
        Text(
          title,
          style: GoogleFonts.roboto(fontSize: 20.0),
        ),
      ],
    );
  }
}
