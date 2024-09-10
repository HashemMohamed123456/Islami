import 'package:flutter/material.dart';
class SebhaWidget extends StatefulWidget {
  @override
  State<SebhaWidget> createState() => _SebhaWidgetState();
}

class _SebhaWidgetState extends State<SebhaWidget> with SingleTickerProviderStateMixin{
  int tasbeha=0;
  String allahAkbar='الله اكبر';
  String alHumdulilah='الحمد لله';
  String tasbehaa='سبحان الله';
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 2 * 3.14159).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  void _rotateImage() {
    if (_controller.isAnimating) return;
    if (_controller.status == AnimationStatus.completed) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(alignment: Alignment.topCenter,
          children: [
            Image.asset('assets/images/head of seb7a.png'),
            Material(color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                onTap: (){
                  _rotateImage();
                  tasbehNumber();
                },
                  child: AnimatedBuilder(
                      animation: _animation,
                      builder: (context,index){
                        return Transform.rotate(angle: _animation.value,
                            child: Image.asset('assets/images/body of seb7a.png')
                        );
                      },
                  )
              ),
            ),
          ],
        ),
        const Text('عدد التسبيحات',style: TextStyle(color: Colors.black,fontSize:30,fontWeight: FontWeight.w900),),
        const SizedBox(height: 20,),
        Container(padding:const EdgeInsets.symmetric(horizontal: 40,vertical:10),
          decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
            color:Theme.of(context).colorScheme.secondary
          ),
            child: Text(tasbeha.toString(),style: const TextStyle(color: Colors.black,fontSize:30,fontWeight: FontWeight.w900),)),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Container(padding:const EdgeInsets.symmetric(horizontal: 40,vertical:10),
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
              color:Theme.of(context).primaryColor
            ),
              child: Text(tasbehaa,style: const TextStyle(color: Colors.black,fontSize:30,fontWeight: FontWeight.w900),)),
        ),
      ],
    );
  }
  void tasbehNumber(){
    tasbeha++;
    if(tasbeha==34 && tasbehaa=='سبحان الله'){
      tasbehaa=alHumdulilah;
      tasbeha=0;
    }else if(tasbeha==34 && tasbehaa==alHumdulilah){
      tasbehaa=allahAkbar;
      tasbeha=0;
    }else if(tasbeha==34 && tasbehaa==allahAkbar){
      allahAkbar='سبحان الله';
      tasbehaa=allahAkbar;
      tasbeha=0;
      allahAkbar='الله اكبر';
    }
    setState(() {

    });
  }

}
