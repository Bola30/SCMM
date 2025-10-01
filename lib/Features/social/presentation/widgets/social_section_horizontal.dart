import 'package:flutter/material.dart';
import 'package:smcc_app/Features/social/domain/entities/social_item.dart';
import 'package:smcc_app/Features/social/presentation/widgets/Add_Button.dart';

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
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final item = items[index];
          return SizedBox(
            width: 180,
            height: 240,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,

                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              favorites[index]
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color:
                                  favorites[index] ? Colors.red : Colors.grey,
                              size: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                favorites[index] = !favorites[index];
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      item.asset,
                      height: 42,
                      width: 42,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 12),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${item.subtitle} ${item.currency}',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    CustomFloatingButton(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
