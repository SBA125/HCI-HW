import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdultGPUScreen extends StatelessWidget {
  const AdultGPUScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1), // Neutral Gray-Blue
      appBar: AppBar(
        backgroundColor: const Color(0xFF455A64), // Deep Blue-Gray
        title: const Text(
          "Graphics Processing Unit",
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
              // GPU Image
              Center(
                child: Image.asset(
                  'assets/images/gpu.png',
                  width: 250,
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              _buildSection(title: 'Introduction:', content: [], width: MediaQuery.of(context).size.width),
              const Text(
                'The GPU, or Graphics Processing Unit, is a specialized processor designed for handling complex graphical computations. '
                'It is integral to rendering visuals in games, videos, and other graphic-intensive applications, as well as powering tasks like 3D rendering and AI computations.',
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
                  'VRAM (Video Random Access Memory): Dedicated memory for storing textures, frame buffers, and rendering data. Modern GPUs typically have 6GB to 24GB of VRAM.',
                  'Clock Speed: Determines how fast the GPU processes graphical tasks, measured in MHz or GHz. Higher clock speeds generally mean better performance.',
                  'CUDA Cores (NVIDIA) / Stream Processors (AMD): These are the parallel processors responsible for executing rendering and computational tasks.',
                  'Ray Tracing: A modern technology that simulates the behavior of light for ultra-realistic visuals, supported by GPUs like NVIDIA RTX and AMD RDNA 2.',
                  'Cooling Systems: Efficient cooling is vital to maintain performance. Modern GPUs use dual or triple fans, vapor chambers, or even liquid cooling solutions.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Popular GPU Brands Section
              _buildSection(
                title: 'Popular GPU Brands:',
                content: [
                  'NVIDIA: Known for their GeForce series (e.g., RTX 3060, RTX 4090). NVIDIA leads in ray tracing and AI technologies.',
                  'AMD: Known for their Radeon series (e.g., RX 6800, RX 7900 XTX). AMD GPUs offer excellent performance at competitive prices.',
                  'Intel: Recently entered the GPU market with Intel Arc GPUs, focusing on mainstream users.',
                ],
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 16),

              // Tips for Choosing a GPU Section
              _buildSection(
                title: 'Tips for Choosing a GPU:',
                content: [
                  'Determine your needs: Gaming, video editing, or AI applications?',
                  'Check compatibility with your motherboard and power supply.',
                  'Look for the latest generation GPUs for optimal performance.',
                  'Consider VRAM: At least 6GB for gaming, and 12GB+ for 3D rendering or video editing.',
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
                      'High-end GPUs like the NVIDIA RTX 4090 can deliver over 100 teraflops of computational power, making them suitable for gaming, AI research, and even scientific simulations!',
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
