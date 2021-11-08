import 'package:flutter/material.dart';
import 'package:project_flutter_620710135/models/shop_item.dart';
import 'package:project_flutter_620710135/pages/detail/datail_page.dart';

class headsetPage extends StatefulWidget {
  static const routeName = '/headset';
  const headsetPage({Key? key}) : super(key: key);

  @override
  _headsetPageState createState() => _headsetPageState();
}

class _headsetPageState extends State<headsetPage> {
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
                        'assets/images/headset/${item.image}',
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
        title: 'G PRO X LEAGUE OF LEGENDS EDITION',
        price: 5990,
        image: 'h_proX_league.jpg',
        detail: 'HEADSET RESPONSE : 20 Hz - 20000 Hz\nMIC RESPONSE : 100 Hz - 10000 Hz',
        type: "headset"),
    Item(
        id: 2,
        title: 'G PRO X',
        price: 5990,
        image: 'h_proX.jpg',
        detail: 'HEADSET RESPONSE : 20 Hz - 20000 Hz\nMIC RESPONSE : 100 Hz - 10000 Hz',
        type: "headset"),
    Item(
        id: 3,
        title: 'G435 LIGHTSPEED (BLACK)',
        price: 2390,
        image: 'h_G435_black.jpg',
        detail: 'HEADSET RESPONSE : 20 Hz - 20000 Hz\nMIC RESPONSE : 100 Hz - 8000 Hz',
        type: "headset"),
    Item(
        id: 4,
        title: 'G435 LIGHTSPEED (WHITE)',
        price: 2390,
        image: 'h_G435_white.jpg',
        detail: 'HEADSET RESPONSE : 20 Hz - 20000 Hz\nMIC RESPONSE : 100 Hz - 8000 Hz',
        type: "headset"),
    Item(
        id: 5,
        title: 'G435 LIGHTSPEED (BLUE)',
        price: 2390,
        image: 'h_G435_blue.jpg',
        detail: 'HEADSET RESPONSE : 20 Hz - 20000 Hz\nMIC RESPONSE : 100 Hz - 8000 Hz',
        type: "headset"),
    Item(
        id: 6,
        title: 'G733 LIGHTSPEED WIRELESS (WHITE)',
        price: 4790,
        image: 'h_G733_white.jpg',
        detail: 'HEADSET RESPONSE : 20 Hz - 20000 Hz\nMIC RESPONSE : 100 Hz - 10000 Hz',
        type: "headset"),
    Item(
        id: 7,
        title: 'G733 LIGHTSPEED WIRELESS (BLACK)',
        price: 4790,
        image: 'h_G733.jpg',
        detail: 'HEADSET RESPONSE : 20 Hz - 20000 Hz\nMIC RESPONSE : 100 Hz - 10000 Hz',
        type: "headset"),
    Item(
        id: 8,
        title: 'G335 (WHITE)',
        price: 1990,
        image: 'h_G335_white.jpg',
        detail: 'HEADSET RESPONSE : 20 Hz - 20000 Hz\nMIC RESPONSE : 100 Hz - 10000 Hz',
        type: "headset"),
    Item(
        id: 9,
        title: 'G335 (BLACK)',
        price: 1990,
        image: 'h_G733.jpg',
        detail: 'HEADSET RESPONSE : 20 Hz - 20000 Hz\nMIC RESPONSE : 100 Hz - 10000 Hz',
        type: "headset"),
    Item(
        id: 10,
        title: 'G333 BUFFY (BLACK)',
        price: 1690,
        image: 'h_G333.jpg',
        detail: 'HEADSET : \n- ไดนามิกไดรเวอร์ 2 ตัว: 5.8 มม. + 9.2 มม.\n- การตอบสนองความถี่: 20 Hz ~ 20 KHz\n- ความต้านทาน: 24 โอห์ม ±20%\n- ความไว: 101.6±3 dB @ 1 kHz SPL',
        type: "headset"),
    Item(
        id: 11,
        title: 'G633S LIGHTSYNC 7.1',
        price: 2990,
        image: 'h_G633S.jpg',
        detail: 'HEADSET RESPONSE : 20 Hz - 20000 Hz\nMIC RESPONSE : 100 Hz - 10000 Hz',
        type: "headset"),
    Item(
        id: 12,
        title: 'G431 7.1 SURROUND',
        price: 1690,
        image: 'h_G431.jpg',
        detail: 'HEADSET RESPONSE : 20 Hz - 20000 Hz\nMIC RESPONSE : 100 Hz - 20000 Hz',
        type: "headset"),
    Item(
        id: 13,
        title: 'G331',
        price: 1290,
        image: 'h_G331.jpg',
        detail: 'HEADSET RESPONSE : 20 Hz - 20000 Hz\nMIC RESPONSE : 100 Hz - 20000 Hz',
        type: "headset"),
  ];
}
