import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CampText extends StatelessWidget {
  final String text;
  final String image;
  final bool obscureText;

  const CampText({
    Key? key,
    required this.text,
    required this.image,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: ImageIcon(
            AssetImage(image),
            color: Color(0xFF858585),
          ),
        ),
        Expanded(
          child: TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
              isDense: true,
              hintText: text,
              hintStyle: GoogleFonts.ovo(
                fontSize: 15,
              ),
            ),
            keyboardType: TextInputType.name,
          ),
        ),
      ],
    );
  }
}
