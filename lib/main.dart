import 'package:deltanews/screens/post_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DeltaNews());
}

class DeltaNews extends StatelessWidget {
  const DeltaNews({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const PostScreen(),
    );
  }
}
