import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdultCaseScreen extends StatelessWidget {
  const AdultCaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1), // Neutral Gray-Blue
      appBar: AppBar(
        backgroundColor: const Color(0xFF455A64), // Deep Blue-Gray
        title: const Text(
          "Computer Case",
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
                  'assets/images/case.png',
                  width: 250,
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              _buildSection(title: 'Introduction:', content: [], width: MediaQuery.of(context).size.width),
              const Text(
                'The computer case, also known as the chassis, is the enclosure that houses all essential hardware components, including the motherboard, CPU, GPU, and storage devices. It provides structural support, protects components from external damage, and ensures efficient airflow for cooling.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF37474F), // Standard Dark Gray
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 16),

              // Key Features Section
              _buildSection(
                title: 'Key Features:',
                content: [
                  'Form Factor: Supports ATX, Micro-ATX, and Mini-ITX motherboards.',
                  'Cooling Options: Includes fan mounts, liquid cooling compatibility, and airflow-optimized designs.',
                  'Aesthetics: Features tempered glass panels, RGB lighting, and customizable designs for gamers and PC enthusiasts.',
                  'Cable Management: Provides compartments and cutouts to neatly route and hide cables.',
                  'Build Quality: Made from durable materials like steel, aluminum, or plastic.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Popular Brands Section
              _buildSection(
                title: 'Popular Brands:',
                content: [
                  'NZXT: Known for minimalistic designs and high airflow.',
                  'Cooler Master: Offers versatile cases with advanced cooling support.',
                  'Corsair: Popular for premium cases with RGB lighting.',
                  'Fractal Design: Focuses on quiet and airflow-optimized cases.',
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
                        color: Color(0xFF263238),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'High-end PC cases often come with smart features like integrated fan controllers, temperature sensors, and tool-less drive bays for easy upgrades!',
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
