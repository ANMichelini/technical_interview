import 'package:flutter/material.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({required this.action, required this.iconPath, super.key});

  final String action;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return SizedBox(
      width: size.width * 0.42,
      height: 80,
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 3,
        color: const Color(0xFF2A2D32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset('iconPath'),
              Text(
                action,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
