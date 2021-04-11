import 'package:burcflutter/burc_detay.dart';
import 'package:burcflutter/burc_listesi.dart';
import 'package:flutter/material.dart';
import 'burc_detay.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Burc Rehberi',
      initialRoute: "/burcListesi",
      routes: {
        "/":( context)=> BurcListesi(),
        "/burcListesi": (context)=> BurcListesi(),


      },
      onGenerateRoute: (RouteSettings settings){
        List<String> pathElemanlari=   settings.name!.split ("/");
        /*
        * Öncelikle if içerisinde "burcDetay" bu kısmı hatalı yazmışsın.
        * pathElemanlari[1] bunun içinde gelen eleman "burcDetay" tam olarak bu. Yani bu olursa eşitlik sağlanıyor ve çalışıyor
        * ama senin yazdığın şey " BurcRehberi" yani hem başta bir karakter boşluk var hem de büyük harf böyle olunca içerik uymuyor ve null atıyor.
        * 2. şey ise
        * */
        if(pathElemanlari[1]=="burcDetay"){
          //burada return yazmamışsın. Yani sen bir rota oluşturuyorsun evet ama onu geriye bildirmediğin için return olmuyor ve iften çıkıyor
          return MaterialPageRoute(builder: (context)=> BurcDetay(int.parse (pathElemanlari[2])));
        }
        //buradaki return null çalışıyor yine.
        // o yüzden oluşturulan rotayı return ile döndürdük.
        // bı sayfa böyle. Okey?
        return null;
      },
      theme: ThemeData(
      
        primarySwatch: Colors.purple,

      ),

    );
  }
}



 // home: BurcListesi()eger initialroute belirlenmişse home sayfası etkisiz olmalı //
