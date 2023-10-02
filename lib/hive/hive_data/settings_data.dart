import 'package:f_app/hive/hive_mapper/settings_mapper.dart';
import 'package:f_app/hive/hive_model/settings_hive_model.dart';
import 'package:f_app/model/settings_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SettingsData {
  const SettingsData();

  Future<int> save(Settings setting) async {
    final Box<SettingsHive> box = await Hive.openBox<SettingsHive>('settings');
    await box.clear();
    return box.add(setting.toSettingsHive());
  }

  Future<Settings> getSetting() async {
    final Box<SettingsHive> box = await Hive.openBox<SettingsHive>('settings');
    if (box.values.isNotEmpty) {
      return box.values.last.toSettings();
    }
    return const Settings(isDark: true);
  }
}
