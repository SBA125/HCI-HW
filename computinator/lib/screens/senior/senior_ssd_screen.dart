import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SeniorSSDScreen extends StatelessWidget {
  const SeniorSSDScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD), // Light Blue Background
      appBar: AppBar(
        title: const Text(
          "Solid State Drive",
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
                  'assets/images/ssd.png',
                  width: 200,
                  height: 150,
                ),
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "What is an SSD?",
                description: "A Solid State Drive (SSD) is a fast storage device that uses flash memory to store data. "
                    "Unlike HDDs, SSDs have no moving parts, making them faster, more durable, and energy-efficient.",
                onPlay: () {
                  // Play audio functionality
                },
                onStop: () {
                  // Stop audio functionality
                },
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Key Features of SSDs",
                description: "• Speed: Up to 10x faster than HDDs for data transfer and boot times.\n"
                    "• Durability: No moving parts reduce the risk of physical damage.\n"
                    "• Energy Efficiency: Consumes less power, increasing battery life in laptops.\n"
                    "• Capacity: Ranges from 250GB to 4TB or more.",
                onPlay: () {
                  // Play audio functionality
                },
                onStop: () {
                  // Stop audio functionality
                },
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Types of SSDs",
                description: "• SATA SSDs: Affordable and compatible with most systems.\n"
                    "• NVMe SSDs: High-speed storage for modern systems.\n"
                    "• External SSDs: Portable storage for backups and additional space.",
                onPlay: () {
                  // Play audio functionality
                },
                onStop: () {
                  // Stop audio functionality
                },
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Popular SSD Brands",
                description: "• Samsung: Known for high-speed and reliable SSDs.\n"
                    "• Crucial: Affordable yet efficient SSDs.\n"
                    "• Kingston: Widely used for gaming and multitasking.\n"
                    "• Western Digital: Offers top-tier NVMe and SATA SSDs.",
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
                description: "Replacing an HDD with an SSD can make your computer boot 10x faster and improve multitasking and gaming performance!",
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
