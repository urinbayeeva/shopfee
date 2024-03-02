import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/shopmodel.dart';
import '../service/db_service.dart';

final usersProvider = StateNotifierProvider((ref) => UsersNotifier());

class UsersNotifier extends StateNotifier<List<ShopModel>> {
  UsersNotifier() : super([]);

  Future<void> fetchData() async {
    state = [];
    List<ShopModel> users = await DioService.getData();
    state = users;
  }
}
