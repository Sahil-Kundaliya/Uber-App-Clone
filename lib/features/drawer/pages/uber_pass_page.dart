import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/constant/app_images.dart';
import 'package:uber_app_ui_challenge/features/drawer/widget/uber_pass_widget.dart';

class UberPassScreen extends StatelessWidget {
  const UberPassScreen({super.key});

  static const String uberPassScreen = '/UberPassScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: AppColors.customBlackColors,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 15, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 8, bottom: 25),
                child: Text(
                  'Uber Pass',
                  style: GoogleFonts.roboto(
                      fontSize: 36,
                      fontWeight: FontWeight.w200,
                      color: const Color(0xffEDF6FF)),
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Container(
                  color: AppColors.backgroundColors,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Uber Pass',
                          style: GoogleFonts.roboto(
                              fontSize: 48,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffEDF6FF)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          '1 week free - \$24.99/mo',
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffEDF6FF)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          '\$24.99/mo 1 week free',
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 25, 20, 12),
                        child: Text(
                          'Go more places and get more local favorites, all with one membership',
                          style: GoogleFonts.roboto(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffEDF6FF)),
                        ),
                      ),
                      UberPassWidget(
                        itemImage: AppImages.savingRide,
                        title: 'Savings on every ride',
                        subTitle:
                            'Uber Pass has you covered-10% off every UberX,UberL and Comfort ride, 15% off every black,Premier, and SUV ride in the US.',
                      ),
                      UberPassWidget(
                        itemImage: AppImages.uberEats,
                        title: 'Free delivery on Uber Eats',
                        subTitle:
                            'Get a \$0 Delivery Fee + 5% off orders over \$15. Look for the tickets to save at more than 13000 restaurants in your area.',
                      ),
                      UberPassWidget(
                        itemImage: AppImages.rideCancel,
                        title: 'Cancel anytime',
                        subTitle:
                            'Cancel your subscription anytime-no penalties or fees.',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Learn More',
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xffEDF6FF)),
                            ),
                            const Icon(Icons.arrow_forward_ios,
                                size: 18, color: Color(0xffEDF6FF))
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffEDF6FF))),
                          child: Center(
                            child: Text(
                              'Get 1 week free',
                              style: GoogleFonts.roboto(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xffEDF6FF)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
