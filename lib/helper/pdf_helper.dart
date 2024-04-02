import 'dart:io';

// import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw ;
import 'package:permission_handler/permission_handler.dart';

class PdfHelper {
  static generatePdfViewCover() async {}

  static Future<File> saveDocument({
    bool? share,
    required pw.Document pdf,
  }) async {
    await Permission.storage.request();

    final bytes = await pdf.save();
    String fileName = DateTime.now().microsecondsSinceEpoch.toString();
    var savePath = '/storage/emulated/0/Download/toTable/$fileName.pdf';
    final imagePath = await File(savePath).create();
    await imagePath.writeAsBytes(bytes);
    Logger().d(await imagePath.writeAsBytes(bytes));

    return imagePath;
  }
}
