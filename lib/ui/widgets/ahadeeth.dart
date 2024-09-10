import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/hadeeth_details_screen/hadeeth_content.dart';
import 'package:islami/ui/widgets/hadeeth_title_widget.dart';
import '../../model/hadeeth_model.dart';
class AhadeethWidget extends StatefulWidget {
   AhadeethWidget({super.key});
  @override
  State<AhadeethWidget> createState() => _AhadeethWidgetState();
}
class _AhadeethWidgetState extends State<AhadeethWidget> {
  @override
  Widget build(BuildContext context) {
    if(hadeeth.isEmpty){
      loadAhadethFile();
    }
    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/hadith_header.png')),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.symmetric(horizontal: BorderSide(
              color:Theme.of(context).primaryColor,
              width: 2
            )),
          ),
            child: const Text('احاديث',style: TextStyle(fontSize: 24,color: Colors.black),)),
        Expanded(flex: 3,
          child: hadeeth.isEmpty?const Center(child: CircularProgressIndicator(),):ListView.separated(itemBuilder:(context,index){
            return InkWell(onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>HadeethContentScreen(hadethmodel: hadeeth[index],)));
            },child: HadeethTitleWidget(hadeeth: hadeeth[index],));
          }, separatorBuilder:(context,index)=>Container(
            margin:const EdgeInsets.all(5),
            width: double.infinity,
            height: 2,
            color: Theme.of(context).primaryColor,
          ), itemCount:hadeeth.length),
        )
      ],
    );
  }

  List<HadeethModel>hadeeth=[];

  void loadAhadethFile()async{
    String ahadethContent=await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>ahadethSeparator=ahadethContent.trim().split('#');
    for(int i=0;i<ahadethSeparator.length;i++){
      List<String>hadeth=ahadethSeparator[i].trim().split("\n");
      String hadethTitle=hadeth[0];
      hadeth.removeAt(0);
      String hadethContent=hadeth.join(" ");
      hadeeth.add(HadeethModel(title:hadethTitle,content: hadethContent));
    }
    setState(() {
      
    });
  }
}
