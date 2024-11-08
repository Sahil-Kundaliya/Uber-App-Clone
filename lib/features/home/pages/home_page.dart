import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/constant/app_images.dart';
import 'package:uber_app_ui_challenge/features/home/pages/select_package_page.dart';
import 'package:uber_app_ui_challenge/features/home/widgets/common_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String homeScreen = '/HomeScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColors,
      drawer: const CommonDrawer(),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: size.height * 0.45,
                  width: size.width,
                  decoration: BoxDecoration(color: AppColors.primary2Colors),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Builder(
                          builder: (context) => GestureDetector(
                            onTap: () => Scaffold.of(context).openDrawer(),
                            child: Icon(
                              Icons.menu_outlined,
                              size: 30,
                              color: Color(0xffEDF6FF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 15),
                          child: Text(
                            'To find your pickup location\nautomatically, turn on location services',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                                color: Color(0xffEDF6FF)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.customBlackColors,
                              borderRadius: BorderRadius.circular(40)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            child: Text(
                              'Turn on location',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18,
                                  color: Color(0xffEDF6FF)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(AppImages.uberCar))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'Ride',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color(0xffEDF6FF)),
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, SelectPackageScreen.selectPackageScreen);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(AppImages.packageBox))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                'Package',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color(0xffEDF6FF)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Color(0xff2B2B2B),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 23),
                      child: Text(
                        'Enter pickup point',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Color(0xffEDF6FF)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Around you',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Color(0xffEDF6FF)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Container(
                    height: 195,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.mapWithCars))),
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
