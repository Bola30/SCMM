import 'package:flutter/material.dart';
import 'package:smcc_app/Features/social/domain/entities/social_item.dart';
import 'package:smcc_app/Features/social/presentation/widgets/card.dart';

class SocialSectionHorizontal extends StatefulWidget {
  const SocialSectionHorizontal({super.key});

  @override
  State<SocialSectionHorizontal> createState() =>
      _SocialSectionHorizontalState();
}

class _SocialSectionHorizontalState extends State<SocialSectionHorizontal> {
  bool isFavorite = false;
  List<bool> favorites = [];

  @override
  Widget build(BuildContext context) {
    final items = [
      SocialItem(
        asset: 'assets/images/Frame.png',
        title: 'لايكات بكميات كبيرة',
        subtitle: '500',
        currency: 'جنيه',
      ),
      SocialItem(
        asset: 'assets/images/Frame.png',
        title: 'لايكات بكميات كبيرة',
        subtitle: '500',
        currency: 'جنيه',
      ),
      SocialItem(
        asset: 'assets/images/Frame.png',
        title: 'لايكات بكميات كبيرة',
        subtitle: '500',
        currency: 'جنيه',
      ),
    ];
    if (favorites.length != items.length) {
      favorites = List.generate(items.length, (_) => false);
    }

    return SizedBox(
      height: 249,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final item = items[index];
          return ProductCard(
            width: 180,
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
    );
  }
}
