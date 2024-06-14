import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quotes_app/utils/global.dart';
import 'package:quotes_app/utils/quoteList.dart';
import 'package:share_extend/share_extend.dart';
import 'dart:ui' as ui;



CatModel? catModel;

List<GlobalKey> imgKey = List.generate(catModel!.quoteModelList.length, (index) =>GlobalKey());


class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  @override
  void initState() {
    // TODO: implement initState
    catModel = CatModel.toList((Catagory.isEmpty)? Catlist : Catagory);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
              child: PageView(
                scrollDirection: Axis.vertical,
                children: [
                  ...List.generate(
                    catModel!.quoteModelList.length,
                        (index) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RepaintBoundary(
                          key: imgKey[index],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                textAlign: align,
                                '${catModel!.quoteModelList[index].quote}',
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
                                '- ${catModel!.quoteModelList[index].author}',
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
                        ),
                        SizedBox(
                          height: height*0.08,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                RenderRepaintBoundary boundary = imgKey[index].currentContext!.findRenderObject() as RenderRepaintBoundary;
                                ui.Image image = await boundary.toImage();
                                ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
                                Uint8List img = byteData!.buffer.asUint8List();

                                final path = await getApplicationDocumentsDirectory();
                                final file = File("${path.path}/img.png");
                                file.writeAsBytes(img);
                                ShareExtend.share(file.path,"image");
                              },
                              child: Icon(
                                Icons.share_outlined,
                                color: Colors.white,
                                size: 45,
                              ),
                            ),
                            SizedBox(
                              width: width*0.09,
                            ),
                            GestureDetector(
                              onTap: ()  async {
                                RenderRepaintBoundary boundary = imgKey[index].currentContext!.findRenderObject() as RenderRepaintBoundary;
                                ui.Image image = await boundary.toImage();
                                ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
                                Uint8List img = byteData!.buffer.asUint8List();

                                ImageGallerySaver.saveImage(img);
                              },
                              child: Icon(
                                Icons.save,
                                color: Colors.white,
                                size: 45,
                              ),
                            ),
                            SizedBox(
                              width: width*0.09,
                            ),
                            InkWell(
                              onTap: () {
                                Clipboard.setData(ClipboardData(text: '${catModel!.quoteModelList[index].quote}'),);
                              },
                              child: Icon(
                                Icons.copy,
                                color: Colors.white,
                                size: 45,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 38,right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/to');
              },
              child: Container(
                height: height*0.052,
                width: width*0.26,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.space_dashboard,size: 22,color: Colors.white,),
                    SizedBox(width: width*0.005,),
                    Text('Topics',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/theme');
              },
              child: Container(
                height: height*0.064,
                width: width*0.28,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.text_fields,size: 22,color: Colors.white,),
                        SizedBox(width: width*0.005,),
                        Text('fonts',style: TextStyle(color: Colors.white,fontSize: 18),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.content_copy_rounded,size: 22,color: Colors.white,),
                        SizedBox(width: width*0.005,),
                        Text('Themes',style: TextStyle(color: Colors.white,fontSize: 18),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/pro');
              },
              child: Container(
                height: height*0.053,
                width: width*0.28,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person,size: 22,color: Colors.white,),
                    SizedBox(width: width*0.005,),
                    Text('Profile',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}