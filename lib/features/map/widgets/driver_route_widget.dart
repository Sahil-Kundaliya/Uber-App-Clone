import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/constant/app_images.dart';
import 'package:uber_app_ui_challenge/features/map/pages/confirm_payment_page.dart';

class DriverRouteWidget extends StatelessWidget {
  const DriverRouteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Stack(
          children: [
            Container(
                width: double.infinity,
                child: Image.asset(fit: BoxFit.cover, AppImages.driveTime)),
            if (false) Icon(Icons.arrow_back)
          ],
        )),
        Container(
          decoration: const BoxDecoration(color: AppColors.customBlackColors),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 16),
                  child: Text(
                    'YOUR DRIVER IS EN ROUTE...',
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffEDF6FF)),
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage(AppImages.driverProfile),
                  ),
                  title: Row(
                    children: [
                      Text(
                        'Jhon Walker',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffEDF6FF)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text(
                              '4.5',
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary1Colors),
                            ),
                            const Icon(Icons.star,
                                size: 20, color: AppColors.primary1Colors)
                          ],
                        ),
                      )
                    ],
                  ),
                  subtitle: Text(
                    'Swift Desire',
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, ConfirmPaymentScreen.confirmPaymentScreen);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffEDF6FF))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Text(
                          'REG NO',
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffEDF6FF)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
