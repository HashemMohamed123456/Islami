import 'package:flutter/material.dart';
class QuranTitleWidget extends StatelessWidget {
 final  String surahName;
  final int versesNumber;
 final void Function()? onTap;
  const QuranTitleWidget({super.key,required this.versesNumber,required this.surahName,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(versesNumber.toString(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          Text(surahName,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        ],
      ),
    );
  }
}
