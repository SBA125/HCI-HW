import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:go_router/go_router.dart';

enum TtsState { playing, stopped, paused, continued }

class SeniorScreen extends StatefulWidget {
  const SeniorScreen({super.key});

  @override
  SeniorScreenState createState() => SeniorScreenState();

}

class SeniorScreenState extends State<SeniorScreen> {
  late FlutterTts flutterTts;
  String? language;
  String? engine;
  double volume = 0.5;
  double pitch = 1.0;
  double rate = 0.5;
  bool isCurrentLanguageInstalled = false;

  String? _newVoiceText;

  TtsState ttsState = TtsState.stopped;

  bool get isPlaying => ttsState == TtsState.playing;
  bool get isStopped => ttsState == TtsState.stopped;
  bool get isPaused => ttsState == TtsState.paused;
  bool get isContinued => ttsState == TtsState.continued;

  bool get isIOS => !kIsWeb && Platform.isIOS;
  bool get isAndroid => !kIsWeb && Platform.isAndroid;
  bool get isWindows => !kIsWeb && Platform.isWindows;
  bool get isWeb => kIsWeb;

  @override
  initState() {
    super.initState();
    initTts();
  }

  dynamic initTts() {
    flutterTts = FlutterTts();

    _setAwaitOptions();

    if (isAndroid) {
      _getDefaultEngine();
      _getDefaultVoice();
    }

    flutterTts.setStartHandler(() {
      setState(() {
        print("Playing");
        ttsState = TtsState.playing;
      });
    });

    flutterTts.setCompletionHandler(() {
      setState(() {
        print("Complete");
        ttsState = TtsState.stopped;
      });
    });

    flutterTts.setCancelHandler(() {
      setState(() {
        print("Cancel");
        ttsState = TtsState.stopped;
      });
    });

    flutterTts.setPauseHandler(() {
      setState(() {
        print("Paused");
        ttsState = TtsState.paused;
      });
    });

    flutterTts.setContinueHandler(() {
      setState(() {
        print("Continued");
        ttsState = TtsState.continued;
      });
    });

    flutterTts.setErrorHandler((msg) {
      setState(() {
        print("error: $msg");
        ttsState = TtsState.stopped;
      });
    });
  }

  Future<dynamic> _getLanguages() async => await flutterTts.getLanguages;

  Future<dynamic> _getEngines() async => await flutterTts.getEngines;

  Future<void> _getDefaultEngine() async {
    var engine = await flutterTts.getDefaultEngine;
    if (engine != null) {
      print(engine);
    }
  }

  Future<void> _getDefaultVoice() async {
    var voice = await flutterTts.getDefaultVoice;
    if (voice != null) {
      print(voice);
    }
  }

  Future<void> _speak(String s) async {
    await flutterTts.setVolume(volume);
    await flutterTts.setSpeechRate(rate);
    await flutterTts.setPitch(pitch);

    if (_newVoiceText != null) {
      if (_newVoiceText!.isNotEmpty) {
        await flutterTts.speak(_newVoiceText!);
      }
    }

    if (s.isNotEmpty) {
      var result = await flutterTts.speak(s);
      if (result == 1) setState(() => ttsState = TtsState.playing);
    }
  }

  Future<void> _setAwaitOptions() async {
    await flutterTts.awaitSpeakCompletion(true);
  }

  Future<void> _stop() async {
    var result = await flutterTts.stop();
    if (result == 1) setState(() => ttsState = TtsState.stopped);
  }

  Future<void> _pause() async {
    var result = await flutterTts.pause();
    if (result == 1) setState(() => ttsState = TtsState.paused);
  }

  @override
  void dispose() {
    super.dispose();
    flutterTts.stop();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F7FA),
      appBar: AppBar(
        title: const Text(
          "PC Parts Made Easy!",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1976D2),
        // High-contrast color
        leading: IconButton(
          onPressed: () {
            context.go('/age_group_screen');
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Interactive Icons for PC Parts
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.05,
                shrinkWrap: true,
                children: [
                  _buildAccessibleCard(
                    context,
                    image: 'assets/images/cpu.png',
                    label: "CPU",
                    description: "Brain of the computer.",
                    route: '/senior_cpu_screen',
                  ),
                  _buildAccessibleCard(
                    context,
                    image: 'assets/images/ram.png',
                    label: "RAM",
                    description: "Short-term memory.",
                    route: '/senior_ram_screen',
                  ),
                  _buildAccessibleCard(
                    context,
                    image: 'assets/images/motherboard.png',
                    label: "Motherboard",
                    description: "Connects everything.",
                    route: '/senior_motherboard_screen',
                  ),
                  _buildAccessibleCard(
                    context,
                    image: 'assets/images/gpu.png',
                    label: "GPU",
                    description: "Handles graphics.",
                    route: '/senior_gpu_screen',
                  ),
                  _buildAccessibleCard(
                    context,
                    image: 'assets/images/hdd.png',
                    label: "HDD",
                    description: "Stores data.",
                    route: '/senior_hdd_screen',
                  ),
                  _buildAccessibleCard(
                    context,
                    image: 'assets/images/ssd.png',
                    label: "SSD",
                    description: "Faster storage.",
                    route: '/senior_ssd_screen',
                  ),
                  _buildAccessibleCard(
                    context,
                    image: 'assets/images/psu.png',
                    label: "PSU",
                    description: "Power source.",
                    route: '/senior_psu_screen',
                  ),
                  _buildAccessibleCard(
                    context,
                    image: 'assets/images/case.png',
                    label: "Case",
                    description: "Protects components.",
                    route: '/senior_case_screen',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildAccessibleCard(BuildContext context,
      {required String image,
        required String label,
        required String description,
        required String route}) {
    return GestureDetector(
      onTap: () {
        context.go(route);
        // _speak('$label: $description');
      },
      child: Card(
        color: const Color(0xFFF9FBE7), // Softer background color
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.grey, width: 3.5),
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 190, height: 190),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
