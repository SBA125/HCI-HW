import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdultMotherboardScreen extends StatelessWidget {
  const AdultMotherboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1), // Neutral Gray-Blue
      appBar: AppBar(
        backgroundColor: const Color(0xFF455A64), // Deep Blue-Gray
        title: const Text(
          "Motherboard",
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
              // Image
              Center(
                child: Image.asset(
                  'assets/images/motherboard.png',
                  width: 250,
                  height: 150,
                ),
              ),
             const SizedBox(height: 20),
              _buildSection(title: 'Introduction:', content: [], width: MediaQuery.of(context).size.width),

              const Text(
                'The motherboard serves as the central hub of your computer, connecting all essential components like the CPU, GPU, RAM, storage, and power supply. '
                'It allows data and power to flow between these components, ensuring the computer operates seamlessly.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF37474F), // Standard Dark Gray
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 16),

              // Key Components Section
              _buildSection(
                title: 'Key Components of a Motherboard:',
                content: [
                  'Chipset: Determines the features and compatibility of the motherboard, such as support for CPUs, memory, and expansion slots.',
                  'Form Factors: Refers to the size and layout of the motherboard. Common types include ATX, Micro-ATX, and Mini-ITX.',
                  'Power Delivery: Regulates the power sent to the CPU and other components for stable performance.',
                  'RAM Slots: Holds memory modules (DIMMs) for temporary, high-speed storage.',
                  'PCIe Slots: Used for GPUs, sound cards, and other expansion cards.',
                  'SATA and NVMe Ports: Connect storage devices like SSDs and HDDs.',
                  'I/O Ports: USB ports, HDMI, Ethernet, and audio jacks for external devices.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Popular Brands Section
              _buildSection(
                title: 'Popular Motherboard Brands:',
                content: [
                  'ASUS: Known for high-end gaming motherboards (e.g., ROG series).',
                  'MSI: Offers a wide range of motherboards for gaming and productivity.',
                  'Gigabyte: Popular for durable and reliable designs (e.g., AORUS series).',
                  'ASRock: Affordable options with innovative features.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Tips Section
              _buildSection(
                title: 'Tips for Choosing a Motherboard:',
                content: [
                  'Ensure compatibility with your CPU (check the socket type and chipset).',
                  'Choose a form factor that fits your PC case.',
                  'Consider the number of RAM slots and supported memory capacity.',
                  'Check for sufficient PCIe and M.2 slots for future upgrades.',
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
                      'The first motherboards were simple PCBs with a few components. '
                      'Modern motherboards support up to 128GB of RAM, multiple GPUs, and ultra-fast storage devices!',
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
