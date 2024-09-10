import 'package:flutter/material.dart';
import 'package:islami/model/hadeeth_model.dart';
class HadeethTitleWidget extends StatelessWidget {
  final HadeethModel? hadeeth;
  const HadeethTitleWidget({super.key,this.hadeeth});

  @override
  Widget build(BuildContext context) {
    return Text(hadeeth?.title??'',textAlign:TextAlign.center,style:const TextStyle(
      fontSize: 18
    ),);
  }
}
