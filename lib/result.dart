import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'Successfully Completed';
    if (resultScore <= 10) {
      resultText = 'You are awesome and cool';
    } else if (resultScore <= 14) {
      resultText = 'Pretty Likeable';
    } else if (resultScore <= 17) {
      resultText = 'Strange';
    } else {
      resultText = 'You are ... bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset Quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler,
            
          ),
        ],
      ),
    );
  }
}
