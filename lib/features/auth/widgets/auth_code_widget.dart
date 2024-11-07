import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/features/auth/widgets/custom_pinput.dart';

class AuthCodeWidget extends StatelessWidget {
  const AuthCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Enter the 4-digit code sent to you at',
          style: GoogleFonts.roboto(
            fontSize: 24,
            fontWeight: FontWeight.w300,
            color: const Color(0xffEDF6FF),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            '+91 95864 32107.',
            style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: const Color(0xffEDF6FF),
            ),
          ),
        ),
        OTPInput(),
        Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Text(
            'Resend Code',
            style: GoogleFonts.roboto(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.primary2Colors,
            ),
          ),
        ),
      ],
    );
  }
}
