import 'package:flutter/material.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.info,
            size: 25.0,
          ),
          SizedBox(
            width: 16,
          ),
          GestureDetector(
            onTap: () {
              // _showLanguageChoiceDialog(context);
            },
            child: Text(
              "About us",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
