import '../models/social_item_model.dart';

class SocialLocalData {
  Future<List<SocialItemModel>> loadMockItems() async {
    await Future.delayed(const Duration(milliseconds: 250)); // محاكاة تأخير
    return [
      SocialItemModel(
        id: '1',
        name: 'فيسبوك',
        iconPath: 'assets/images/Frame.png',
        description: 'لايكات بكميات كبيرة', 
      ),
       SocialItemModel(
        id: '2',
        name: 'انستجرام',
        iconPath: 'assets/images/Frame.png',
        description: 'لايكات بكميات كبيرة', 
      ),
       SocialItemModel(
        id: '3',
        name: 'تيك توك',
        iconPath: 'assets/images/tiktok.png',
        description: 'مشاهدات عالية', 
      ),
    ];
  }
}
