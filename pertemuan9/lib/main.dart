import 'package:flutter/material.dart';
import 'pages/implicit_animation_page.dart';
import 'pages/explicit_animation_page.dart';
import 'pages/interactive_animation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animations Demo',

      // ROUTES
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/implicit': (context) => const ImplicitAnimationPage(),
        '/explicit': (context) => const ExplicitAnimationPage(),
        '/interactive': (context) => const InteractiveAnimationPage(),
      },
    ); // MaterialApp
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animations & Transitions Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/implicit');
              },
              child: const Text('Implicit Animation (AnimatedContainer)'),
            ), // ElevatedButton

            const SizedBox(height: 8),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/explicit');
              },
              child: const Text('Explicit Animation (AnimationController)'),
            ), // ElevatedButton

            const SizedBox(height: 8),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Page Transition (Slide)'),
            ), // ElevatedButton

            const SizedBox(height: 8),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/interactive');
              },
              child: const Text('Interactive Animation (Input Based)'),
            ), // ElevatedButton
          ],
        ), // Column
      ), // Padding
    ); // Scaffold
  }
}

