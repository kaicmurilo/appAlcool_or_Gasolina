import 'package:flutter/material.dart';

import 'loading-button.widget.dart';

class Success extends StatelessWidget {
  var result = "";
  Function reset;

  Success({
    @required this.result,
    @required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Text(
            result,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20,
                fontFamily: "Big Shoulders Display"),
            textAlign: TextAlign.center,
          ),
          LoadingButton(
            busy: false,
            func: reset,
            invert: true,
            text: "new",
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
