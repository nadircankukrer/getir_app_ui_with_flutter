import 'package:flutter/material.dart';
import 'package:getir_app/kategoriler.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {

  Future<List<Kategoriler>> kategorileriYukle () async {
    var kategorilerListesi = <Kategoriler> [];
    var k1 = Kategoriler(id: 1, ad: "Su & İçecek", resim: "su_icecek.png");
    var k2 = Kategoriler(id: 2, ad: "Meyve & Se...", resim: "meyve_sebze.png");
    var k3 = Kategoriler(id: 3, ad: "Fırından", resim: "firindan.png");
    var k4 = Kategoriler(id: 4, ad: "Süt Ürünleri", resim: "sut_urunleri.png");
    var k5 = Kategoriler(id: 5, ad: "Atıştırmalık", resim: "atistirmalik.png");
    var k6 = Kategoriler(id: 6, ad: "Dondurma", resim: "dondurma.png");
    var k7 = Kategoriler(id: 7, ad: "Temel Gıda", resim: "temel_gida.png");
    var k8 = Kategoriler(id: 8, ad: "Kahvaltılık", resim: "kahvaltilik.png");
    var k9 = Kategoriler(id: 9, ad: "Yiyecek", resim: "yiyecek.png");
    var k10 = Kategoriler(id: 10, ad: "Fit & Form", resim: "fit_form.png");
    var k11 = Kategoriler(id: 11, ad: "Kişisel Bakım", resim: "kisisel_bakim.png");
    var k12 = Kategoriler(id: 12, ad: "Ev Bakım", resim: "ev_bakim.png");
    var k13 = Kategoriler(id: 13, ad: "Ev & Yaşam", resim: "ev_yasam.png");
    var k14 = Kategoriler(id: 14, ad: "Teknoloji", resim: "teknoloji.png");
    var k15 = Kategoriler(id: 15, ad: "Evcil Hayvan", resim: "evcil_hayvan.png");
    var k16 = Kategoriler(id: 16, ad: "Bebek", resim: "bebek.png");
    var k17 = Kategoriler(id: 17, ad: "Cinsel Sağlık", resim: "cinsel_saglik.png");
    kategorilerListesi.add(k1);
    kategorilerListesi.add(k2);
    kategorilerListesi.add(k3);
    kategorilerListesi.add(k4);
    kategorilerListesi.add(k5);
    kategorilerListesi.add(k6);
    kategorilerListesi.add(k7);
    kategorilerListesi.add(k8);
    kategorilerListesi.add(k9);
    kategorilerListesi.add(k10);
    kategorilerListesi.add(k11);
    kategorilerListesi.add(k12);
    kategorilerListesi.add(k13);
    kategorilerListesi.add(k14);
    kategorilerListesi.add(k15);
    kategorilerListesi.add(k16);
    kategorilerListesi.add(k17);
    return kategorilerListesi;

  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Kategoriler>>(
      future: kategorileriYukle(),
      builder:(context, snapshot){
        if(snapshot.hasData){
          var kategorilerListesi = snapshot.data;
          return GridView.builder(
            itemCount: kategorilerListesi!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 1 / 1),
            itemBuilder: (context, indeks){
              var kategori = kategorilerListesi[indeks];
              return 
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, ),
                        child: Card(
                          child: Image.asset("images/${kategori.resim}", width: 65,),
                        ),
                      ),
                    ],
                  ),
                  Text(kategori.ad, style: const TextStyle(fontSize: 12),)
                ],
              );
            },
            
          );
        } else{
          return const Center();
        }
      } ,
    );
  }
}