import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class SurahScreen extends StatefulWidget {
  final String nameOfSurah;
  final int index;
   const SurahScreen({super.key,required this.nameOfSurah,required this.index});

  @override
  State<SurahScreen> createState() => _SurahScreenState();
}

class _SurahScreenState extends State<SurahScreen> {
  @override
  Widget build(BuildContext context) {
    if(versesLines.isEmpty){readQuranFile(widget.index);};
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg3.png')
        )
      ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.nameOfSurah),
          ),
        body:
          Card(
            margin: const EdgeInsets.all(10),
            elevation: 10,
           color: Colors.white,
           child: versesLines.isNotEmpty?Center(
             child: ListView.separated(itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('${versesLines[index]}(${index+1})',textDirection: TextDirection.rtl,style: const TextStyle(fontSize: 20),),
               );
             }, separatorBuilder:(context,index)=>const SizedBox(height:2,),
                 itemCount:versesLines.length)
           ):const Center(
             child: CircularProgressIndicator(),
           ),
          ),));
  }

  List<String>versesLines=[];

  void readQuranFile(int index) async{
    String surah= await rootBundle.loadString('assets/files/${index+1}.txt');
    versesLines=surah.split("\n");
   setState(() {

   });
  }
}
