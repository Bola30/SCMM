import 'package:flutter/material.dart';
import 'package:smcc_app/Features/social/domain/entities/social_item.dart';
import 'package:smcc_app/Features/social/presentation/widgets/card.dart';

class SocialSectionVertical extends StatefulWidget {
  const SocialSectionVertical({super.key});

  @override
  State<SocialSectionVertical> createState() => _SocialSectionVerticalState();
}

class _SocialSectionVerticalState extends State<SocialSectionVertical> {
  late List<bool> favorites;

  final items = [
    SocialItem(
      oldPrice: '700',
      asset: 'assets/images/facebook.png',
      title: 'لايكات بكميات كبيرة',
      subtitle: '500',
      currency: 'جنيه',
    ),
    SocialItem(
      oldPrice: '700',

      asset: 'assets/images/insta.png',
      title: 'لايكات بكميات كبيرة',
      subtitle: '500',
      currency: 'جنيه',
    ),
    SocialItem(
      oldPrice: '700',

      asset: 'assets/images/facebook.png',
      title: 'لايكات بكميات كبيرة',
      subtitle: '500',
      currency: 'جنيه',
    ),
    SocialItem(
      oldPrice: '700',

      asset: 'assets/images/insta.png',
      title: 'لايكات بكميات كبيرة',
      subtitle: '500',
      currency: 'جنيه',
    ),
  ];

  @override
  void initState() {
    super.initState();
    favorites = List.generate(items.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      color: const Color(0xFFD3E4FA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: const Text(
              '  العروض المميزة 🔥',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 12,
              ),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ProductCard(
                    height: 174,
                    width: 236.43,
                    percentage: '(18٪-)',
                    oldPrice: " ${item.oldPrice}${item.currency}",
                    isDiscount: true,
                    discount: "30% خصم",
                    title: item.title,
                    subtitle: item.subtitle.toString(),
                    currency: item.currency,
                    imageAsset: item.asset,
                    isFavorite: favorites[index],
                    onFavoriteToggle: () {
                      setState(() => favorites[index] = !favorites[index]);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
