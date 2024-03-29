import 'package:flutter/material.dart';
import 'package:name_checking/src/utils/constant.dart';
import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class InsertDataPage extends StatefulWidget {
  @override
  _InsertDataPageState createState() => _InsertDataPageState();
}

class _InsertDataPageState extends State<InsertDataPage> {
  File _image;

  Future getImageFromCam() async { // for camera
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Future getImageFromGallery() async {// for gallery
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constant.INSERT),
        centerTitle: true,
        backgroundColor: Constant.BG_COLOR,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          ),
                      hintText: 'กรุณาป้อนชื่อ',
//              helperText: 'Keep it short, this is just a demo.',
                      labelText: 'ชื่อ',
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                      ),
                ),
                buildSizedBox(),
                TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          ),
                      hintText: 'กรุณาป้อนนามสุล',
//              helperText: 'Keep it short, this is just a demo.',
                      labelText: 'นามสกุล',
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                      ),
                ),
                buildSizedBox(),
                TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          ),
                      hintText: 'กรุณาป้อนรหัสนักศึกษา',
//              helperText: 'Keep it short, this is just a demo.',
                      labelText: 'รหัสนักศึกษา',
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                      ),
                ),
                buildSizedBox(),
                TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          ),
                      hintText: 'กรุณาป้อนสาขาวิชา',
//              helperText: 'Keep it short, this is just a demo.',
                      labelText: 'สาขาวิชา',
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                      ),
                ),
                buildSizedBox(),
                TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          ),
                      hintText: 'กรุณาป้อนคณะ',
//              helperText: 'Keep it short, this is just a demo.',
                      labelText: 'คณะ',
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                      ),
                ),
                buildSizedBox(),
                TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(),
                      hintText: 'กรุณาป้อนชั้นปี',
//              helperText: 'Keep it short, this is just a demo.',
                      labelText: 'ชั้นปี',
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                      ),
                ),
                buildSizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
//                      width: MediaQuery.of(context).size.width,
                      height: 100.0,
                      width: 300.0,
                      child: Center(
                        child: _image == null
                            ? Text('กรุณาเลือกรูปภาพ')
                            : Image.file(_image),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: getImageFromCam,
                      tooltip: 'Pick Image',
                      child: Icon(Icons.add_a_photo),
                    ),
//                    FloatingActionButton(
//                      onPressed: getImageFromGallery,
//                      tooltip: 'Pick Image',
//                      child: Icon(Icons.wallpaper),
//                    ),
                  ],
                ),
                buildSizedBox(),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Constant.BG_COLOR,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5),
                    ),
                    child: Text(
                      "ยืนยัน",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox buildSizedBox() {
    return SizedBox(
      height: 13,
    );
  }
}
