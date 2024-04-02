import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class PdfViewCover extends StatelessWidget {
  const PdfViewCover({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Gap(72),
              Placeholder(
                fallbackHeight: 80,
              ),
              Text(' proactively preventing food waste')
            ],
          ),
        ),
      ),
    );
  }
}
