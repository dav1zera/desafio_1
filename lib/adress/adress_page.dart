import 'package:desafio_1/adress/remote/adress_repository.dart';
import 'package:desafio_1/adress/widgets/box_form_adress.dart';
import 'package:desafio_1/commons/custom_button.dart';
import 'package:desafio_1/commons/screen_image.dart';
import 'package:desafio_1/login/widgets/urban_image.dart';
import 'package:desafio_1/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextEditingController ruaTextController = TextEditingController();
TextEditingController cepTextController = TextEditingController();
TextEditingController bairroTextController = TextEditingController();
TextEditingController cidadeTextController = TextEditingController();
TextEditingController numTextController = TextEditingController();
TextEditingController compleTextController = TextEditingController();

class AdressPage extends StatefulWidget {
  final double? height;
  final formKey = GlobalKey<FormState>();

  final Utils utils = Utils();

  AdressPage({
    Key? key,
    this.height,
  }) : super(key: key);

  @override
  _AdressPageState createState() => _AdressPageState();
}

class _AdressPageState extends State<AdressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF539FCB),
      body: FutureBuilder<dynamic>(
          future: AdressRepository().getAdress(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                  child: CircularProgressIndicator(color: Colors.red));
            }
            if (snapshot.hasData) {
              //Map <String, dynamic> data = snapshot.data;
              cepTextController.text = snapshot.data["cep"];
              ruaTextController.text = snapshot.data["logradouro"];
              bairroTextController.text = snapshot.data["bairro"];
              cidadeTextController.text = snapshot.data["localidade"];
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
                  formKey: widget.formKey,
                ),
                SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                    text: "Finalizar",
                    onPressed: () {
                      setState(() {
                        AdressRepository().getAdress();
                      });
                    }),
                UrbanImage(image: "assets/images/urban.png")
              ],
            );
          }),
    );
  }
}
