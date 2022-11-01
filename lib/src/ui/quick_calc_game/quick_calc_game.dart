import 'package:flutter/material.dart';
import 'package:my_mathgame/src/ui/appbar/defaultappbar.dart';

class QuickCalculationGame extends StatefulWidget {
  const QuickCalculationGame({super.key});

  @override
  State<QuickCalculationGame> createState() => _QuickCalculationGameState();
}

class _QuickCalculationGameState extends State<QuickCalculationGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DefaultAppbar(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column())
        ],
      ),
    );
  }
}
