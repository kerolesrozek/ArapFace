import 'package:arapface/core/approutes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigatToRegisterView();
  }

  void navigatToRegisterView() {
    Future.delayed(
        const Duration(
          seconds: 5,
        ), () {
      GoRouter.of(context).push(Approutes.kRegisterView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Shimmer.fromColors(
      baseColor: Colors.blue,
      highlightColor: Colors.blue.shade200,
      child: const Text(
        'ArapFace...',
        style: TextStyle(
          fontFamily: 'Oswald',
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    ));
  }
}
