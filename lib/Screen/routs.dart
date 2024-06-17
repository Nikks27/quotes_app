
import 'dart:ui';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:quotes_app/Screen/SplashScreen.dart';
import 'package:quotes_app/Screen/ThemeScreen.dart';
import 'package:quotes_app/Screen/image.dart';
import 'package:quotes_app/Screen/profile.dart';
import 'package:quotes_app/Screen/quotesScreen.dart';
import 'package:quotes_app/Screen/share.dart';
import 'package:quotes_app/Screen/topic.dart';
import 'package:quotes_app/utils/global.dart';



class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/to',
      routes: {
        '/' : (context) => SplashScreen(),
        '/quote' : (context) => QuoteScreen(),
        '/theme' : (context) => ThemeScreen(),
        '/to' : (context) => TopicScreen(),
        'share' : (context) => ShareScreen(),
        '/img' : (context) => ImageSave(),
        '/pro' : (context) => Profile(),
      },
    );
  }
}
class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/topic/creativitiy.jpg'),
              )),
          child: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: Catlist.length,
            itemBuilder: (context, index) => Stack(
              children: [
                Center(
                  child: Container(
                    color: Colors.white24,
                    alignment: Alignment.center,
                    height: double.infinity,
                    child: Text(
                      Catlist[index]['quote'],
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: IconButton(
                      onPressed: () async {
                        showDialog(
                          context: context,
                          builder: (context) => Column(
                            children: [
                              Expanded(
                                child: RepaintBoundary(
                                  key: imgKey,
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage('assets/topic/creative.jpeg'),
                                        )),
                                    child: Text(
                                      Catlist[index]['quote'],
                                      style: TextStyle(fontSize: 25, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(onPressed: () async {
                                RenderRepaintBoundary boundary = imgKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
                                ui.Image image = await boundary.toImage();
                                ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
                                Uint8List img = byteData!.buffer.asUint8List();

                                ImageGallerySaver.saveImage(img);
                                print("button pressed !");

                              }, icon: Icon(Icons.save))
                            ],
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.save_alt,
                        size: 40,
                      )),
                )
              ],
            ),
          )),
    );
  }
}