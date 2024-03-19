import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService extends GetxService {
  static StorageService get to => Get.find();
  // it returns an instance of this class and we can be able to call the storageService.to if we want to access any function defined in the class

  late final SharedPreferences _prefs; // memory of storing data locally

  Future<StorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }
  Future<bool>setString(String key, String value) async{
    return await _prefs.setString(key, value);
  }

  Future<bool> setBool(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  Future<bool> setList(String key, List<String> value) async {
    return await _prefs.setStringList(key, value);
  }

  String getString(String key) {
    return _prefs.getString(key) ?? '';
  }

  bool getBool(String key) {
    return _prefs.getBool(key) ?? false;
  }

  List<String> getList(String key) {
    return _prefs.getStringList(key) ?? [];
  }

  Future<bool> remove(String key) async {
    return await _prefs.remove(key);
  }
  // the above are methods for storing,retriving and removing data from shared preferences
}
