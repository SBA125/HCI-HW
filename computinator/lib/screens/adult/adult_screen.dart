import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdultScreen extends StatelessWidget {
  const AdultScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1),
      appBar: AppBar(
        backgroundColor: const Color(0xFF455A64),
        title: const Text(
          "Learn About PC Parts!",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: () {
          context.go('/age_group_screen');
        }, icon: const Icon(Icons.arrow_back, color: Colors.white,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  _buildPartCard(
                    context,
                    image: 'assets/images/cpu.png',
                    label: "CPU",
                    description: "The brain of the computer!",
                    route: '/adult_cpu_screen',
                  ),

                  _buildPartCard(
                    context,
                    image: 'assets/images/ram.png',
                    label: "RAM",
                    description: "The brain of the computer!",
                    route: '/adult_ram_screen',
                  ),

                  _buildPartCard(
                    context,
                    image: 'assets/images/motherboard.png',
                    label: "Motherboard",
                    description: "The brain of the computer!",
                    route: '/adult_motherboard_screen',
                  ),

                  _buildPartCard(
                    context,
                    image: 'assets/images/gpu.png',
                    label: "GPU",
                    description: "Handles graphics!",
                    route: '/adult_gpu_screen',
                  ),

                  _buildPartCard(
                    context,
                    image: 'assets/images/hdd.png',
                    label: "HDD",
                    description: "Stores your data!",
                    route: '/adult_hdd_screen',
                  ),

                  _buildPartCard(
                    context,
                    image: 'assets/images/ssd.png',
                    label: "SSD",
                    description: "Stores your data!",
                    route: '/adult_ssd_screen',
                  ),

                  _buildPartCard(
                    context,
                    image: 'assets/images/psu.png',
                    label: "PSU",
                    description: "Provides power!",
                    route: '/adult_psu_screen',
                  ),

                  _buildPartCard(
                    context,
                    image: 'assets/images/case.png',
                    label: "Case",
                    description: "The brain of the computer!",
                    route: '/adult_case_screen',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPartCard(BuildContext context,
      {required String image,
        required String label,
        required String description,
        required String route
      }) {
    return GestureDetector(
      onTap: () {
        context.go(route);
      },
      child: Card(
        color: const Color(0xFFFFF9C4),
        shape: RoundedRectangleBorder(
          side:const BorderSide(color: Color(0xFF0097A7), width: 2.0),
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 150, height: 100,),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
