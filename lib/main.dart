import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_table/screens/pdf_view_body.dart';
import 'package:to_table/screens/pdf_view_cover.dart';
import 'package:gap/gap.dart';
import 'package:to_table/screens/pdf_view_end_1.dart';
import 'package:to_table/screens/pdf_view_end_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              card(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (ctx) => const PdfViewCover(),
                    ),
                  );
                },
                text: 'PDF View Cover',
              ),
              const Gap(20),
              card(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (ctx) => const PdfViewBody(),
                    ),
                  );
                },
                text: 'PDF View Body',
              ),
              const Gap(20),
              card(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (ctx) => const PdfViewEnd1(),
                    ),
                  );
                },
                text: 'PDF View End 1',
              ),
              const Gap(20),
              card(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (ctx) => const PdfViewEnd2(),
                    ),
                  );
                },
                text: 'PDF View End 2',
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }

  Widget card({onTap, text}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.blueGrey,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
