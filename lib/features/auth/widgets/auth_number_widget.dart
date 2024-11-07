import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';

class AuthNumberWidget extends StatelessWidget {
  const AuthNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Enter your mobile number',
          style: GoogleFonts.roboto(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: const Color(0xffEDF6FF),
          ),
        ),
        Row(
          children: [],
        ),
        Row(
          children: [
            Text(
              'Or connect with social',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: AppColors.primary2Colors,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Icon(
                Icons.arrow_forward_sharp,
                color: AppColors.primary2Colors,
                size: 30,
              ),
            ),
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'By continuing you may recieve an SMS for verification. Message and data rates may apply.',
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xffDADADA),
              ),
            ),
          ),
        )
      ],
    );
  }
}
