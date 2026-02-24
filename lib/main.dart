import 'package:flutter/material.dart';
import 'package:profile_ui/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile UI',
      home: const ProfilePage(),
      builder: (context, child) {
        return _MobileLayoutWrapper(child: child!);
      },
    );
  }
}

class _MobileLayoutWrapper extends StatelessWidget {
  final Widget child;

  const _MobileLayoutWrapper({required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Container(
            color: Colors.grey[200], 
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 450),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.3),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: child,
              ),
            ),
          );
        }
        return child;
      },
    );
  }
}
