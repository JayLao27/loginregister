import 'package:flutter/material.dart';
import 'package:loginregister/CrossAlignment/cross_alignment_page.dart';
import 'package:loginregister/EdgeInsets/edge_insets_page.dart';
import 'package:loginregister/LoginRegister/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ), // AppBar
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: buttonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CrossAlignmentPage(),
                    ),
                  );
                },
                child: const Text('Cross Alignment'),
              ), // ElevatedButton
              const SizedBox(height: 15),
              ElevatedButton(
                style: buttonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                  );
                },
                child: const Text('Login Register'),
              ), // ElevatedButton
              const SizedBox(height: 15),
              ElevatedButton(
                style: buttonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EdgeInsetsPage(),
                    ),
                  );
                },
                child: const Text('EdgeInsets'),
              ), // ElevatedButton
            ],
          ), // Column
        ), // Padding
      ), // Center
    ); // Scaffold
  }
}
