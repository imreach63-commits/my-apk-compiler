import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/theme.dart';
import 'services/app_state.dart';
import 'screens/mode_select_screen.dart';

// NOTE: Firebase initialization is intentionally guarded with a try/catch so
// that this project still boots (and is inspectable/buildable) even before
// you drop in your own `google-services.json` / `GoogleService-Info.plist`.
// Once you add your Firebase config files, uncomment the firebase_core
// imports/calls below.
//
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // try {
  //   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // } catch (e) {
  //   debugPrint('Firebase init skipped/failed: $e');
  // }

  runApp(
    ChangeNotifierProvider(
      create: (_) => AppState(),
      child: const HyperlocalApp(),
    ),
  );
}

class HyperlocalApp extends StatelessWidget {
  const HyperlocalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hyperlocal Video Offers',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const ModeSelectScreen(),
    );
  }
}
