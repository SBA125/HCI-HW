import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdultHDDScreen extends StatelessWidget {
  const AdultHDDScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1), // Neutral Gray-Blue
      appBar: AppBar(
        backgroundColor: const Color(0xFF455A64), // Deep Blue-Gray
        title: const Text(
          "Hard Disk Drive",
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
              // HDD Image
              Center(
                child: Image.asset(
                  'assets/images/hdd.png',
                  width: 250,
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              _buildSection(title: 'Introduction:', content: [], width: MediaQuery.of(context).size.width),

              const Text(
                'The Hard Disk Drive (HDD) is one of the most common forms of data storage. '
                'It relies on spinning magnetic disks (platters) and read/write heads to store and retrieve data. '
                'HDDs are widely used due to their affordability and high storage capacities, making them ideal for archiving data like documents, multimedia, and backups.',
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
                  'Storage Capacity: HDDs range from 500GB to over 20TB, making them perfect for large-scale data storage.',
                  'Speed: Performance is determined by the rotational speed of platters, typically 5400 RPM or 7200 RPM. Higher RPMs provide faster data access.',
                  'Cost-Effective: Compared to SSDs, HDDs offer a lower cost per gigabyte, making them budget-friendly for high-capacity needs.',
                  'Longevity: Designed for durability, HDDs can reliably store data for extended periods when handled properly.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Types of HDDs Section
              _buildSection(
                title: 'Types of HDDs:',
                content: [
                  'Desktop HDDs: Designed for standard desktop PCs, offering high capacity and moderate speeds.',
                  'Laptop HDDs: Smaller in size (2.5 inches) and optimized for energy efficiency.',
                  'Enterprise HDDs: Built for servers and data centers, prioritizing durability and continuous operation.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Popular Brands Section
              _buildSection(
                title: 'Popular Brands:',
                content: [
                  'Seagate: Known for their affordable and high-capacity drives.',
                  'Western Digital (WD): Offers reliable storage solutions with a range of options for personal and enterprise use.',
                  'Toshiba: Produces efficient HDDs for a variety of applications.',
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
                      'The first HDD, IBM’s 305 RAMAC (introduced in 1956), could store 5MB of data and was the size of two refrigerators. '
                      'Modern HDDs can store over 4 million times that amount and fit in your pocket!',
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
