import 'package:flutter/material.dart';
import 'package:renasya_fb/ui_screenss/crud/widgets_crud/firestore.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop With Ize',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const ScreenFirestore(),
    );
    // home: const UserList());
  }
}
