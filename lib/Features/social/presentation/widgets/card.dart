import 'package:flutter/material.dart';
import 'package:smcc_app/Features/social/presentation/widgets/Add_Button.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String currency;
  final String imageAsset;
  final bool isFavorite;
  final double? width;
  final double? height;
  final VoidCallback onFavoriteToggle;
  final VoidCallback? onAddToCart;
  final String? oldPrice;
  final bool? isDiscount;
  final String? discount;
  final String? percentage;

  const ProductCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.currency,
    required this.imageAsset,
    required this.isFavorite,
    required this.onFavoriteToggle,
    this.onAddToCart,
    this.oldPrice,
    this.isDiscount,
    this.width,
    this.height,
    this.discount,
    this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : Colors.grey,
                        size: 20,
                      ),
                      onPressed: onFavoriteToggle,
                    ),
                  ),
                  if (isDiscount == true && discount != null)
                    Container(
                      width: 60,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          discount!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),

              Image.asset(
                imageAsset,
                height: 76,
                width: 68,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 12),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '$subtitle $currency',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      if (oldPrice != null) ...[
                        const SizedBox(width: 10),
                        Text(
                          oldPrice!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                      SizedBox(width: 4),
                      if (percentage != null) ...[
                        const SizedBox(width: 5),
                        Text(
                          percentage!,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,

                            color: Colors.red,
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),
              CustomFloatingButton(),
            ],
          ),
        ),
      ),
    );
  }
}
