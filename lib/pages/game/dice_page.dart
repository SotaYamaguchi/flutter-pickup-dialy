import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spajam_2020/state/index.dart';
import 'package:spajam_2020/widgets/index.dart';

class DicePage extends StatelessWidget with RouteAware {
  static const routeName = '/game/dice';

  @override
  Widget build(BuildContext context) {
    final wp = MediaQuery.of(context).size.width;
    final hp = MediaQuery.of(context).size.height;

    final _currentDiceNum =
        context.select<DiceState, int>((state) => state.currentDiceNum);
    final _showDiceNum =
        context.select<DiceState, int>((state) => state.showDiceNum);
    final _showButton =
        context.select<DiceState, bool>((state) => state.showButton);
    final _showCurrentDiceNum =
        context.select<DiceState, bool>((state) => state.showCurrentDiceNum);
    final diceStateController =
        Provider.of<DiceStateController>(context, listen: true);

    void _rollDice() async {
      final list = [1, 1, 1, 2, 3];
      final _random = Random();
      final currentDiceNum = list[_random.nextInt(list.length)];
      //change show card count state
      diceStateController.changeShowNum();
      // show  random card count state
      await diceStateController?.rollDice(currentDiceNum);

      Timer(const Duration(milliseconds: 2500), diceStateController.closePage);
    }

    return WillPopScope(
        onWillPop: () async {
          if (Navigator.of(context).userGestureInProgress)
            return false;
          else
            return true;
        },
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(hp * 0.057),
            child: Header(
              title: 'ダイス',
              leftIcon: 'arrow',
              leadingFn: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Center(
            child: Container(
              margin:
                  EdgeInsets.fromLTRB(wp * 0.05, hp * 0.2, wp * 0.05, hp * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      '${_showCurrentDiceNum ? _currentDiceNum : _showDiceNum}',
                      style: TextStyle(fontSize: wp * 0.2),
                    ),
                  ),
                  Expanded(
                    child: _showCurrentDiceNum
                        ? Image.asset('assets/dice/dice-$_currentDiceNum.png')
                        : Image.asset('assets/dice/dice-$_showDiceNum.png'),
                  ),
                  RaisedButton(
                    onPressed: _showButton ? _rollDice : null,
                    child: const Text('振る'),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.orange[400],
        ));
  }
}
