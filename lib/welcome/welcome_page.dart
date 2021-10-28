import 'package:desafio_1/commons/widgets/custom_button.dart';
import 'package:desafio_1/commons/widgets/screen_image.dart';
import 'package:desafio_1/commons/widgets/urban_image.dart';
import 'package:desafio_1/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
          ScreenImage(
            image: "assets/images/screen.png",
          ),
          Center(
            child: Text(
              "Olá ${controllerSession.userInfo!.name}",
              style: GoogleFonts.neuton(
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          CustomButton(text: "Deslogar", onPressed: () => {}),
          UrbanImage(
            image: "assets/images/urban.png",
          )
        ],
      ),
    );
  }
}
