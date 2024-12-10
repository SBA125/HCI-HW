import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChildScreen extends StatelessWidget {
  const ChildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(onPressed: () {
          context.go('/age_group_screen');
        }, icon: const Icon(Icons.arrow_back)),
      ),
      backgroundColor: const Color(0xFFE3F2FD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Help Build Robo!",
              style: TextStyle(fontSize: 35, 
              fontWeight: FontWeight.bold, 
              color: Color(0xFFFF8A65)
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Image.asset(
              "assets/images/robot.png",
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                 backgroundColor: const Color(0xFF66BB6A), // Vivid Green
                 foregroundColor: Colors.white, // Bright White
                 padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              onPressed: () {
                context.go('/child_story_screen');
              },
              child: const Text(
                "Let's Go!!",
                style: TextStyle(fontSize: 35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
