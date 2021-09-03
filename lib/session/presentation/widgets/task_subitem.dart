import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaskSubitem extends StatelessWidget {
  const TaskSubitem(
      {Key? key, required this.title, required this.value, required this.theme, this.isLink = false, this.onTap})
      : super(key: key);

  final String title;
  final String value;
  final AppTheme theme;
  final bool isLink;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: Text(
            title,
            textAlign: TextAlign.end,
            style: theme.textStyleBody1Thin,
          ),
        ),
        SizedBox(width: theme.defaultMargin),
        Flexible(
          flex: 5,
          child: isLink
              ? RichText(
                  text: TextSpan(
                    style: theme.textStyleBody1Link,
                    text: value,
                    recognizer: TapGestureRecognizer()..onTap = onTap,
                  ),
                )
              : Text(
                  value,
                  style: theme.textTheme.bodyText1,
                ),
        ),
      ],
    );
  }
}
