import 'package:flutter/material.dart';
import 'package:islami_app/core/app_assets.dart';
import 'package:islami_app/core/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.backgroundImage,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  //logo image
                  Image.asset(
                    AppAssets.logoImage,
                  ),
                  //text field
                  TextField(
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                    cursorColor: AppColors.primaryDark,
                    decoration: InputDecoration(
                      hintText: 'Sura Name',
                      hintStyle: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                      prefixIcon: Image.asset(AppAssets.prefixSearch),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: AppColors.primaryDark)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: AppColors.primaryDark)),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * .02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Most Recently ',
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Container(
                    height: screenSize.height * .15,
                    width: screenSize.width * .7,
                    decoration: BoxDecoration(
                      color: AppColors.primaryDark,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text("data"),
                              Text("data"),
                              Text("data"),
                            ],
                          ),
                        ),
                        Image.asset(AppAssets.mostRecently),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.primaryDark,
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.black,
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage(AppAssets.quranTap),
                ),
              ),
              label: 'quran',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage(AppAssets.hadethTap),
                ),
              ),
              label: 'hadeth',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage(AppAssets.sebhaTap),
                ),
              ),
              label: 'sebha',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage(AppAssets.radioTap),
                ),
              ),
              label: 'radio',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage(AppAssets.timeTap),
                ),
              ),
              label: 'time',
            ),
          ]),
    );
  }
}
