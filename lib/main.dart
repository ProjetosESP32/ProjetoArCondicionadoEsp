import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:splash_ifmt/app_module.dart';
import 'package:splash_ifmt/app_widget.dart';

import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:splash_ifmt/data/models/user/user_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();

  runApp(
      /* DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) =>  */
      ModularApp(module: AppModule(), child: AppWidget()) //)
      );
}

Future<void> initHive() async {
  final pathDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(pathDir.path);

  Hive.registerAdapter<UserModel>(UserModelAdapter());
}
