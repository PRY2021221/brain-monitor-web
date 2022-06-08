import 'package:brain_monitor/app/utils/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Texts extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign alignment;
  final FontWeight fontWeight;
  final bool underline;
  final Color color;
  final double height;
  final int maxLines;
  final TextOverflow textOverflow;
  final TextStyle? style;
  const Texts({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.underline = false,
    this.alignment = TextAlign.left,
    this.height = 1,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    required this.color,
    this.style,
  }) : super(key: key);

  const Texts.bold({
    Key? key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.style,
  })  : fontWeight = FontWeight.bold,
        super(key: key);

  const Texts.w400({
    Key? key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.style,
  })  : fontWeight = FontWeight.w400,
        super(key: key);

  const Texts.w500({
    Key? key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.color = Palette.black,
    this.style,
  })  : fontWeight = FontWeight.w500,
        super(key: key);
  const Texts.w600({
    Key? key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.style,
  })  : fontWeight = FontWeight.w600,
        super(key: key);

  const Texts.w700({
    Key? key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.style,
  })  : fontWeight = FontWeight.w700,
        super(key: key);

  const Texts.normal({
    Key? key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.style,
  })  : fontWeight = FontWeight.normal,
        super(key: key);

  const Texts.w800({
    Key? key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.style,
  })  : fontWeight = FontWeight.w800,
        super(key: key);

  const Texts.w900({
    Key? key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.style,
  })  : fontWeight = FontWeight.w900,
        super(key: key);

  const Texts.appBarTitle({
    Key? key,
    required this.text,
    this.height = 1,
    required this.fontSize,
    this.alignment = TextAlign.left,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.style,
  })  : fontWeight = FontWeight.w500,
        underline = false,
        color = Palette.white,
        super(key: key);

  static String hideEmailFunction(String text) {
    final aux = text.split("@");
    return "${aux[0][0]}*******${aux[0][aux.length - 1]}@${aux[1]}";
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      style: (style ?? GoogleFonts.roboto()).copyWith(
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight,
        decoration: underline ? TextDecoration.underline : TextDecoration.none,
      ),
      maxLines: maxLines,
      overflow: textOverflow,
      softWrap: true,
    );
  }
}
