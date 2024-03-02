import 'package:dio/dio.dart';
import 'package:shopfee/model/shopmodel.dart';

class DioService {
  static final Dio _dio = Dio();
  static const String _baseUrl =
      'https://65a3de1aa54d8e805ed41c6d.mockapi.io/e-commerce';
  static const String _getApi = '/exam';

  static Future<List<ShopModel>> getData() async {
    try {
      Response result = await _dio.get('$_baseUrl$_getApi');
      if (result.statusCode == 200) {
        List<ShopModel> users =
            (result.data as List).map((e) => ShopModel.fromJson(e)).toList();
        return users;
      } else {
        print('Failed to get data: ${result.statusCode}');
        return [];
      }
    } catch (e) {
      // Handle Dio errors
      print('Failed to get data: $e');
      return [];
    }
  }

  static Future<void> postData({required ShopModel userModel}) async {
    try {
      await _dio.post('$_baseUrl$_getApi', data: userModel.toJson());
    } catch (e) {
      print('Failed to post data: $e');
    }
  }

  static Future<void> updateData(
      {required ShopModel userModel, required String id}) async {
    try {
      await _dio.put('$_baseUrl$_getApi/$id', data: userModel.toJson());
    } catch (e) {
      print('Failed to update data: $e');
    }
  }

  static Future<void> deleteData({required String id}) async {
    try {
      await _dio.delete('$_baseUrl$_getApi/$id');
    } catch (e) {
      print('Failed to delete data: $e');
    }
  }
}
