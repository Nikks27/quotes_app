import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quotes_app/utils/global.dart';
import 'package:quotes_app/utils/quoteList.dart';
import 'package:share_extend/share_extend.dart';
import 'dart:ui' as ui;


CatModel? catModel;

GlobalKey imgKey = GlobalKey();

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  @override
  void initState() {
    catModel = CatModel.toList((Catagory.isEmpty) ? Catlist : Catagory);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('${selectedTheme}'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: catModel!.quoteModelList.length,
            itemBuilder: (context, index) => Stack(
              children: [
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
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
                            SizedBox(
                              height: height * 0.08,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () async {
                                      showDialog(
                                        context: context,
                                        builder: (context) => Dialog.fullscreen(
                                          backgroundColor: Colors.black,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: RepaintBoundary(
                                                  key: imgKey,
                                                  child: Container(
                                                      height: double.infinity,
                                                      width: double.infinity,
                                                      alignment:
                                                      Alignment.center,
                                                      decoration: BoxDecoration(
                                                          image:
                                                          DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                '$selectedTheme'),
                                                          )),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Text(
                                                            textAlign: align,
                                                            '${catModel!.quoteModelList[index].quote}',
                                                            maxLines: 9,
                                                            overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                            style: TextStyle(
                                                              letterSpacing:
                                                              0.7,
                                                              color:
                                                              selectColor,
                                                              fontSize: 38,
                                                              fontFamily:
                                                              ('$selectedFontFamily'),
                                                            ),
                                                          ),
                                                          Text(
                                                            textAlign: align,
                                                            '- ${catModel!.quoteModelList[index].author}',
                                                            maxLines: 2,
                                                            overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                            style: TextStyle(
                                                              letterSpacing:
                                                              0.7,
                                                              color:
                                                              selectColor,
                                                              fontSize: 30,
                                                              fontFamily:
                                                              ('${selectedFontFamily}'),
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () async {
                                                      RenderRepaintBoundary
                                                      boundary = imgKey
                                                          .currentContext!
                                                          .findRenderObject()
                                                      as RenderRepaintBoundary;
                                                      ui.Image image =
                                                      await boundary
                                                          .toImage();
                                                      ByteData? byteData =
                                                      await image.toByteData(
                                                          format: ui
                                                              .ImageByteFormat
                                                              .png);
                                                      Uint8List img = byteData!
                                                          .buffer
                                                          .asUint8List();

                                                      ImageGallerySaver
                                                          .saveImage(img);
                                                    },
                                                    child: Container(
                                                      height: height * 0.06,
                                                      width: width * 0.4,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                          border: Border.all(
                                                              color:
                                                              Colors.white,
                                                              width: 1)),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          Icon(
                                                            Icons.save,
                                                            size: 35,
                                                            color: Colors.white,
                                                          ),
                                                          Text(
                                                            'Save',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 24),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.1,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .pushNamed('/quote');
                                                    },
                                                    child: Container(
                                                      height: height * 0.06,
                                                      width: width * 0.4,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                          border: Border.all(
                                                              color:
                                                              Colors.white,
                                                              width: 1)),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          Icon(
                                                            Icons.cancel,
                                                            size: 35,
                                                            color: Colors.white,
                                                          ),
                                                          Text(
                                                            'Cancel',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 24),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.save,
                                      size: 40,
                                      color: selectColor,
                                    )),
                                SizedBox(
                                  width: width * 0.04,
                                ),
                                IconButton(
                                    onPressed: () async {
                                      showDialog(
                                        context: context,
                                        builder: (context) => Dialog.fullscreen(
                                          backgroundColor: Colors.black,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: RepaintBoundary(
                                                  key: imgKey,
                                                  child: Container(
                                                      height: double.infinity,
                                                      width: double.infinity,
                                                      alignment:
                                                      Alignment.center,
                                                      decoration: BoxDecoration(
                                                          image:
                                                          DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                '$selectedTheme'),
                                                          )),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Text(
                                                            textAlign: align,
                                                            '${catModel!.quoteModelList[index].quote}',
                                                            maxLines: 9,
                                                            overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                            style: TextStyle(
                                                              letterSpacing:
                                                              0.7,
                                                              color:
                                                              selectColor,
                                                              fontSize: 38,
                                                              fontFamily:
                                                              ('$selectedFontFamily'),
                                                            ),
                                                          ),
                                                          Text(
                                                            textAlign: align,
                                                            '- ${catModel!.quoteModelList[index].author}',
                                                            maxLines: 2,
                                                            overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                            style: TextStyle(
                                                              letterSpacing:
                                                              0.7,
                                                              color:
                                                              selectColor,
                                                              fontSize: 30,
                                                              fontFamily:
                                                              ('${selectedFontFamily}'),
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () async {
                                                      RenderRepaintBoundary
                                                      boundary = imgKey
                                                          .currentContext!
                                                          .findRenderObject()
                                                      as RenderRepaintBoundary;
                                                      ui.Image image =
                                                      await boundary
                                                          .toImage();
                                                      ByteData? byteData =
                                                      await image.toByteData(
                                                          format: ui
                                                              .ImageByteFormat
                                                              .png);
                                                      Uint8List img = byteData!
                                                          .buffer
                                                          .asUint8List();

                                                      final path =
                                                      await getApplicationDocumentsDirectory();
                                                      final file = File(
                                                          "${path.path}/img.png");
                                                      file.writeAsBytes(img);
                                                      ShareExtend.share(
                                                          file.path, "image");
                                                    },
                                                    child: Container(
                                                      height: height * 0.06,
                                                      width: width * 0.4,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                          border: Border.all(
                                                              color:
                                                              Colors.white,
                                                              width: 1)),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          Icon(
                                                            Icons.share,
                                                            size: 35,
                                                            color: Colors.white,
                                                          ),
                                                          Text(
                                                            'Share',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 24),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.1,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .pushNamed('/quote');
                                                    },
                                                    child: Container(
                                                      height: height * 0.06,
                                                      width: width * 0.4,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                          border: Border.all(
                                                              color:
                                                              Colors.white,
                                                              width: 1)),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          Icon(
                                                            Icons.cancel,
                                                            size: 35,
                                                            color: Colors.white,
                                                          ),
                                                          Text(
                                                            'Cancel',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 24),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.share,
                                      size: 40,
                                      color: selectColor,
                                    )),
                                SizedBox(
                                  width: width * 0.04,
                                ),
                                IconButton(
                                    onPressed: () async {
                                      showDialog(
                                        context: context,
                                        builder: (context) => Dialog.fullscreen(
                                          backgroundColor: Colors.black,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: RepaintBoundary(
                                                  key: imgKey,
                                                  child: Container(
                                                      height: double.infinity,
                                                      width: double.infinity,
                                                      alignment:
                                                      Alignment.center,
                                                      decoration: BoxDecoration(
                                                          image:
                                                          DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                '$selectedTheme'),
                                                          )),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Text(
                                                            textAlign: align,
                                                            '${catModel!.quoteModelList[index].quote}',
                                                            maxLines: 9,
                                                            overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                            style: TextStyle(
                                                              letterSpacing:
                                                              0.7,
                                                              color:
                                                              selectColor,
                                                              fontSize: 38,
                                                              fontFamily:
                                                              ('$selectedFontFamily'),
                                                            ),
                                                          ),
                                                          Text(
                                                            textAlign: align,
                                                            '- ${catModel!.quoteModelList[index].author}',
                                                            maxLines: 2,
                                                            overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                            style: TextStyle(
                                                              letterSpacing:
                                                              0.7,
                                                              color:
                                                              selectColor,
                                                              fontSize: 30,
                                                              fontFamily:
                                                              ('${selectedFontFamily}'),
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () async {
                                                      RenderRepaintBoundary
                                                      boundary = imgKey
                                                          .currentContext!
                                                          .findRenderObject()
                                                      as RenderRepaintBoundary;
                                                      ui.Image image =
                                                      await boundary
                                                          .toImage();
                                                      ByteData? byteData =
                                                      await image.toByteData(
                                                          format: ui
                                                              .ImageByteFormat
                                                              .png);
                                                      Uint8List img = byteData!
                                                          .buffer
                                                          .asUint8List();

                                                      final path =
                                                      await getApplicationDocumentsDirectory();
                                                      final file = File(
                                                          "${path.path}/img.png");
                                                      await file.writeAsBytes(img);

                                                      int location =
                                                          WallpaperManager
                                                              .BOTH_SCREEN; //can be Home/Lock Screen
                                                      bool result =
                                                      await WallpaperManager
                                                          .setWallpaperFromFile(
                                                          file.path,
                                                          location);
                                                    },
                                                    child: Container(
                                                      height: height * 0.06,
                                                      width: width * 0.6,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                          border: Border.all(
                                                              color:
                                                              Colors.white,
                                                              width: 1)),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                        children: [
                                                          Icon(
                                                            Icons.wallpaper,
                                                            size: 32,
                                                            color: Colors.white,
                                                          ),
                                                          Text(
                                                            'Set as Wallpaper',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 20),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.1,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .pushNamed('/quote');
                                                    },
                                                    child: Container(
                                                      height: height * 0.06,
                                                      width: width * 0.14,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(12),
                                                          border: Border.all(
                                                              color:
                                                              Colors.white,
                                                              width: 1)),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Icon(
                                                            Icons.cancel,
                                                            size: 35,
                                                            color: Colors.white,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.wallpaper,
                                      size: 40,
                                      color: selectColor,
                                    )),
                                SizedBox(
                                  width: width * 0.04,
                                ),
                                InkWell(
                                    onTap: () {
                                      Clipboard.setData(ClipboardData(
                                          text:
                                          '${catModel!.quoteModelList[index].quote}'));
                                    },
                                    child: Icon(
                                      Icons.copy,
                                      size: 40,
                                      color: selectColor,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 38, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/to');
              },
              child: Container(
                height: height * 0.052,
                width: width * 0.26,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.space_dashboard,
                      size: 22,
                      color: selectColor,
                    ),
                    SizedBox(
                      width: width * 0.005,
                    ),
                    Text(
                      'Topics',
                      style: TextStyle(color: selectColor, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/theme');
              },
              child: Container(
                height: height * 0.0769,
                width: width * 0.28,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.text_fields,
                          size: 22,
                          color: selectColor,
                        ),
                        SizedBox(
                          width: width * 0.005,
                        ),
                        Text(
                          'fonts',
                          style: TextStyle(color: selectColor, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.content_copy_rounded,
                          size: 22,
                          color: selectColor,
                        ),
                        SizedBox(
                          width: width * 0.005,
                        ),
                        Text(
                          'Themes',
                          style: TextStyle(color: selectColor, fontSize: 18),
                        )
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
                height: height * 0.053,
                width: width * 0.28,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      size: 22,
                      color: selectColor,
                    ),
                    SizedBox(
                      width: width * 0.005,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(color: selectColor, fontSize: 18),
                    )
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