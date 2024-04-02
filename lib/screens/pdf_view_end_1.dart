import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class PdfViewEnd1 extends StatelessWidget {
  const PdfViewEnd1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('PdfViewCover'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Gap(72),
              Text(
                'toTable app',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
