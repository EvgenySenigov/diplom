import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DocScreen extends StatefulWidget {
  const DocScreen({
    Key? key,
  }) : super(key: key);

  final String title = 'Документация';

  @override
  State<DocScreen> createState() => _DocScreenState();
}

class _DocScreenState extends State<DocScreen> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  final PdfViewerController _pdfViewerController = PdfViewerController();

  @override
  Widget build(BuildContext context) {
    final path = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
        backgroundColor: const Color(0xffeae2d2),
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          actions: [
            IconButton(
              icon: Icon(
                Icons.zoom_in,
                color: Colors.white,
              ),
              onPressed: () {
                _pdfViewerController.zoomLevel =
                    _pdfViewerController.zoomLevel * 1.5;
              },
            ),
            IconButton(
              icon: Icon(
                Icons.zoom_out,
                color: Colors.white,
              ),
              onPressed: () {
                _pdfViewerController.zoomLevel =
                    _pdfViewerController.zoomLevel / 1.5;
              },
            ),
          ],
          title: Text(widget.title,
              textScaleFactor: 0.9,
              softWrap: true,
              maxLines: 3,
              textAlign: TextAlign.center),
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Color(0xfff1eada),
            boxShadow: [
              BoxShadow(
                color: Color(0x55000000),
                offset: Offset(0, 1),
                blurRadius: 0.5,
              ),
              BoxShadow(
                color: Color(0x50000000),
                offset: Offset(0, 1),
                blurRadius: 2,
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(2),
            ),
          ),
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(1),
          constraints: const BoxConstraints(minHeight: 300, minWidth: 300),
          alignment: Alignment.center,
          /*child:
          Scrollbar(
          isAlwaysShown: true,
          thickness: 10,
    trackVisibility: true,
    child: ListView(

    children: [
          Container
            (
            height: 1200,
          */child:  SfPdfViewer.asset(
                  path,
                  controller: _pdfViewerController,
                  enableDoubleTapZooming: true,
                  initialZoomLevel: 1.5,
                  enableTextSelection: true,
                  canShowScrollHead: true,
                  canShowScrollStatus: true,
                  scrollDirection: PdfScrollDirection.vertical,
                  key: _pdfViewerKey,

              ),
          ),



    );
  }
}
