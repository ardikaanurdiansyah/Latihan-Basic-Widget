import 'package:flutter/material.dart';

class ExplicitAnimationPage extends StatefulWidget {
  const ExplicitAnimationPage({super.key});

  @override
  State<ExplicitAnimationPage> createState() =>
      _ExplicitAnimationPageState();
}

class _ExplicitAnimationPageState
    extends State<ExplicitAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnim;
  late Animation<Color?> _colorAnim;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Explicit Animation')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (_, child) {
              return Container();
            },
          ), // AnimatedBuilder
          const SizedBox(height: 20),
          Wrap(spacing: 10, children: [
            
          ]), // Wrap
        ],
      ), // Column
    ); // Scaffold
  }
}
