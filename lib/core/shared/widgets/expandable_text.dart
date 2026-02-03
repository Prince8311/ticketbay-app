import 'package:flutter/material.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class InlineExpandableText extends StatefulWidget {
  final String text;
  final int trimLines;

  const InlineExpandableText({
    super.key,
    required this.text,
    this.trimLines = 2,
  });

  @override
  State<InlineExpandableText> createState() => _InlineExpandableTextState();
}

class _InlineExpandableTextState extends State<InlineExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final textStyle = const TextStyle(
          fontSize: 11,
          fontFamily: FontFamily.poppins,
          color: Colors.black,
          height: 1.55,
        );

        final moreStyle = const TextStyle(
          fontSize: 11,
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w500,
          color: ColorName.redColor1,
          height: 1.55,
        );

        // Full text
        TextPainter fullPainter = TextPainter(
          text: TextSpan(text: widget.text, style: textStyle),
          maxLines: widget.trimLines,
          textDirection: TextDirection.ltr,
        );

        fullPainter.layout(maxWidth: constraints.maxWidth);

        // If fits in lines → return normal text
        if (!fullPainter.didExceedMaxLines) {
          return Text(widget.text, style: textStyle);
        }

        if (isExpanded) {
          // Expanded: full text + inline "...less"
          return GestureDetector(
            onTap: () => setState(() => isExpanded = false),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: widget.text, style: textStyle),
                  TextSpan(text: " …less", style: moreStyle),
                ],
              ),
            ),
          );
        }

        // COLLAPSED → find trimmed version
        String trimmed = widget.text;

        while (true) {
          trimmed = trimmed.substring(0, trimmed.length - 1);

          TextPainter tp = TextPainter(
            text: TextSpan(
              text: "$trimmed…more",
              style: textStyle,
              children: [
                TextSpan(text: "…more", style: moreStyle),
              ],
            ),
            maxLines: widget.trimLines,
            textDirection: TextDirection.ltr,
          );

          tp.layout(maxWidth: constraints.maxWidth);

          if (!tp.didExceedMaxLines) break;
        }

        // COLLAPSED DISPLAY
        return GestureDetector(
          onTap: () => setState(() => isExpanded = true),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(text: trimmed, style: textStyle),
                TextSpan(text: "…more", style: moreStyle),
              ],
            ),
          ),
        );
      },
    );
  }
}
