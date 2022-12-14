import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_dog_app/app.dart';
import 'package:my_dog_app/services/hive_service.dart';
import 'package:url_strategy/url_strategy.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(HiveService.dbName);
  setPathUrlStrategy();
  runApp(MyDogApp());
}