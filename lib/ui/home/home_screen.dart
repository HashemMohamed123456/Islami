import 'package:flutter/material.dart';
import 'package:islami/ui/widgets/ahadeeth.dart';
import 'package:islami/ui/widgets/quran.dart';
import 'package:islami/ui/widgets/radio.dart';
import 'package:islami/ui/widgets/sebha.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentNavIndex=0;
  List<Widget>bottomNavigationIndexBody=[
    QuranWidget(),
    AhadeethWidget(),
    SebhaWidget(),
    RadioWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: const BoxDecoration(
      image:DecorationImage(image: AssetImage('assets/images/bg3.png'))
    ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentNavIndex,
          onTap: (index){
            setState(() {

            });
            currentNavIndex=index;
          },
          items:  [
            BottomNavigationBarItem(backgroundColor: Theme.of(context).colorScheme.primary,icon: const ImageIcon(AssetImage('assets/images/quran.png')),
            label: 'Quran'
            ),
            BottomNavigationBarItem(backgroundColor: Theme.of(context).colorScheme.primary,icon: ImageIcon(AssetImage('assets/images/quran-quran-svgrepo-com.png')),
                label: 'Ahadeeth'
            ), BottomNavigationBarItem(backgroundColor:Theme.of(context).colorScheme.primary,icon: ImageIcon(AssetImage('assets/images/sebha.png')),
            label: 'Sebha'
            ),
            BottomNavigationBarItem(backgroundColor: Theme.of(context).colorScheme.primary,icon: ImageIcon(AssetImage('assets/images/radio_blue.png')),
                label: 'Radio'
            ),
          ],
        ),
      body: bottomNavigationIndexBody[currentNavIndex],),
    );
  }
}
