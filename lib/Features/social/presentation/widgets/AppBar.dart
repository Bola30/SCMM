// CustomAppBar.dart
import 'package:flutter/material.dart';
import 'package:smcc_app/Features/social/presentation/widgets/rewards_card.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(250);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,

      children: [

        Container(
          height: preferredSize.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [  SizedBox(
                              height: 60,
                              width: 60,
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                backgroundImage: AssetImage(
                                  'assets/images/man.png',
                                ),
                                radius: 22,
                              ),
                              
                            ),
                            Positioned(
                              top: 35,
                              right: 5,
                              left: 5,
                              bottom: -8,
                              child: Image.asset(
                                'assets/images/crown.png',
                                width: 20,
                                height: 20,
                              ),
                            )
                            ],
                           
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "مرحباً بك، مايكل 👋",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textDirection: TextDirection.rtl,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "مميز",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                    textDirection: TextDirection.rtl,
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),

                              Image.asset(
                                'assets/images/logo.png',
                                width: 120,
                                height: 120,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

      RewardsCard()
      ],

    );

  }
}