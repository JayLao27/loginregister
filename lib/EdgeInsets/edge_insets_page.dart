import 'package:flutter/material.dart';

class EdgeInsetsPage extends StatelessWidget {
  const EdgeInsetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EdgeInsets',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // EdgeInsets.all()
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(),
                ),
                padding: const EdgeInsets.all(30),
                child: const Text(
                  'EdgeInsets.all(30)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // EdgeInsets.symmetric()
            Container(
              color: Colors.grey[300],
              child: Container(
                color: Colors.yellow,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                child: const Text(
                  'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // EdgeInsets.only()
            Container(
              color: Colors.grey[300],
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 10,
                  right: 5,
                  bottom: 20,
                ),
                child: const Text(
                  'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // EdgeInsets.fromLTRB()
            Container(
              color: Colors.grey[300],
              child: Container(
                color: Colors.green,
                padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                child: const Text(
                  'EdgeInsets.fromLTRB(10, 20, 30, 40)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}