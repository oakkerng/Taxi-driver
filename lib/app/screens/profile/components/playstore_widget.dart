import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlayStoreWidget extends StatelessWidget {
  const PlayStoreWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.googlePlay,
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
              "Rate us on Play Store",
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
