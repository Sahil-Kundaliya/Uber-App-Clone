import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';

class AuthPolicyWidget extends StatelessWidget {
  const AuthPolicyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 69,
                backgroundColor: Color(0xffC4C4C4),
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 99,
                    color: AppColors.backgroundColors,
                  ),
                ),
              ),
              Text(
                'By tapping the arrow below, you agree to Uber’s Terms of Use and acknowledge that you have read the Privacy Policy',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xffEDF6FF),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: RichText(
            text: TextSpan(
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xffEDF6FF),
                ),
                children: <TextSpan>[
                  TextSpan(
                      text:
                          'Check the box to indicate that you are at least 18 years of age, agree to the '),
                  TextSpan(
                    text: 'Terms & Conditions',
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary2Colors,
                    ),
                  ),
                  TextSpan(text: ' and acknowledge the '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary2Colors,
                    ),
                  ),
                  TextSpan(text: '.'),
                ]),
          ),
        ),
      ],
    );
  }
}
