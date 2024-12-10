import 'package:computinator/screens/adult/adult_case_screen.dart';
import 'package:computinator/screens/adult/adult_cpu_screen.dart';
import 'package:computinator/screens/adult/adult_gpu_screen.dart';
import 'package:computinator/screens/adult/adult_hdd_screen.dart';
import 'package:computinator/screens/adult/adult_motherboard_screen.dart';
import 'package:computinator/screens/adult/adult_psu_screen.dart';
import 'package:computinator/screens/adult/adult_ram_screen.dart';
import 'package:computinator/screens/adult/adult_screen.dart';
import 'package:computinator/screens/adult/adult_ssd_screen.dart';
import 'package:computinator/screens/age_group_screen.dart';
import 'package:computinator/screens/child/child_screen.dart';
import 'package:computinator/screens/child/child_story_screen.dart';
import 'package:computinator/screens/senior/senior_case_screen.dart';
import 'package:computinator/screens/senior/senior_cpu_screen.dart';
import 'package:computinator/screens/senior/senior_screen.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:go_router/go_router.dart';
import 'screens/senior/senior_gpu_screen.dart';
import 'screens/senior/senior_hdd_screen.dart';
import 'screens/senior/senior_motherboard_screen.dart';
import 'screens/senior/senior_psu_screen.dart';
import 'screens/senior/senior_ram_screen.dart';
import 'screens/senior/senior_ssd_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const MyHomePage(title: '',);
          },
          routes: <RouteBase>[
            GoRoute(
              path: '/age_group_screen',
              pageBuilder: (context, state) {
                return CustomTransitionPage<void>(
                  child: const AgeGroupScreen(),
                  transitionDuration: const Duration(milliseconds: 700),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                );
              },
            ),
            GoRoute(
                path: '/child_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const ChildScreen();
                }
            ),
            GoRoute(
                path: '/adult_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const AdultScreen();
                }
            ),
            GoRoute(
                path: '/senior_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const SeniorScreen();
                }
            ),
            GoRoute(
                path: '/senior_cpu_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const SeniorCPUScreen();
                }
            ),
            GoRoute(
                path: '/senior_case_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const SeniorCaseScreen();
                }
            ),
            GoRoute(
                path: '/senior_gpu_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const SeniorGPUScreen();
                }
            ),
            GoRoute(
                path: '/senior_hdd_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const SeniorHDDScreen();
                }
            ),
            GoRoute(
                path: '/senior_motherboard_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const SeniorMotherboardScreen();
                }
            ),
            GoRoute(
                path: '/senior_psu_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const SeniorPSUScreen();
                }
            ),
            GoRoute(
                path: '/senior_ram_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const SeniorRAMScreen();
                }
            ),
            GoRoute(
                path: '/senior_ssd_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const SeniorSSDScreen();
                }
            ),
            GoRoute(
                path: '/adult_cpu_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const AdultCPUScreen();
                }
            ),
            GoRoute(
                path: '/adult_ram_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const AdultRAMScreen();
                }
            ),
            GoRoute(
                path: '/adult_motherboard_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const AdultMotherboardScreen();
                }
            ),
            GoRoute(
                path: '/adult_gpu_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const AdultGPUScreen();
                }
            ),
            GoRoute(
                path: '/adult_hdd_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const AdultHDDScreen();
                }
            ),
            GoRoute(
                path: '/adult_ssd_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const AdultSSDScreen();
                }
            ),
            GoRoute(
                path: '/adult_psu_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const AdultPSUScreen();
                }
            ),
            GoRoute(
                path: '/adult_case_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const AdultCaseScreen();
                }
            ),
            GoRoute(
                path: '/child_story_screen',
                builder: (BuildContext context, GoRouterState state) {
                  return const ChildStoryScreen();
                }
            ),
          ],
        ),
      ],
    );
    return MaterialApp.router(
      routerConfig: router,
      title: 'Computer Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    // Initialize AnimationController
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(); // Animation repeats indefinitely

    // Navigate to the next screen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return; GoRouter.of(context).go('/age_group_screen');
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/img2.jpg'),
            const SizedBox(height: 20),
            LoadingAnimationWidget.discreteCircle(
              color: Colors.blue,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
