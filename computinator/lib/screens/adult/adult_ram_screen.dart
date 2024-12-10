import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdultRAMScreen extends StatelessWidget {
  const AdultRAMScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1), // Neutral Gray-Blue
      appBar: AppBar(
        backgroundColor: const Color(0xFF455A64), // Deep Blue-Gray
        title: const Text(
          "Random Access Memory",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            context.go('/adult_screen');
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
              // Image Section
              Center(
                child: Image.asset(
                  'assets/images/ram.png',
                  width: 250,
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              _buildSection(title: 'Introduction:', content: [], width: MediaQuery.of(context).size.width),

              const Text(
                'Random Access Memory (RAM) is a high-speed workspace for the CPU to store and retrieve data during active tasks. Unlike SSDs or HDDs, RAM is volatile, meaning its data is lost when the system powers off.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF37474F), // Standard Dark Gray
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 16),

              // Why is RAM Important?
              _buildSection(
                title: 'Why is RAM Important?',
                content: [
                  'Multitasking: Allows multiple applications to run simultaneously without performance drops.',
                  'Faster Processing: Data in RAM can be accessed quicker than from SSDs or HDDs.',
                  'Gaming and Video Editing: High-capacity RAM ensures smooth gameplay and efficient handling of large video files.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Key Features Section
              _buildSection(
                title: 'Key Features of RAM:',
                content: [
                  'Memory Modules: Installed in motherboard slots, often labeled as DIMMs (Dual Inline Memory Modules).',
                  'DDR Generations: DDR RAM has evolved from DDR3 to DDR4 and DDR5, with each generation offering faster speeds.',
                  'Capacity: Measured in gigabytes (GB). Most modern computers have 8GB to 64GB RAM.',
                  'Speed: Measured in MHz (e.g., 2400MHz, 3200MHz, or 5200MHz). Faster speeds improve performance.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Types of RAM Section
              _buildSection(
                title: 'Types of RAM:',
                content: [
                  'DRAM (Dynamic RAM): Common in desktops and laptops, requiring constant refresh cycles.',
                  'SRAM (Static RAM): Faster and more expensive, used for CPU caches.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Popular Brands Section
              _buildSection(
                title: 'Popular Brands:',
                content: [
                  'Corsair: Known for their Vengeance series.',
                  'G.Skill: Popular for their Trident Z series.',
                  'Kingston: Famous for their HyperX Fury RAM.',
                  'Crucial: Offers reliable options like the Ballistix series.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Fun Fact Section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF9C4), // Pale Yellow Highlight
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFFFF176)), // Light Yellow Border
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fun Fact!',
                      style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        height: 1.5,
                        color: Color(0xFF263238), // Dark Gray
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Did you know that supercomputers can have several petabytes of RAM to process immense datasets like weather forecasts or scientific simulations?',
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        height: 1.5,
                        color: Color(0xFF263238), // Dark Gray
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required List<String> content, required double width}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF263238), // Dark Gray
          ),
        ),
        Container(
          height: 2,
          width: width,
          margin: const EdgeInsets.symmetric(vertical: 2),
          color: const Color(0xFF0097A7), // Blue-Green Accent
        ),
        const SizedBox(height: 5),
        ...content.map((text) => Padding(
              padding: const EdgeInsets.only(left: 8, bottom: 8),
              child: Text(
                '• $text',
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Color(0xFF37474F), // Standard Dark Gray
                ),
              ),
            )),
      ],
    );
  }
}
