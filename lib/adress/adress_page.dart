import 'package:desafio_1/adress/andress_controller.dart';

import 'package:desafio_1/adress/widgets/box_form_adress.dart';
import 'package:desafio_1/commons/widgets/custom_button.dart';
import 'package:desafio_1/commons/widgets/screen_image.dart';
import 'package:desafio_1/login/widgets/urban_image.dart';
import 'package:desafio_1/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdressPage extends StatefulWidget {
  final double? height;

  final Utils utils = Utils();

  AdressPage({
    Key? key,
    this.height,
  }) : super(key: key);

  @override
  _AdressPageState createState() => _AdressPageState();
}

class _AdressPageState extends State<AdressPage> {
  final controller = AdressController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF539FCB),
      body: ValueListenableBuilder(
          valueListenable: controller.isLoading,
          builder: (context, bool isloading, child) {
            if (isloading == true) {
              return Center(
                  child: CircularProgressIndicator(color: Colors.red));
            }

            return ListView(
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ScreenImage(
                  image: "assets/images/screen.png",
                ),
                SizedBox(
                  height: 26,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Endereço",
                    style: GoogleFonts.neuton(
                        fontSize: 30,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                BoxFormAdress(
                  formKey: formKey,
                  controller: controller,
                ),
                SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                  text: "Finalizar",
                  onPressed: () {},
                ),
                UrbanImage(image: "assets/images/urban.png"),
              ],
            );
          }),
    );
  }
}
