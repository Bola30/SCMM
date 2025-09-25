import 'package:smcc_app/Features/social/data/sources/social_local_data.dart';

import '../../domain/entities/social_item.dart';
import '../../domain/repositories/social_repository.dart';

class SocialRepositoryImpl implements SocialRepository {
  final SocialLocalData localData;

  SocialRepositoryImpl({required this.localData});

  @override
  Future<List<SocialItem>> fetchSocialItems() async {
    final items = await localData.loadMockItems();
    return items.cast<SocialItem>();
  }
}
