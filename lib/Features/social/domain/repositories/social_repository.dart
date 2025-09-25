import '../entities/social_item.dart';

abstract class SocialRepository {
  Future<List<SocialItem>> fetchSocialItems();
}
