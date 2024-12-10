import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SeniorCaseScreen extends StatelessWidget {
  const SeniorCaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD), // Light Blue Background
      appBar: AppBar(
        title: const Text(
          "Computer Case",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1976D2), // Medium Blue AppBar
        leading: IconButton(
          onPressed: () {
            context.go('/senior_screen');
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/case.png',
                  width: 200,
                  height: 150,
                ),
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "What is a Computer Case?",
                description:
                    "The computer case, also known as the chassis, is the enclosure that houses all essential components like the motherboard, CPU, GPU, and storage devices. It provides structure, protection, and airflow for cooling.",
                onPlay: () {
                  // Play audio functionality
                },
                onStop: () {
                  // Stop audio functionality
                },
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Key Features of a Case",
                description:
                    "• Form Factor: Supports ATX, Micro-ATX, and Mini-ITX motherboards.\n"
                    "• Cooling Options: Includes fan mounts, liquid cooling compatibility, and optimized airflow designs.\n"
                    "• Aesthetics: Features tempered glass panels, RGB lighting, and customizable designs for gamers.\n"
                    "• Cable Management: Provides compartments to neatly route and hide cables.",
                onPlay: () {
                  // Play audio functionality
                },
                onStop: () {
                  // Stop audio functionality
                },
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Popular Case Brands",
                description:
                    "• NZXT: Known for minimalistic designs and high airflow.\n"
                    "• Cooler Master: Offers versatile cases with advanced cooling support.\n"
                    "• Corsair: Popular for premium cases with RGB lighting.\n"
                    "• Fractal Design: Focuses on quiet and airflow-optimized cases.",
                onPlay: () {
                  // Play audio functionality
                },
                onStop: () {
                  // Stop audio functionality
                },
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Fun Fact!",
                description:
                    "High-end PC cases often come with smart features like integrated fan controllers, temperature sensors, and tool-less drive bays for easy upgrades!",
                onPlay: () {
                  // Play audio functionality
                },
                onStop: () {
                  // Stop audio functionality
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String description,
    required VoidCallback onPlay,
    required VoidCallback onStop,
  }) {
    return Card(
      color: const Color(0xFFF9FBE7), // Light Beige Card Background
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.grey, width: 3.5), // Soft Gray Border
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Dark Gray Text
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Text('Play', style: TextStyle(fontSize: 20),),
                    IconButton(
                      onPressed: onPlay,
                      icon: const Icon(Icons.play_arrow_sharp, size: 35),
                      color: Colors.green, // Light Green Play Button
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Stop', style: TextStyle(fontSize: 20),),
                    IconButton(
                      onPressed: onStop,
                      icon: const Icon(Icons.stop_circle_outlined, size: 35),
                      color: Colors.red, // Light Red Stop Button
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 2,
              decoration: const BoxDecoration(
                color: Color(0xFF616161), // Neutral Dark Gray Divider
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                fontSize: 18,
                height: 1.5,
                color: Colors.black, // Dark Gray Text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
