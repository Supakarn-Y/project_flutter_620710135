import 'package:flutter/material.dart';
import 'package:project_flutter_620710135/models/shop_item.dart';
import 'package:project_flutter_620710135/pages/detail/datail_page.dart';

class KeyboardPage extends StatefulWidget {
  static const routeName = '/keyboard';
  const KeyboardPage({Key? key}) : super(key: key);

  @override
  _KeyboardPageState createState() => _KeyboardPageState();
}

class _KeyboardPageState extends State<KeyboardPage> {
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
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/keyboard/${item.image}',
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
        title: "G PRO LEAGUE OF LEGENDS EDITION",
        price: 4290,
        image: "k_gpro_league.jpg",
        detail: "Switch : GX Brown Tactile",
        type: "keyboard"),
    Item(
        id: 2,
        title: "G PRO K/DA COLLECTION (EN)",
        price: 4290,
        image: "k_gpro_kda.jpg",
        detail: "Switch : GX Brown Tactile",
        type: "keyboard"),
    Item(
        id: 3,
        title: "G512 (CLICKY)",
        price: 2690,
        image: "k_G512.jpg",
        detail: "Switch : GX BLUE CLICKY",
        type: "keyboard"),
    Item(
        id: 4,
        title: "G512 (TACTILE)",
        price: 2690,
        image: "k_G512.jpg",
        detail: "Switch : GX BROWN TACTILE",
        type: "keyboard"),
    Item(
        id: 5,
        title: "G512 (LINEAR)",
        price: 2690,
        image: "k_G512.jpg",
        detail: "Switch : GX RED LINEAR",
        type: "keyboard"),
    Item(
        id: 6,
        title: "G913 TKL WIRELESS RGB (LINEAR)",
        price: 5690,
        image: "k_G913_tkl.jpg",
        detail: "Switch : GL LINEAR SWITCH",
        type: "keyboard"),
    Item(
        id: 7,
        title: "G913 TKL WIRELESS RGB (TACTILE)",
        price: 5690,
        image: "k_G913_tkl.jpg",
        detail: "Switch : GL TACTILE SWITCH",
        type: "keyboard"),
    Item(
        id: 8,
        title: "G913 TKL WIRELESS RGB (CLICKY)",
        price: 5690,
        image: "k_G913_tkl.jpg",
        detail: "Switch : GL CLICKY SWITCH",
        type: "keyboard"),
    Item(
        id: 9,
        title: "G913 LIGHTSPEED WIRELESS RGB",
        price: 5990,
        image: "k_G913.jpg",
        detail: "Switch : Low Profile GL Tactile",
        type: "keyboard"),
    Item(
        id: 10,
        title: "G213 PRODIGY",
        price: 1350,
        image: "k_G213.png",
        detail: "Switch : MEMBRANE SWITCH",
        type: "keyboard"),
  ];
}
