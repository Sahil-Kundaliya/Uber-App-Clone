import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';

class AuthNameWidget extends StatelessWidget {
  const AuthNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What’s your name?',
          style: GoogleFonts.roboto(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: const Color(0xffEDF6FF),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 18),
          child: Row(
            children: [
              Flexible(
                  flex: 1,
                  child: TextFormField(
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xffEDF6FF),
                    ),
                    decoration: InputDecoration(
                        hintText: 'First',
                        hintStyle: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xffEDF6FF),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primary2Colors))),
                  )),
              const SizedBox(
                width: 12,
              ),
              Flexible(
                  flex: 1,
                  child: TextFormField(
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xffEDF6FF),
                    ),
                    decoration: InputDecoration(
                        hintText: 'Last',
                        hintStyle: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xffEDF6FF),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primary2Colors))),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
