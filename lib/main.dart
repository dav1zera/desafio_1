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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Image.asset(
              "assets/images/screen.png",
              width: 174,
              height: 148,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "E-mail",
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Senha",
                          prefixIcon: Icon(Icons.security),
                        ),
                        keyboardType: TextInputType.name,
                        obscureText: true,
                      ),
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
              child: Text(
                "Login",
                style: GoogleFonts.neuton(
                  fontSize: 22,
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(355, 42),
                  onPrimary: Color(0xFF5386CB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            SizedBox(
              height: 28,
            ),
            ElevatedButton(
              onPressed: () {
                print("Oi");
              },
              child: Text(
                "Cadastrar",
                style: GoogleFonts.neuton(
                  fontSize: 22,
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(355, 42),
                  onPrimary: Color(0xFF5386CB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            Image.asset(
              "assets/images/urban.png",
              width: 370,
              height: 383,
            ),
          ],
        ),
      ),
    );
  }
}
