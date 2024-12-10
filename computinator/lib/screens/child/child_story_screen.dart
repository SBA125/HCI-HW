import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChildStoryScreen extends StatefulWidget {
  const ChildStoryScreen({super.key});

  @override
  State<ChildStoryScreen> createState() => _ChildStoryScreenState();
}

class _ChildStoryScreenState extends State<ChildStoryScreen> {
  int _currentStep = 0;

  final List<Map<String, String>> _storySteps = [
  {
    "image": "assets/images/cpu.png",
    "title": "CPU",
    "description": "The CPU is Robo's brain! It helps Robo think. Drag it to Robo."
  },
  {
    "image": "assets/images/gpu.png",
    "title": "GPU",
    "description": "The GPU is Robo's eyes! It helps Robo see things. Drag it to Robo."
  },
  {
    "image": "assets/images/ram.png",
    "title": "RAM",
    "description": "The RAM is Robo's short-term memory! It helps Robo quickly remember stuff. Drag it to Robo."
  },
  {
    "image": "assets/images/psu.png",
    "title": "Power Supply",
    "description": "The Power Supply is Robo's heart! It gives Robo love. Drag it to Robo."
  },
  {
    "image": "assets/images/case.png",
    "title": "Case",
    "description": "The Case is Robo's body! It keeps Robo safe. Drag it to Robo."
  },
  {
    "image": "assets/images/motherboard.png",
    "title": "Motherboard",
    "description": "The Motherboard is Robo's nervous system! It connects all the parts so they can work together. Drag it to Robo."
  },
  {
    "image": "assets/images/hdd.png",
    "title": "HDD",
    "description": "The HDD is Robo's bookshelf! It stores Robo's memories. Drag it to Robo."
  },
  {
    "image": "assets/images/ssd.png",
    "title": "SSD",
    "description": "The SSD is Robo's super-fast notebook! It also stores Robo's memories but faster than an HDD. Drag it to Robo."
  },
];


   @override
  Widget build(BuildContext context) {
    final currentStepData = _storySteps[_currentStep];

    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD), // Light Blue Background
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            context.go('/child_screen');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              currentStepData["description"]!,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.orange , 
               
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            DragTarget<String>(
              onAcceptWithDetails: (DragTargetDetails<String> data) {
                if (data.data == currentStepData["title"]) {
                  setState(() {
                    if (_currentStep < _storySteps.length - 1) {
                      _currentStep++;
                    } else {
                      // Show completion message
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFFFFC107), width: 2.0),
          borderRadius: BorderRadius.circular(16),
        ), 
                          backgroundColor: const Color(0xFFFFF9C4), // Bright Yellow Dialog
                          title: const Text(
                            "Great Job!",
                            style: TextStyle(
                              color: Color(0xFFFFC107), // Bright Blue Title
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          content: const Text(
                            "You helped Robo get all his parts back!",
                            style: TextStyle(color: Color(0xFFFFC107)), // Bright Blue Text
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                context.go('/age_group_screen');
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xFF66BB6A), // Green Button
                              ),
                              child: const Text(
                                "Yay!",
                                style: TextStyle(color: Colors.white), // White Button Text
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  });
                }
              },
              onWillAcceptWithDetails: (data) {
                return data.data == currentStepData["title"];
              },
              builder: (context, acceptedData, rejectedData) {
                return Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white, // White Drop Area
                    border: Border.all(color: const Color(0xFF66BB6A), width: 4.0), // Light Gray Border
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26, // Subtle Shadow
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/robot.png',
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Draggable<String>(
              data: currentStepData["title"]!,
              feedback: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellowAccent, width: 4.0), // Green Glow
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  currentStepData["image"]!,
                  height: 150,
                ),
              ),
              childWhenDragging: Image.asset(
                currentStepData["image"]!,
                height: 150,
                color: Colors.transparent,
              ),
              child: Image.asset(
                currentStepData["image"]!,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
