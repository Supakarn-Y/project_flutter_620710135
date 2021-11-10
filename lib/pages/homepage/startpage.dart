import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatefulWidget {
  static const routeName = '/start';
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: SizedBox(
                    width: 200.0,
                    height: 200.0,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
              ),

              Text('WELCOME TO',style: GoogleFonts.prompt(fontSize: 25.0,color: Colors.white),),
              Text('GXN GAMING SHOP',style: GoogleFonts.prompt(fontSize: 25.0,color: Colors.white),),
              Container(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background
                    ),
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, "/home"),
                    child: Text("START",style: GoogleFonts.prompt(fontSize: 20.0,color: Colors.black),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
