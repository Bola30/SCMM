import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smcc_app/Features/social/presentation/bloc/home_cubit/cubit/home_page_cubit.dart';

class RewardsCard extends StatelessWidget {
  const RewardsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        if (state is HomePageLoaded) {
          return   Positioned(
          bottom: -70,
          left: 10,
          right: 10,
          child: BlocBuilder<HomePageCubit, HomePageState>(
            builder: (context, state) {
              if (state is HomePageLoaded) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "اربح جوائز معنا",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset('assets/images/gift.png'),
                        ],
                      ),
                      SizedBox(height: 10),

                      Stack(
                        children: [
                          Container(
                            height: 12,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          Container(
                            height: 12,
                            width: 170, 
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.orange.shade400, Colors.yellow],
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "باقي 10 خطوات",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 380,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF599CFF), Color(0xFF0D6EFD)],
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          child: const Center(
                            child: Text(
                              "عرض الجوائز",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Progress bar
                    ],
                  ),
                  
                );
              
              }
              return const SizedBox();
            },
          ),
          
        );
        }
        return const SizedBox();
      },
    );
  }
}
