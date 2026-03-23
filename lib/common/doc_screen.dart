import 'package:flutter/material.dart';
import 'package:pdfrx/pdfrx.dart';
import 'package:virtual_labs/common/style.dart';

class DocScreen extends StatefulWidget {
  const DocScreen({
    Key? key,
  }) : super(key: key);

  final String title = 'Документация';

  @override
  State<DocScreen> createState() => _DocScreenState();
}

class _DocScreenState extends State<DocScreen> {
  final PdfViewerController _pdfViewerController = PdfViewerController();

  @override
  Widget build(BuildContext context) {
    final path = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        backgroundColor: backColor,
        actions: [
          IconButton(
            iconSize: 36,
            icon: const Icon(
              Icons.zoom_in,
              color: Colors.black,
            ),
            onPressed: () {
              _pdfViewerController.setZoom(Offset.zero, _pdfViewerController.currentZoom*1.5);// zoomUp();
            },
          ),
          IconButton(
            iconSize: 36,
            icon: const Icon(
              Icons.zoom_out,
              color: Colors.black,
            ),
            onPressed: () {
              _pdfViewerController.setZoom(Offset.zero, _pdfViewerController.currentZoom/1.5);
            },
          ),
        ],
        title: Text(widget.title,
            softWrap: true,
            maxLines: 3,
            textAlign: TextAlign.center),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: backColor,
          boxShadow: const [
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
          borderRadius: const BorderRadius.all(
            Radius.circular(2),
          ),
        ),
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(1),
        constraints: const BoxConstraints(minHeight: 300, minWidth: 300),
        alignment: Alignment.center,
       child: PdfViewer.asset(path,
        controller: _pdfViewerController,),
      ),
    );
  }
}
