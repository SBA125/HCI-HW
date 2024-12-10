import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdultSSDScreen extends StatelessWidget {
  const AdultSSDScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1), // Neutral Gray-Blue
      appBar: AppBar(
        backgroundColor: const Color(0xFF455A64), // Deep Blue-Gray
        title: const Text(
          "Solid State Drive",
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
                  'assets/images/ssd.png',
                  width: 250,
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              _buildSection(title: 'Introduction:', content: [], width: MediaQuery.of(context).size.width),

              const Text(
                'An SSD (Solid State Drive) is a high-performance storage device that uses flash memory to store data. With no moving parts, SSDs are faster, more durable, and energy-efficient compared to traditional HDDs.',
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
                  'Speed: Up to 10x faster than HDDs for data transfer and boot times.',
                  'Durability: No moving parts reduce the risk of physical damage.',
                  'Capacity: Available in sizes ranging from 250GB to 4TB or more.',
                  'Energy Efficiency: Consumes less power, increasing laptop battery life.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Types of SSDs Section
              _buildSection(
                title: 'Types of SSDs:',
                content: [
                  'SATA SSDs: Affordable and widely compatible with most computers.',
                  'NVMe SSDs: Faster than SATA, designed for modern high-speed connections.',
                  'External SSDs: Portable storage for backups and additional space.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Popular Brands Section
              _buildSection(
                title: 'Popular Brands:',
                content: [
                  'Samsung: Known for high-speed and reliable SSDs.',
                  'Crucial: Offers affordable yet efficient SSDs.',
                  'Kingston: Reliable and widely used for gaming and daily tasks.',
                  'Western Digital: Features top-tier NVMe and SATA SSDs.',
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
                      'Replacing an HDD with an SSD can make your computer boot 10x faster and significantly improve performance in multitasking and gaming!',
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
