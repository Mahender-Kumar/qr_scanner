import 'package:flutter/material.dart';
import 'package:qr_scanner/generator.dart';
import 'package:qr_scanner/scanner.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Generator(),
                    ),
                  );
                });
              },
              child: const Text('Generate QR Code'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Scanner(),
                    ),
                  );
                });
              },
              child: Text('Scan QR Code'),
            ),
          ],
        ),
      ),
    );
  }
}
