import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/constant/app_images.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  static const String thankYouScreen = '/ThankYouScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: AppColors.backgroundColors,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100, bottom: 20),
                  child: Container(
                    height: 283,
                    width: size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.thankYouLogo))),
                  ),
                ),
                Text(
                  'Your payment has been made',
                  style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffEDF6FF)),
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.roboto(
                        fontSize: 21.6,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffEDF6FF),
                      ),
                      children: [
                        const TextSpan(text: 'Thank you for using '),
                        TextSpan(
                          text: 'Uber',
                          style: GoogleFonts.roboto(
                            fontSize: 21.6,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary2Colors,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 50,
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, ThankYouScreen.thankYouScreen);
                      },
                      child: Container(
                        width: size.width * 0.8,
                        decoration: BoxDecoration(color: Color(0xff2B2B2B)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            'Done',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontSize: 21.6,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffEDF6FF)),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
