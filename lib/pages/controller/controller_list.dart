import 'package:flutter/material.dart';
import 'package:project_flutter_620710135/models/shop_item.dart';
import 'package:project_flutter_620710135/pages/detail/datail_page.dart';

class controllerPage extends StatefulWidget {
  static const routeName = '/controller';
  const controllerPage({Key? key}) : super(key: key);

  @override
  _controllerPageState createState() => _controllerPageState();
}

class _controllerPageState extends State<controllerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            var item = items[index];
            return Card(
              margin: const EdgeInsets.all(8.0),
              elevation: 5.0,
              shadowColor: Colors.black.withOpacity(0.2),
              child: InkWell(
                onTap: () {
                  print(item);
                  Navigator.pushNamed(
                    context,
                    DetailPage.routeName,
                    arguments: item,
                  );
                  //final args = ModalRoute.of(context)!.arguments as ScreenArgument
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/controller/${item.image}',
                        width: 60.0,
                        height: 60.0,
                      ),
                      //Icon(Icons.person),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${item.title}',
                            style: TextStyle(fontSize: 15.0),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            '${item.price} บาท',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  var items = [
    Item(
        id: 1,
        title: 'G29 DRIVING FORCE WHEEL',
        price: 11900,
        image: 'joy_G29.png',
        detail: 'SUPPORT : PC / PS3 / PS4',
        type: "controller"),
    Item(
        id: 2,
        title: 'LG-SHIFTER DRIVING FORCE',
        price: 2190,
        image: 'joy_shifter.png',
        detail: 'SUPPORT : PC / XBOX / PS4',
        type: "controller"),
    Item(
        id: 3,
        title: 'F710 WIRELESS GAMEPAD',
        price: 1590,
        image: 'joy_F710.png',
        detail: 'SUPPORT : PC',
        type: "controller"),
    Item(
        id: 4,
        title: 'F310 CONSOLE STYTE',
        price: 760,
        image: 'joy_F310.png',
        detail: 'SUPPORT : PC',
        type: "controller"),
  ];
}
