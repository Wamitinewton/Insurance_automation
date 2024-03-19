import 'dart:convert';

import 'package:get/get.dart';
import 'package:mobile_insurance/models/user_data.dart';
import 'package:mobile_insurance/screens/auth/login/view.dart';
import 'package:mobile_insurance/utils/services/storage.dart';
import 'package:mobile_insurance/utils/value/storage.dart';

class UserStore extends GetxController {
  // create an instance for accessing methods of UerStore in other places in the application
  static UserStore get to => Get.find();

  // checking if the user is logged in or not

  final _isLogin = false.obs;

  String token = '';
  final _profile = UserData().obs;
  bool get isLogin => _isLogin.value;
  UserData get profile => _profile.value;
  bool get hasToken => token.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    token = StorageService.to.getString(STORAGE_USER_TOKEN_KEY);
    var profileOffline = StorageService.to.getString(STORAGE_USER_PROFILE_KEY);
    if (profileOffline.isNotEmpty) {
      _isLogin.value = true;
      _profile(UserData.fromJson(jsonDecode(profileOffline)));
    }
  }

  // saving token
  Future<void> setToken(String value) async {
    await StorageService.to.setString(STORAGE_USER_TOKEN_KEY, value);
    token = value;
  }

  Future<String> getProfile() async {
    if (token.isEmpty) return "";

    return StorageService.to.getString(STORAGE_USER_PROFILE_KEY);
  }

  // saving profile
  Future<void> saveProfile(UserData profile) async {
    _isLogin.value = true;
    StorageService.to.setString(STORAGE_USER_PROFILE_KEY, jsonEncode(profile));
    setToken(profile.accessToken!);
  }

  // duration logout
  Future<void> onLogout() async {
    await StorageService.to.remove(STORAGE_USER_TOKEN_KEY);
    await StorageService.to.remove(STORAGE_USER_PROFILE_KEY);
    _isLogin.value = false;
    token = '';
    print('......deleted the data from local storage');
    Get.offAll(UserLoginScreen());
  }
}
