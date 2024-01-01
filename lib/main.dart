import 'package:declutter/app.dart';
import 'package:declutter/core/locator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  

  if (!kIsWeb) {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);
  }
  SystemChannels.textInput.invokeMethod('TextInput.hide');

  await setUpLocator();

  

 

  runApp(const MyApp());
}
