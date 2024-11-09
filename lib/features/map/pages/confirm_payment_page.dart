import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/constant/app_images.dart';
import 'package:uber_app_ui_challenge/features/map/pages/thank_you_page.dart';
import 'package:uber_app_ui_challenge/features/map/widgets/driver_route_widget.dart';

class ConfirmPaymentScreen extends StatelessWidget {
  const ConfirmPaymentScreen({super.key});

  static const String confirmPaymentScreen = '/ConfirmPaymentScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColors,
        body: Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                          color: Colors.red,
                          width: double.infinity,
                          child: Image.asset(
                              fit: BoxFit.cover, AppImages.driveTime)),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration:
                      const BoxDecoration(color: AppColors.customBlackColors),
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
                            backgroundImage:
                                AssetImage(AppImages.driverProfile),
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
                                        size: 20,
                                        color: AppColors.primary1Colors)
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
                          trailing: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffEDF6FF))),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'COST',
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xffEDF6FF)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      '\$7.5',
                                      style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'TRAVEL TIME',
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xffEDF6FF)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      '15 MINS',
                                      style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, ThankYouScreen.thankYouScreen);
                              },
                              child: Container(
                                width: size.width * 0.8,
                                decoration:
                                    BoxDecoration(color: Color(0xff2B2B2B)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    'Confirm Payment',
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
                )
              ],
            )),
      ),
    );
  }
}
