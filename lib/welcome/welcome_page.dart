import 'package:desafio_1/commons/widgets/custom_button.dart';
import 'package:desafio_1/main.dart';
import 'package:desafio_1/utils/utils.dart';
import 'package:desafio_1/welcome/welcome_controller.dart';
import 'package:desafio_1/welcome/widgets/box_form_welcome.dart';
import 'package:desafio_1/welcome/widgets/profile_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);
  final Utils utils = Utils();

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  WelcomeController controller = WelcomeController();
  @override
  void initState() {
    controller.getInfoUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Color(0xFF539FCB),
      body: ValueListenableBuilder(
          valueListenable: controller.isLoading,
          builder: (context, bool isloading, child) {
            if (isloading == true) {
              return Center(
                  child: CircularProgressIndicator(color: Colors.white));
            }
            return ListView(
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
                    "Olá ${sessionStore.userInfo!.name}",
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
                BoxFormWelcome(
                  formKey: formKey,
                  controller: controller,
                ),
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
            );
          }),
    );
  }
}
