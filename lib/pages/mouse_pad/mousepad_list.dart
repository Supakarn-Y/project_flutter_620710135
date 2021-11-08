import 'package:flutter/material.dart';
import 'package:project_flutter_620710135/models/shop_item.dart';
import 'package:project_flutter_620710135/pages/detail/datail_page.dart';

class mousepadPage extends StatefulWidget {
  static const routeName = '/mousepad';
  const mousepadPage({Key? key}) : super(key: key);

  @override
  _mousepadPageState createState() => _mousepadPageState();
}

class _mousepadPageState extends State<mousepadPage> {
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
                        'assets/images/mousepad/${item.image}',
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
        title: 'G840 XL LEAGUE OF LEGENDS EDITION',
        price: 1690,
        image: 'p_G840_league.jpg',
        detail: 'DIMENSION 900 X 400 X 3 MM',
        type: "mousepad"),
    Item(
        id: 2,
        title: 'LG-G640 LARGE CLOTH',
        price: 890,
        image: 'p_G640.jpg',
        detail: 'DIMENSION 460 X 400 X 3 MM',
        type: "mousepad"),
  ];
}
