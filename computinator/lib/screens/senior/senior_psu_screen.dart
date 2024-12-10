import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SeniorPSUScreen extends StatelessWidget {
  const SeniorPSUScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD), // Light Blue Background
      appBar: AppBar(
        title: const Text(
          "Power Supply Unit",
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
                  'assets/images/psu.png',
                  width: 200,
                  height: 150,
                ),
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "What is a PSU?",
                description:
                    "The Power Supply Unit (PSU) converts electricity from the wall outlet into usable power for your computer's components. "
                    "It ensures stable and efficient power delivery while protecting your system from electrical fluctuations.",
                onPlay: () {
                  // Play audio functionality
                },
                onStop: () {
                  // Stop audio functionality
                },
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Key Features of a PSU",
                description: "• Wattage: Ranges from 450W to over 1200W for high-performance systems.\n"
                    "• Efficiency Ratings: Certified by 80 Plus standards (e.g., Bronze, Gold, Platinum).\n"
                    "• Modular Designs: Simplifies cable management and improves airflow.\n"
                    "• Cooling Systems: Built-in fans to maintain thermal stability.",
                onPlay: () {
                  // Play audio functionality
                },
                onStop: () {
                  // Stop audio functionality
                },
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Popular PSU Brands",
                description: "• Corsair: Reliable and high-performance PSUs.\n"
                    "• EVGA: Affordable and efficient power supplies.\n"
                    "• Seasonic: Known for quiet and durable designs.\n"
                    "• Cooler Master: Offers modular options for a cleaner build.",
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
                description: "An efficient PSU with an 80 Plus Gold rating can reduce energy bills and prolong the lifespan of your computer components!",
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
