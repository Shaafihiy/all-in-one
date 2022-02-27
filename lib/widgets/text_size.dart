import 'package:flutter/cupertino.dart';

class SizedText extends StatelessWidget {
  final String text;
  final Color color;
  const SizedText({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 11,
            color: color,
            fontWeight: FontWeight.w600,
          ),
          maxLines: 1,
          softWrap: false,
          overflow: TextOverflow.clip,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ));
  }
}
