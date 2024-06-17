import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

TextEditingController fname = TextEditingController(text: 'abc');
TextEditingController lname = TextEditingController(text: 'abc');
TextEditingController mname = TextEditingController(text: 'abc');
TextEditingController mobile = TextEditingController(text: '1234567890');
TextEditingController email = TextEditingController(text: 'abc@gmail.com');
GlobalKey formKey = GlobalKey();

ImagePicker imagePicker = ImagePicker();
File? file;

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black12,
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
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                CircleAvatar(
                  radius: height * 0.09,
                  backgroundImage:
                  (file != null) ? FileImage(file!) : AssetImage('assets/PRO.jpg'),
                ),
                SizedBox(
                  height: height * 0.024,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () async {
                        XFile? xFileImage = await imagePicker.pickImage(
                            source: ImageSource.gallery);
                        setState(() {
                          file = File(xFileImage!.path);
                        });
                      },
                      child: Container(
                        height: height * 0.044,
                        width: width * 0.26,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo,
                              size: 22,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: width * 0.009,
                            ),
                            Text(
                              'Gallery',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        XFile? xFileImage = await imagePicker.pickImage(
                            source: ImageSource.camera);
                        setState(() {
                          file = File(xFileImage!.path);
                        });
                      },
                      child: Container(
                        height: height * 0.044,
                        width: width * 0.29,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt_rounded,
                              size: 22,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: width * 0.009,
                            ),
                            Text(
                              'Camera',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.024,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: fname,
                  keyboardType: TextInputType.name,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    label: Text('First Name'),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.024,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: mname,
                  keyboardType: TextInputType.name,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    label: Text('Middel Name'),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.024,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: lname,
                  keyboardType: TextInputType.name,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    label: Text('Last Name'),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.024,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: mobile,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    label: Text('Mobile No'),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.024,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email or Phone is required';
                    }
                    if (!value.contains('@gmail.com')) {
                      return 'Must Be Enter @gmail.com';
                    }
                    if (value.contains(' ')) {
                      return 'Do not enter the sapce';
                    }
                    if (RegExp(r'[A-Z]').hasMatch(value)) {
                      return 'Entre the must be upeercase requried';
                    }
                    if (value.toString() == '@gmail.com') {
                      return 'Example : abc@gmail.com';
                    }
                    if (value.length < 12) {
                      return 'Email must be at least 12 characters';
                    }
                  },
                  controller: email,
                  decoration: InputDecoration(
                    label: Text('Email'),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    hintText: 'Email',
                  ),
                  cursorColor: Colors.white,
                ),
                SizedBox(
                  height: height * 0.024,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Gender :',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                      activeColor: Colors.white,
                      value: 'Male',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    Text(
                      'Male',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Radio(
                      activeColor: Colors.white,
                      value: 'Female',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    Text('Female',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    Radio(
                      activeColor: Colors.white,
                      value: 'Other',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    Text('Other',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ],
                ),
                SizedBox(
                  height: height * 0.016,
                ),
                InkWell(
                  onTap: () {
                    setState(() {

                    });
                  },
                  child: Container(
                    height: height * 0.044,
                    width: width * 0.26,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Save',
                          style: TextStyle(color: Colors.white, fontSize: 18),
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
    );
  }
}

String gender = 'Male';