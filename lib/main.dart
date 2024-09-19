import 'package:arapface/core/approutes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ArapFace());
}
class ArapFace extends StatelessWidget {
  const ArapFace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: Approutes.router,
    );
  }
}