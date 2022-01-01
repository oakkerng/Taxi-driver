import 'package:flutter/cupertino.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FacebookPageWidget extends StatelessWidget {
  const FacebookPageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.facebook,
            size: 25,
          ),
          SizedBox(
            width: 16,
          ),
          GestureDetector(
            onTap: () {
              // _showLanguageChoiceDialog(context);
            },
            child: Text(
              "Like Our Facebook Page",
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
