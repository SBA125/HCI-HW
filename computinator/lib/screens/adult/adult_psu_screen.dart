import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdultPSUScreen extends StatelessWidget {
  const AdultPSUScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1), // Neutral Gray-Blue
      appBar: AppBar(
        backgroundColor: const Color(0xFF455A64), // Deep Blue-Gray
        title: const Text(
          "Power Supply Unit",
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
                  'assets/images/psu.png',
                  width: 250,
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              _buildSection(title: 'Introduction:', content: [], width: MediaQuery.of(context).size.width),

              const Text(
                'The Power Supply Unit (PSU) is responsible for converting electricity from the wall outlet into stable, usable power for your computer components. It ensures that devices like the CPU, GPU, and motherboard receive reliable power, protecting them from electrical fluctuations.',
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
                  'Wattage: Ranges from 450W to 1200W+ for high-performance PCs.',
                  'Efficiency Rating: Certified by 80 Plus standards, such as Bronze, Gold, and Platinum.',
                  'Modular Design: Flexible cable management with modular and semi-modular options.',
                  'Cooling Systems: Built-in fans or liquid cooling for thermal control.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Compatibility Section
              _buildSection(
                title: 'Compatibility and Importance:',
                content: [
                  'Choosing the right PSU ensures stable and clean power delivery to all components.',
                  'Match wattage and connectors with your PC’s requirements to prevent system instability.',
                  'A high-quality PSU can extend component lifespan and improve overall system reliability.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Popular Brands Section
              _buildSection(
                title: 'Popular Brands:',
                content: [
                  'Corsair: Known for reliable and high-performance PSUs.',
                  'EVGA: Offers a range of affordable and efficient power supplies.',
                  'Seasonic: Renowned for quiet and energy-efficient designs.',
                  'Cooler Master: Popular for modular options and durability.',
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
                      'An efficient PSU with an 80 Plus Gold rating can save energy, lower electricity bills, and keep your system cool during operation!',
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
