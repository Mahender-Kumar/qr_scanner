import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generator extends StatefulWidget {
  const Generator({super.key});

  @override
  State<Generator> createState() => _GeneratorState();
}

class _GeneratorState extends State<Generator> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Generate QR Code'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (controller.text.isNotEmpty)
                // Image.network(
                //   'https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=${controller.text}',
                // ),
                Expanded(
                  child: Center(
                    child: SizedBox(
                      width: 280,
                      child: QrImageView(
                        data: controller.text,
                        version: QrVersions.auto,
                        eyeStyle: const QrEyeStyle(
                          eyeShape: QrEyeShape.square,
                          color: Color(0xff128760),
                        ),
                        dataModuleStyle: const QrDataModuleStyle(
                          dataModuleShape: QrDataModuleShape.square,
                          color: Color(0xff1a5441),
                        ),
                        embeddedImage: const AssetImage(
                            'assets/images/4.0x/logo_yakka_transparent.png'),
                        embeddedImageStyle: const QrEmbeddedImageStyle(
                          size: Size.square(40),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText: 'Enter the text to generate QR Code',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Generate QR Code'),
              ),
            ],
          ),
        ));
  }
}
