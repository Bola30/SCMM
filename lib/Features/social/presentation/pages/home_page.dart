import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smcc_app/Features/social/presentation/bloc/home_cubit/cubit/home_page_cubit.dart';
import 'package:smcc_app/Features/social/presentation/widgets/AppBar.dart';
import 'package:smcc_app/Features/social/presentation/widgets/category.dart';
import 'package:smcc_app/Features/social/presentation/widgets/social_section_horizontal.dart';
import 'package:smcc_app/Features/social/presentation/widgets/social_section_vertical.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomePageCubit()..loadProgress(0.65),
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.only(top: 0, bottom: 16),
          children: [
            const CustomAppBar(),
                SizedBox(height: 40),
            BlocBuilder<HomePageCubit, HomePageState>(
              builder: (context, state) {
                if (state is HomePageLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is HomePageLoaded) {
                } else if (state is HomePageError) {
                  return Text(
                    state.message,
                    style: const TextStyle(color: Colors.red),
                  );
                }
                return const SizedBox();
              },
            ),

            const SizedBox(height: 50),
            CategoriesSection(),
            const SizedBox(height: 12),
            const CategoryHeader(title: ' طالبات سايقة' ),
            SocialSectionHorizontal(),
            const SizedBox(height: 12),
            const SocialSectionVertical(),
          ],
        ),
      ),
    );
  }
}
