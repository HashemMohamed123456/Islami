import 'package:flutter/material.dart';
import 'package:islami/model/hadeeth_model.dart';
class HadeethContentScreen extends StatelessWidget {
  final HadeethModel? hadethmodel;
  const HadeethContentScreen({super.key,this.hadethmodel});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/bg3.png'))
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadethmodel?.title??""),
        ),
        body:  Column(
          children: [
            Expanded(
              child: Card(
                margin: const EdgeInsets.all(10),
                elevation: 10,
                color: Colors.white,
                child: SingleChildScrollView
                  (child: Text(hadethmodel?.content??"",style: const TextStyle(fontSize: 20,),textDirection: TextDirection.rtl,))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
