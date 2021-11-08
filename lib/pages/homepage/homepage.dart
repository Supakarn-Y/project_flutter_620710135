import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_flutter_620710135/pages/controller/controller_list.dart';
import 'package:project_flutter_620710135/pages/headset/headset_list.dart';
import 'package:project_flutter_620710135/pages/keyboard/keyboard_list.dart';
import 'package:project_flutter_620710135/pages/mouse/mouse_list.dart';
import 'package:project_flutter_620710135/pages/mouse_pad/mousepad_list.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
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
        title: const Text("SU GAMING GEAR"),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    // ไล่เฉดจากมุมบนซ้ายไปมุมล่างขวาของ Container
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    // ไล่เฉดจากสีแดงไปสีน้ำเงิน
                    colors: [
                      Colors.black,
                      Colors.black,
                    ],
                  ),
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
                    Icons.keyboard,
                    color: Colors.black,
                  ),
                  'Keyboard Gamimg'),
               onTap: () => _showSubPage(0),
            ),
            ListTile(
              title: _buildDreawerItem(
                  const Icon(
                    Icons.mouse,
                    color: Colors.black,
                  ),
                  'Mouse Gaming'),
              onTap: () => _showSubPage(1)
            ),
            ListTile(
              title: _buildDreawerItem(
                  const Icon(
                    Icons.headphones,
                    color: Colors.black,
                  ),
                  'Headset'),
              onTap: () => _showSubPage(2)
            ),
            ListTile(
              title: _buildDreawerItem(
                  const Icon(
                    Icons.mouse,
                    color: Colors.black,
                  ),
                  'Mouse Pad'),
              onTap: () => _showSubPage(3)
            ),
            ListTile(
              title: _buildDreawerItem(
                  const Icon(
                    Icons.control_camera,
                    color: Colors.black,
                  ),
                  'Controller'),
              onTap: () => _showSubPage(4)
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
        return const KeyboardPage();

      case 1:
        return const mousePage();

      case 2:
        return const headsetPage();

      case 3:
        return const mousepadPage();

      case 4:
        return const controllerPage();

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
