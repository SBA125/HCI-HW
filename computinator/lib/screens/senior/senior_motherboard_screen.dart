import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SeniorMotherboardScreen extends StatelessWidget {
  const SeniorMotherboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD), // Light Blue Background
      appBar: AppBar(
        title: const Text(
          "Motherboard",
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
                  'assets/images/motherboard.png',
                  width: 200,
                  height: 150,
                ),
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "What is a Motherboard?",
                description:
                    "The motherboard is the central hub of a computer. It connects all the essential components like the CPU, GPU, RAM, and storage devices. "
                    "It allows these components to communicate and work together, enabling the computer to function properly.",
                onPlay: () {
                  // Play audio functionality
                },
                onStop: () {
                  // Stop audio functionality
                },
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Key Components of a Motherboard",
                description: "• CPU Socket: Where the CPU is installed.\n"
                    "• RAM Slots: Holds memory modules for temporary data storage.\n"
                    "• PCIe Slots: For GPUs and other expansion cards.\n"
                    "• Storage Ports: Connects SSDs and HDDs (e.g., SATA, NVMe).\n"
                    "• Chipset: Manages communication between the CPU and other components.",
                onPlay: () {
                  // Play audio functionality
                },
                onStop: () {
                  // Stop audio functionality
                },
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Popular Motherboard Brands",
                description: "• ASUS: Known for gaming motherboards (ROG series).\n"
                    "• MSI: Offers motherboards for gaming and productivity.\n"
                    "• Gigabyte: Durable designs for various use cases.\n"
                    "• ASRock: Affordable options with innovative features.",
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
                description: "Modern motherboards are highly advanced, with support for up to 128GB of RAM, multiple GPUs, and ultra-fast NVMe storage devices!",
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
