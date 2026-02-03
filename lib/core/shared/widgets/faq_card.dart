import 'package:flutter/material.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class FaqItem extends StatefulWidget {
  final String title;
  final String body;

  const FaqItem({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  State<FaqItem> createState() => _FaqItemState();
}

class _FaqItemState extends State<FaqItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 13, 16, 0),
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: ColorName.black.withAlpha(30),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: ColorName.black.withAlpha(30),
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // ------------------ HEADER ------------------
          InkWell(
            onTap: () {
              setState(() => isExpanded = !isExpanded);
            },
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: const EdgeInsets.fromLTRB(17, 13, 17, 13),
              decoration: BoxDecoration(
                color: isExpanded
                    ? ColorName.themeColor.withOpacity(0.15)
                    : ColorName.white,
                borderRadius: isExpanded
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )
                    : BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.poppins,
                        color: ColorName.black,
                      ),
                    ),
                  ),
                  AnimatedRotation(
                    duration: const Duration(milliseconds: 200),
                    turns: isExpanded ? 0.5 : 0.0,
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: ColorName.black,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ------------------ BODY ------------------
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: isExpanded
                ? Container(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.body,
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: FontFamily.poppins,
                        color: ColorName.black.withOpacity(0.8),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          )
        ],
      ),
    );
  }
}
