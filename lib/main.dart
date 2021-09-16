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
        body: Container(
          color: Colors.blue,
          child: ListView(
            children: [
              SizedBox(
                  height: 200,
                  child: Image.asset(
                    "assets/images/screen.png",
                  )),
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
            ],
          ),
        ),
        backgroundColor: Color(0xFF539FCB),
      ),
    );
  }
}
