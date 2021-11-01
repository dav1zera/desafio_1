import 'package:desafio_1/commons/widgets/custom_button.dart';
import 'package:desafio_1/main.dart';
import 'package:desafio_1/welcome/welcome_controller.dart';
import 'package:desafio_1/welcome/widgets/container_box_welcome.dart';
import 'package:desafio_1/welcome/widgets/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  WelcomeController controller = WelcomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF539FCB),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
          ),
          ProfileImage(
            image: "https://avatars.githubusercontent.com/u/60738825?v=4",
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
          SizedBox(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              "Suas informações:",
              style: GoogleFonts.neuton(
                fontSize: 20,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
            ),
          ),
          ContainerBoxWelcome(),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            text: "Deslogar",
            onPressed: () {
              controller.onTapLogout(context);
            },
          ),
        ],
      ),
    );
  }
}
