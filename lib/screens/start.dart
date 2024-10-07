import 'package:flutter/material.dart';
import 'package:tabb/tab.dart';
class StartScreen extends StatelessWidget{


@override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: buildAppBar(context),
      endDrawer: buildEndDrawer(),
      body: Center(
        child: Text("메인화면"),
      )
    );

  }
}