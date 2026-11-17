import 'package:flutter/material.dart';

class MainMenuPages extends StatelessWidget {
  const MainMenuPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAS Mobile'),
      ),
      body: const Center(
        child: Text('Selamat Datang di PAS Mobile'),
      ),
    );
  }
}