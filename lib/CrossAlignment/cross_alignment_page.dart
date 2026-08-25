import 'package:flutter/material.dart';

class CrossAlignmentPage extends StatelessWidget {
  const CrossAlignmentPage({super.key});

  Widget _sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  List<Widget> _rowBoxes() => const [
        SizedBox(width: 90, height: 90, child: ColoredBox(color: Colors.red)),
        SizedBox(width: 80, height: 80, child: ColoredBox(color: Colors.yellow)),
        SizedBox(width: 70, height: 70, child: ColoredBox(color: Colors.blue)),
      ];

  Widget _demoBox({required Widget child, double height = 120}) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cross Alignment',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionTitle('MainAxisAlignment.center'),
            _demoBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('MainAxisAlignment.spaceAround'),
            _demoBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('MainAxisAlignment.spaceBetween'),
            _demoBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('MainAxisAlignment.spaceEvenly'),
            _demoBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('MainAxisAlignment.start'),
            _demoBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('MainAxisAlignment.end'),
            _demoBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('CrossAxisAlignment.start'),
            _demoBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('CrossAxisAlignment.end'),
            _demoBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('CrossAxisAlignment.center'),
            _demoBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('CrossAxisAlignment.stretch'),
            _demoBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: _rowBoxes(),
              ),
            ),
            const Divider(height: 48),
            _sectionTitle('Column MainAxisAlignment.center'),
            _demoBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('Column MainAxisAlignment.spaceAround'),
            _demoBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('Column MainAxisAlignment.spaceBetween'),
            _demoBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('Column MainAxisAlignment.spaceEvenly'),
            _demoBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('Column MainAxisAlignment.start'),
            _demoBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('Column MainAxisAlignment.end'),
            _demoBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('Column CrossAxisAlignment.center'),
            _demoBox(
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('Column CrossAxisAlignment.start'),
            _demoBox(
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('Column CrossAxisAlignment.end'),
            _demoBox(
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: _rowBoxes(),
              ),
            ),
            _sectionTitle('Column CrossAxisAlignment.stretch'),
            _demoBox(
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: _rowBoxes(),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
