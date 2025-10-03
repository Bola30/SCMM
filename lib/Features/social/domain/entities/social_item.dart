class SocialItem {
  final String title;
  final String subtitle;
  final String asset;
  final String currency;
  final String? oldPrice;

  const SocialItem({
    required this.title,
    required this.subtitle,
    required this.asset,
    this.currency = "جنيه",
    this.oldPrice,
  });
}
