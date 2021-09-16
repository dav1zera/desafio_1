import 'package:flutter/material.dart';

//Shift R = Reload completo da aplicação;

void main() {
  runApp(MeuHello());
}

class MeuHello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF539FCB),
        body: ListView(
          children: [
            SizedBox(
              height: 200,
              child: Image.asset(
                "assets/images/screen.png",
              ),
            ),
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
            SizedBox(
              height: 30,
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
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                print("Oi");
              },
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Color(0xFF5386CB),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
