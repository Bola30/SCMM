import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  final List<String> categoryImages = [
    "assets/images/facebook.png",
    "assets/images/tiktok.png",
    "assets/images/x.png",
    "assets/images/insta.png",
    "assets/images/youtube.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categoryImages.length,
          separatorBuilder: (context, index) => const SizedBox(width: 22),
          itemBuilder: (context, index) {
            return Container(
              height: 51.79 ,
              width: 57.6,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(categoryImages[index]),
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class CategoryHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onMore;

  const CategoryHeader({super.key, required this.title, this.onMore});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                const Text(' شاهد الكل', style: TextStyle(color: Colors.black)),
                Icon(Icons.arrow_forward_ios, size: 12, color: Colors.black),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
