class SocialItem {
  final String title;         // اسم السوشيال (فيسبوك / انستجرام)
  final String subtitle;   // وصف المنتج (لايكات بكميات كبيرة)
  final String asset;         // الصورة أو الأيقونة
  final String currency;      // العملة (جنيه، دولار ...)

  const SocialItem({
    required this.title,
    required this.subtitle,
    required this.asset,
    this.currency = "جنيه", // قيمة افتراضية
  });
}
