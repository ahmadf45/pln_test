import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pln_test/infrastructures/app_component.dart';
import 'package:pln_test/infrastructures/misc/pages.dart';
import 'package:pln_test/infrastructures/misc/utils.dart';
import 'package:pln_test/theme.dart';
import 'infrastructures/misc/routers.dart' as custom_router;

void main() {
  runZonedGuarded<Future<void>>(
    () async {
      Future.wait([
        _initFabric(),
        AppComponent.init(),
      ]).then((_) {
        runApp(MyApp()); // run app
      });
    },
    ((error, stackTrace) {
      debugPrint('NOTIF ERROR\nDETAIL: $error\nSTACKTRACE: $stackTrace');
    }),
  );
}

Future<void> _initFabric() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
}

class MyApp extends StatelessWidget {
  final custom_router.Router _router;

  MyApp({super.key}) : _router = custom_router.Router();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Utils.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: PLNTheme().light(),
      title: 'PLN Icon plus Test',
      initialRoute: Pages.splash,
      onGenerateRoute: (settings) {
        return _router.getRoute(settings);
      },
    );
  }
}
