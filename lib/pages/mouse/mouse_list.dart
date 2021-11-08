import 'package:flutter/material.dart';
import 'package:project_flutter_620710135/models/shop_item.dart';
import 'package:project_flutter_620710135/pages/detail/datail_page.dart';

class mousePage extends StatefulWidget {
  static const routeName = '/mouse';
  const mousePage({Key? key}) : super(key: key);

  @override
  _mousePageState createState() => _mousePageState();
}

class _mousePageState extends State<mousePage> {
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
                        'assets/images/mouse/${item.image}',
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
        title: "G502 HERO K/DA COLLECTION",
        price: 2990,
        image: "m_g502_kda.jpg",
        detail: "OPTICAL SENSOR : 25600 DPI",
        type: "mouse"),
    Item(
        id: 2,
        title: "G502 RGB HERO",
        price: 1590,
        image: "m_g502.jpg",
        detail: "OPTICAL SENSOR : 16000 DPI",
        type: "mouse"),
    Item(
        id: 3,
        title: "GPRO-X SUPERLIGHT WIRELESS (BLACK)",
        price: 4990,
        image: "m_gprox_super.jpg",
        detail: "OPTICAL SENSOR : 100-25400 DPI",
        type: "mouse"),
    Item(
        id: 4,
        title: "GPRO-X SUPERLIGHT WIRELESS (WHITE)",
        price: 4990,
        image: "m_gprox_superwhite.jpg",
        detail: "OPTICAL SENSOR : 100-25400 DPI",
        type: "mouse"),
    Item(
        id: 5,
        title: "G304 K/DA COLLECTION WIRELESS",
        price: 1590,
        image: "m_g304_kda.jpg",
        detail: "OPTICAL SENSOR : 200-12000 DPI",
        type: "mouse"),
    Item(
        id: 6,
        title: "G304 BLACK WIRELESS",
        price: 1390,
        image: "m_g304.jpg",
        detail: "OPTICAL SENSOR : 200-12000 DPI",
        type: "mouse"),
    Item(
        id: 7,
        title: "G304 WHITE WIRELESS",
        price: 1390,
        image: "m_g304_white.jpg",
        detail: "OPTICAL SENSOR : 200-12000 DPI",
        type: "mouse"),
    Item(
        id: 8,
        title: "G703 WIRELESS HERO",
        price: 3790,
        image: "m_g703.jpg",
        detail: "OPTICAL SENSOR : 16000 DPI",
        type: "mouse"),
    Item(
        id: 9,
        title: "G903 WIRELESS HERO",
        price: 4190,
        image: "m_g903.png",
        detail: "OPTICAL SENSOR : 16000 DPI",
        type: "mouse"),
    Item(
        id: 10,
        title: "G403 HERO",
        price: 1490,
        image: "m_g403.png",
        detail: "OPTICAL SENSOR : 100-16000 DPI",
        type: "mouse"),
    Item(
        id: 11,
        title: "G102 LIGHTSYNC",
        price: 690,
        image: "m_g102.jpg",
        detail: " 200 - 8000 DPI ,LIGHTSYNC RGB",
        type: "mouse"),
  ];
}
