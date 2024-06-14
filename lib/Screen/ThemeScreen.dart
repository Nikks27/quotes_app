import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/utils/global.dart';


class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff000000),
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/quote');
            },
            child: Icon(
              CupertinoIcons.left_chevron,
              size: 24,
              color: Colors.white,
            )),
        title: Text(
          'Themes',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('$selectedTheme'),
            fit: BoxFit.cover,
            opacity: 0.8,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * 0.12,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage('assets/theme/pre.jpg'),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upgrade to Premium',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          CupertinoIcons.right_chevron,
                          color: Colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        theme.length,
                            (index) => Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedTheme = theme[index];
                              });
                              Navigator.of(context).pushNamed('/quote');
                            },
                            child: Container(
                              height: height * 0.44,
                              width: width * 0.52,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage('${theme[index]}'),
                                    fit: BoxFit.cover),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'ABCD',
                                style: TextStyle(
                                    color: selectColor,
                                    fontFamily: '$selectedFontFamily',
                                    fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fonts',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 28),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              fontFamily.length,
                                  (index) => Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedFontFamily = fontFamily[index];
                                    });
                                    Navigator.of(context).pushNamed('/quote');
                                  },
                                  child: Container(
                                    height: height * 0.05,
                                    width: width * 0.34,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 3, right: 3),
                                      child: Text(
                                        '${fontFamily[index]}',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: selectColor,
                                            fontSize: 20,
                                            fontFamily: '${fontFamily[index]}'),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Font Colors',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 28)),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              colorList.length,
                                  (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectColor = colorList[index];
                                  });
                                  Navigator.of(context).pushNamed('/quote');
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, right: 12),
                                  height: height * 0.078,
                                  width: width * 0.16,
                                  decoration: BoxDecoration(
                                    color: colorList[index],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Text Alignment',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 28)),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  align = TextAlign.left;
                                });
                                Navigator.of(context).pushNamed('/quote');
                              },
                              child: Icon(
                                CupertinoIcons.text_alignleft,
                                color: Colors.white,
                                size: 42,
                              ),
                            ),
                            SizedBox(width: width*0.1,),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  align = TextAlign.center;
                                });
                                Navigator.of(context).pushNamed('/quote');
                              },
                              child: Icon(
                                CupertinoIcons.text_aligncenter,
                                color: Colors.white,
                                size: 42,
                              ),
                            ),
                            SizedBox(width: width*0.1,),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  align = TextAlign.right;
                                });
                                Navigator.of(context).pushNamed('/quote');
                              },
                              child: Icon(
                                CupertinoIcons.text_alignright,
                                color: Colors.white,
                                size: 42,
                              ),
                            ),
                            SizedBox(height: height*0.1,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}