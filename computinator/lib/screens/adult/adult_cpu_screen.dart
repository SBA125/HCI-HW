import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdultCPUScreen extends StatelessWidget {
  const AdultCPUScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1), // Neutral Gray-Blue
      appBar: AppBar(
        backgroundColor: const Color(0xFF455A64), // Deep Blue-Gray
        title: const Text(
          "Central Processing Unit",
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
                  'assets/images/cpu.png',
                  width: 250,
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              _buildSection(title: 'Introduction:', content: [], width: MediaQuery.of(context).size.width),
              const Text(
                'The CPU is the brain of the computer, executing instructions and performing calculations. '
                'It enables applications and programs to function efficiently.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF37474F), // Standard Dark Gray
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 16),

              // Detailed Functions Section
              _buildSection(
                title: 'Detailed Functions:',
                content: [
                  'Instruction Execution: Fetches and executes instructions from memory.',
                  'Data Processing: Handles arithmetic and logical operations.',
                  'Input/Output Management: Coordinates peripheral communication.',
                ],
                width: MediaQuery.of(context).size.width
              ),
              const SizedBox(height: 16),

              // Performance Factors Section
              _buildSection(
                title: 'Performance Factors:',
                content: [
                  'Clock Speed: Determines how many cycles the CPU can complete per second.',
                  'Number of Cores: Enables multitasking and parallel processing.',
                  'Cache Memory: High-speed memory for frequently accessed data.',
                  'Instruction Set Architecture (ISA): Defines CPU instruction handling.',
                ],
                width: MediaQuery.of(context).size.width
              ),
              const SizedBox(height: 16),

              // Key Components Section
              _buildSection(
                title: 'Key Components Inside the CPU:',
                content: [
                  'Arithmetic Logic Unit (ALU): Handles arithmetic and logical operations.',
                  'Control Unit: Manages data flow and execution of instructions.',
                  'Registers: Temporary storage for processing data.',
                ],
                width: MediaQuery.of(context).size.width
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
                    Text('Fun Fact!',
                    style: TextStyle(
                      fontSize: 24,
                        fontStyle: FontStyle.italic,
                        height: 1.5,
                        color: Color(0xFF263238),
                        fontWeight: FontWeight.bold
                    ),),
                    Text(
                      'The world’s fastest supercomputer, Frontier, has over 8 million CPU cores and performs over 1 quintillion calculations per second!',
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
        const SizedBox(height: 5,),
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
