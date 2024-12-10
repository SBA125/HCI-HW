import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AgeGroupScreen extends StatelessWidget {
  const AgeGroupScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(height: 50,),
                const Text(
                  "Who Are You?",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: Colors.black),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Let's customize your experience",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(height: 20),
                _buildAgeGroupCard(context, 
                image: 'assets/images/child.png', 
                label: "Child", 
                borderColor: const Color(0xFFFFC107),
                backgroundColor: const Color(0xFFFFF9C4),
                textColor: const Color(0xFFFFC107) ,
                  onTap: () {
                    context.go('/child_screen');
                  },
                ),
                const SizedBox(height: 5),
                _buildAgeGroupCard(context, 
                image: 'assets/images/adult.png', 
                label: "Adult", 
                borderColor: const Color(0xFF607D8B),
                backgroundColor: const Color(0xFFCFD8DC) ,
                textColor: const Color(0xFF607D8B) ,

                  onTap: () {
                    context.go('/adult_screen');
                  },
                ),
                const SizedBox(height: 5),
                _buildAgeGroupCard(context, 
                image: 'assets/images/senior.png', 
                label: "Senior",
                borderColor: const Color(0xFF0288D1),
                backgroundColor: const Color(0xFF81D4FA),
                textColor: const Color(0xFF0288D1) , 
                  onTap: () {
                    context.go('/senior_screen');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAgeGroupCard(BuildContext context,{
        required String label,
        required String image,
        required Color borderColor,
        required Color backgroundColor,
        required Color textColor,
        required VoidCallback onTap
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shadowColor: Colors.white,
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor, width: 2.0),
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image, scale: 1.75, width: 150,),
            Text(label, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: textColor)),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}