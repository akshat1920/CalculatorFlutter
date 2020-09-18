import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'home_page.dart';

import 'package:flutter/material.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

void main() => runApp(Weather());

class Weather extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Weather> {
  String path;

  @override
  initState() {
    loadPdf();
    super.initState();
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/teste.pdf');
  }

  Future<File> writeCounter(Uint8List stream) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsBytes(stream);
  }

  Future<Uint8List> fetchPost() async {
    final response = await http.get(
        'https://www.yr.no/place/India/Gujarat/Vadodara/forecast.pdf');
    final responseJson = response.bodyBytes;

    return responseJson;
  }

  loadPdf() async {
    writeCounter(await fetchPost());
    path = (await _localFile).path;

    if (!mounted) return;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: (){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage())
      );

    },
        child: Icon(
          Icons.arrow_back,
        ),  ),
          title: Text('Weather'),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              if (path != null)
                Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  child: PdfViewer(
                    filePath: path,
                  ),
                )
              else
                Center(
                    child: CircularProgressIndicator(),

                )

            ],
          ),
        ),
      ),
    );
  }
}