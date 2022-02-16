import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class QrLinkGenerator extends StatelessWidget {
  ///The dimension is a string and should be passed like this "150x150"
  final String? dimension;

  ///This is the backgroundColor of the qr code should be passed in hex format like this: "FFFFFF" <- this is white color
  final String? backgroundColor;

  ///This is the color of the line of the qr code should be passed in hex format like this "000000" <- this is the black color
  final String? lineColor;

  ///This is the only required argument, this can contain everything like url or some word
  final String? url;
  const QrLinkGenerator(
      {Key? key,
      this.dimension,
      this.backgroundColor,
      this.lineColor,
      required this.url})
      : super(key: key);

  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(
          "https://api.qrserver.com/v1/create-qr-code/?size=${dimension ?? '100x100'}&data=$url&bgcolor=${backgroundColor ?? 'FFFFFF'}&color=${lineColor ?? '000000'}"),
    );
  }
}
