import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;
import 'image.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quotes_app/Screen/image.dart';
import 'package:quotes_app/Screen/quotesScreen.dart';
import 'package:quotes_app/utils/global.dart';
import 'package:share_extend/share_extend.dart';


class ShareScreen extends StatefulWidget {
  const ShareScreen({super.key});

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) async {
      RenderRepaintBoundary boundary = imgKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage();
      ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List img = byteData!.buffer.asUint8List();

      final path = await getApplicationDocumentsDirectory();
      final file = File("${path.path}/img.png");
      file.writeAsBytes(img);
      ShareExtend.share(file.path,"image");

      Navigator.of(context).pop('/quote');
    }
    );
    return Scaffold(
      body: RepaintBoundary(
        key: imgKey,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('${selectedTheme}'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: align,
                      '${catModel!.quoteModelList[selectedindex].quote}',
                      maxLines: 9,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        letterSpacing: 0.7,
                        color: selectColor,
                        fontSize: 38,
                        fontFamily: ('$selectedFontFamily'),
                      ),
                    ),
                    Text(
                      textAlign: align,
                      '- ${catModel!.quoteModelList[selectedindex].author}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        letterSpacing: 0.7,
                        color: selectColor,
                        fontSize: 30,
                        fontFamily: ('${selectedFontFamily}'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}