import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smcc_app/Features/social/presentation/bloc/home_cubit/cubit/home_page_cubit.dart';
import 'package:smcc_app/Features/social/presentation/widgets/AppBar.dart';
import 'package:smcc_app/Features/social/presentation/widgets/category.dart';
import 'package:smcc_app/Features/social/presentation/widgets/social_section_horizontal.dart';
import 'package:smcc_app/Features/social/presentation/widgets/social_section_vertecal.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomePageCubit()..loadProgress(0.65),
      child: Scaffold(
        appBar: CustomAppBar() ,
        body: ListView(
          children: [
            // Progress Container
            BlocBuilder<HomePageCubit, HomePageState>(
              builder: (context, state) {
                if (state is HomePageLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is HomePageLoaded) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  );
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
        
            const CategoryHeader(title: 'طالبات سايقة'),
            SocialSectionHorizontal(),
            const SizedBox(height: 12),
        
            SocialSectionVertecal(),
          ],
        ),
      ),
    );
  }
}