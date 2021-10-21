import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CampText extends StatelessWidget {
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final GestureTapCallback? onTap;

  final String text;
  final String? image;
  final bool obscureText;
  final double? width;
  final double? height;

  CampText({
    Key? key,
    required this.text,
    this.onTap,
    this.inputFormatters,
    this.onChanged,
    this.height,
    this.width,
    this.image,
    this.validator,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Row(
        children: [
          if (image != null)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ImageIcon(
                AssetImage(image!),
                color: Color(0xFF858585),
              ),
            ),
          Expanded(
            child: TextFormField(
              style: GoogleFonts.ovo(fontSize: 15),
              onTap: onTap,
              inputFormatters: inputFormatters,
              onChanged: onChanged,
              controller: controller,
              validator: validator,
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
      ),
    );
  }
}
