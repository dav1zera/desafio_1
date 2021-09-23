import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Shift R = Reload completo da aplicação;

void main() {
  runApp(MeuHello());
}

class MeuHello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF539FCB),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Center(
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.25,
                  child: Image.asset(
                    "assets/images/screen.png",
                    color: Colors.black,
                    width: 174,
                    height: 148,
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                  child: Image.asset(
                    "assets/images/screen.png",
                    width: 168,
                    height: 142,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Container(
            height: 85.0,
            padding: const EdgeInsets.only(right: 17.0, left: 13.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4.0,
                    spreadRadius: 0.0,
                    offset: Offset(4.0, 4.0),
                  )
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ImageIcon(
                        AssetImage("assets/images/man.png"),
                        color: Color(0xFF858585),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          contentPadding: EdgeInsets.all(0.0),
                          isDense: true,
                          hintText: "E-mail",
                          hintStyle: GoogleFonts.ovo(
                            fontSize: 15,
                          ),
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ImageIcon(
                        AssetImage("assets/images/lock.png"),
                        color: Color(0xFF858585),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          isCollapsed: false,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          contentPadding: EdgeInsets.all(0),
                          isDense: true,
                          hintText: "Senha",
                          hintStyle: GoogleFonts.ovo(
                            fontSize: 15,
                          ),
                        ),
                        keyboardType: TextInputType.name,
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Align(
                    alignment: Alignment(1, 0),
                    child: Text("Credenciais inválidas.",
                        style: GoogleFonts.ovo(
                          fontSize: 10,
                          textStyle: TextStyle(
                            color: Color(0xFFB30000),
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 28,
          ),
          ElevatedButton(
            onPressed: () {
              print("Oi");
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(355, 42),
              onPrimary: Color(0xFF5386CB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              "Entrar",
              style: GoogleFonts.neuton(
                fontSize: 22,
                textStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              print("Oi");
            },
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.black,
              fixedSize: Size(355, 42),
              onPrimary: Color(0xFF5386CB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              "Cadastrar",
              style: GoogleFonts.neuton(
                fontSize: 22,
                textStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Image.asset(
            "assets/images/urban.png",
            width: 370,
            height: 383,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
