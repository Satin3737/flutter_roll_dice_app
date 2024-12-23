import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer.red(),
      ),
    );
  }
}
