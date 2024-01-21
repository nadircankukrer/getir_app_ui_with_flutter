import 'package:flutter/material.dart';
import 'package:getir_app/card_widget.dart';
import 'package:getir_app/colors.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: anaRenk,
        title:  Image.asset(
            "images/logo.png",
            width: 70,
          ),
        centerTitle: true,
      ),
    body: 
    Column(
      children: [
       Container(color: ikincilRenk,
         child:  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               SizedBox( width: 285, height: 50,
                  child: FractionallySizedBox(widthFactor: 1.2, heightFactor: 1.140,
                    child: Card(color: background,
                      child: const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      
                        children: [
                          Text("Teslimat Adresi Belirleyin", style: TextStyle(fontSize: 16),),
                          Icon(Icons.keyboard_arrow_down_outlined),
                           Padding(
                            padding: EdgeInsets.all(14.0),
                          ),
                        ],
                      ),
                      
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text("TVS", style:TextStyle(color: anaRenk, fontSize: 12) ,),
                    Text("30+dk", style: TextStyle(color: anaRenk, fontWeight: FontWeight.bold),)
                  ],
                ), 
            ],
          ),
       ),
        Padding(
          padding: const EdgeInsets.only(top:10.0),
          child: Container(width: 365,
            child: Image.asset("images/indirim.jpeg"),
          ),
        ),
       const Expanded(
          child: CardWidget(),

        ),
    ],
    ),

    bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon( Icons.home, size: 25,),label: "Anasayfa", ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Ara" ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Hesabım"),
            
        ],),
    );
  }
}

