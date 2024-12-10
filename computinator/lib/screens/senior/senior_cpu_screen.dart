import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_tts/flutter_tts.dart';

enum TtsState { playing, stopped, paused, continued }

class SeniorCPUScreen extends StatefulWidget {
  const SeniorCPUScreen({super.key});

  @override
  SeniorCPUScreenState createState() => SeniorCPUScreenState();
}

class SeniorCPUScreenState extends State<SeniorCPUScreen> {
  late FlutterTts flutterTts;
  TtsState ttsState = TtsState.stopped;

  @override
  void initState() {
    super.initState();
    initTts();
  }

  void initTts() {
    flutterTts = FlutterTts();

    flutterTts.setStartHandler(() {
      setState(() {
        ttsState = TtsState.playing;
      });
    });

    flutterTts.setCompletionHandler(() {
      setState(() {
        ttsState = TtsState.stopped;
      });
    });

    flutterTts.setCancelHandler(() {
      setState(() {
        ttsState = TtsState.stopped;
      });
    });

    flutterTts.setErrorHandler((msg) {
      setState(() {
        ttsState = TtsState.stopped;
      });
    });
  }

  Future<void> _speak(String text) async {
    await flutterTts.stop(); // Stop any existing speech
    await flutterTts.speak(text); // Start speaking
  }

  Future<void> _stop() async {
    await flutterTts.stop(); // Stop speech
  }

  @override
  void dispose() {
    flutterTts.stop(); // Ensure TTS stops when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD), // Light Blue Background
      appBar: AppBar(
        title: const Text(
          "Central Processing Unit",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1976D2), // Medium Blue AppBar
        leading: IconButton(
          onPressed: () {
            context.go('/senior_screen');
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
              Center(
                child: Image.asset(
                  'assets/images/cpu.png',
                  width: 200,
                  height: 150,
                ),
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "What is a CPU?",
                description: "The CPU, or Central Processing Unit, is often called the brain of the computer. "
                    "It processes instructions and performs tasks like calculations, managing data, and running programs.",
                onPlay: () => _speak(
                  "What is a CPU? The CPU, or Central Processing Unit, is often called the brain of the computer. "
                      "It processes instructions and performs tasks like calculations, managing data, and running programs.",
                ),
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Key Features of a CPU",
                description: "• Multiple Cores: Enables multitasking.\n"
                    "• Clock Speed: Higher speeds mean faster processing.\n"
                    "• Integrated Graphics: Some CPUs handle basic graphics tasks.",
                onPlay: () => _speak(
                  "Modern CPUs are powerful and efficient. "
                      "They have multiple cores, handle multitasking, and run at high clock speeds for faster performance.",
                ),
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Popular CPU Brands",
                description: "• Intel (e.g., Core i5, Core i7)\n"
                    "• AMD (e.g., Ryzen 5, Ryzen 7)",
                onPlay: () => _speak(
                  "Popular brands include Intel, known for its Core series like i5 and i7. "
                      "AMD is famous for its Ryzen processors.",
                ),
              ),
              const SizedBox(height: 16),
              _buildCard(
                title: "Fun Fact!",
                description: "Modern CPUs can process billions of instructions per second, "
                    "making them incredibly fast and efficient!",
                onPlay: () => _speak(
                  "Modern CPUs can process billions of instructions per second, making them incredibly fast and efficient!",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String description,
    required VoidCallback onPlay,
  }) {
    return Card(
      color: const Color(0xFFF9FBE7), // Light Beige Card Background
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.grey, width: 3.5), // Soft Gray Border
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Dark Gray Text
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Text('Play', style: TextStyle(fontSize: 20),),
                    IconButton(
                      onPressed: onPlay,
                      icon: const Icon(Icons.play_arrow_sharp, size: 35),
                      color: Colors.green, // Light Green Play Button
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Stop', style: TextStyle(fontSize: 20),),
                    IconButton(
                      onPressed: _stop,
                      icon: const Icon(Icons.stop_circle_outlined, size: 35),
                      color: Colors.red, // Light Red Stop Button
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 2,
              decoration: const BoxDecoration(
                color: Color(0xFF616161), // Neutral Dark Gray Divider
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                fontSize: 18,
                height: 1.5,
                color: Colors.black, // Dark Gray Text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
