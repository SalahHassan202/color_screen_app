import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
 final Color screenColor ;
  const ColorsPage(this.screenColor ,{super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color:screenColor,
    );
  }
}