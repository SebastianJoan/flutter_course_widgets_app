import 'package:flutter/material.dart';

class ActivosScreen extends StatelessWidget {
  
  const ActivosScreen({super.key}); 
  static const String name = 'activos_screen';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Home '),
      ),
      body: const _DashboardView(),
    );
  }
}

class _DashboardView extends StatelessWidget {
  
  const _DashboardView();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
