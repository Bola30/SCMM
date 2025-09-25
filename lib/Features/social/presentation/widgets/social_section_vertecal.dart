import 'package:flutter/material.dart';
import 'package:smcc_app/Features/social/domain/entities/social_item.dart';

class SocialSectionVertecal extends StatefulWidget {
  const SocialSectionVertecal({super.key});

  @override
  State<SocialSectionVertecal> createState() => _SocialSectionVertecalState();
}

class _SocialSectionVertecalState extends State<SocialSectionVertecal> {
  bool isFavorite = false;
  List<bool> favorites = [];

  @override
  Widget build(BuildContext context) {
    final items = [
      SocialItem(
        asset: 'assets/images/facebook.png',
        title: 'لايكات بكميات كبيرة',
        subtitle: '500',
        currency: 'جنيه',
      ),
      SocialItem(
        asset: 'assets/images/insta.png',
        title: 'لايكات بكميات كبيرة',
        subtitle: '500',
        currency: 'جنيه',
      ),
      SocialItem(
        asset: 'assets/images/facebook.png',
        title: 'لايكات بكميات كبيرة',
        subtitle: '500',
        currency: 'جنيه',
      ),
      SocialItem(
        asset: 'assets/images/insta.png',
        title: 'لايكات بكميات كبيرة',
        subtitle: '500',
        currency: 'جنيه',
      ),
    ];
    if (favorites.length != items.length) {
      favorites = List.generate(items.length, (_) => false);
    }

    return Container(
      width: double.infinity,
      height: 500,
      color: const Color(0xFFD3E4FA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            child: const Text(
              '  العروض المميزة 🔥',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 23,
                              width: 23,
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
                                      favorites[index]
                                          ? Colors.red
                                          : Colors.grey,
                                  size: 20,
                                ),
                                onPressed: () {
                                  setState(() {
                                    favorites[index] = !favorites[index];
                                  });
                                },
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 18,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                '30% خصم',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Image.asset(
                          item.asset,
                          height: 76.61,
                          width: 68.88,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 12),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  '${item.subtitle} ${item.currency}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '700 ${item.currency}',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 188, 185, 185),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '(18٪-)',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        const Spacer(),

                        Align(
                          alignment: Alignment.centerRight,
                          child: FloatingActionButton(
                            mini: true,
                            backgroundColor: const Color(0xFF1C77FD),
                            onPressed: () {},
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(Icons.add, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
