import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SeniorRAMScreen extends StatelessWidget {
  const SeniorRAMScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD), // Light Blue Background
      appBar: AppBar(
        title: const Text(
          "Random Access Memory",
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
                  'assets/images/ram.png',
                  width: 200,
                  height: 150,
                ),
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "What is RAM?",
                description:
                    "RAM, or Random Access Memory, is a high-speed memory that stores data for active tasks. "
                    "It allows quick access to data, enabling smooth multitasking and efficient performance.",
                onPlay: () {
                  // Play audio functionality
                },
                onStop: () {
                  // Stop audio functionality
                },
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Key Features of RAM",
                description: "• Memory Modules: Installed in slots on the motherboard.\n"
                    "• DDR Generations: From DDR3 to DDR5, offering faster speeds and efficiency.\n"
                    "• Capacity: Typically ranges from 8GB to 64GB for modern systems.\n"
                    "• Speed: Higher MHz values improve performance.",
                onPlay: () {
                  // Play audio functionality
                },
                onStop: () {
                  // Stop audio functionality
                },
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Popular RAM Brands",
                description: "• Corsair: Known for their Vengeance and Dominator series.\n"
                    "• G.Skill: Offers high-performance Trident Z series RAM.\n"
                    "• Kingston: Widely used HyperX Fury modules.\n"
                    "• Crucial: Affordable and efficient Ballistix RAM.",
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
                description: "Did you know that supercomputers can have several petabytes of RAM to process massive amounts of data simultaneously?",
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
                    const Text('Play', style: TextStyle(fontSize: 20)),
                    IconButton(
                      onPressed: onPlay,
                      icon: const Icon(Icons.play_arrow_sharp, size: 35),
                      color: Colors.green, // Light Green Play Button
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Stop', style: TextStyle(fontSize: 20)),
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
