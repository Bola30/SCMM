import 'package:flutter/material.dart';
import 'package:smcc_app/Features/social/domain/entities/social_item.dart';
import 'package:smcc_app/Features/social/presentation/widgets/Add_Button.dart';

class SocialSectionVertical extends StatefulWidget {
  const SocialSectionVertical({super.key});

  @override
  State<SocialSectionVertical> createState() => _SocialSectionVerticalState();
}

class _SocialSectionVerticalState extends State<SocialSectionVertical> {
  late List<bool> favorites;

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
            padding: const EdgeInsets.symmetric( vertical: 12),
            child: const Text(
              '  العروض المميزة 🔥',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
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
                    elevation: 3,
                    shadowColor: Colors.black26,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 8.0,
                      ),
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
                                    color: favorites[index]
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
                                child: const Center(
                                  child: Text(
                                    '30% خصم',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          /// الصورة
                          Image.asset(
                            item.asset,
                            height: 76,
                            width: 68,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 12),

                          /// النصوص
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
                                  const SizedBox(width: 10),
                                  const Text(
                                    '700 جنيه',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 188, 185, 185),
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
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

                          /// زر الإضافة
                          const CustomFloatingButton(),
                        ],
                      ),
                    ),
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
