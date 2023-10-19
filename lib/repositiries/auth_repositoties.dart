import 'package:dio/dio.dart';
import 'package:flutter_application_25/models/TokenModel.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../core/const/app_const.dart';

class AuthRepository {
  final Dio dio;
  AuthRepository({required this.dio});

  Future<void> getToken({required String phone}) async {
    const storage = FlutterSecureStorage();
    final Response response = await dio.get(
        'https://app1.megacom.kg:9090/kp-auth/auth/generateUserId/test?msisdn=$phone');

    final TokenModel result = TokenModel.fromJson(response.data);

    await storage.write(key: AppConst.token, value: result.object);
  }
}
