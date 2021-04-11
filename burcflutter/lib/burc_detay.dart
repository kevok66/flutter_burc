
import 'package:burcflutter/burc_listesi.dart';
import 'package:burcflutter/models/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {

  int gelenIndex;
  Burc secilenBurc=BurcListesi.tumBurclar[0];
   BurcDetay(this.gelenIndex);
  @override
  Widget build(BuildContext context) {
    secilenBurc=BurcListesi.tumBurclar[gelenIndex];

    return Scaffold(
      body: CustomScrollView(
        primary: true,
        slivers: <Widget>[

           Container(
          child: SliverAppBar(
         expandedHeight: 250,
         pinned:true,
          primary:true,
          backgroundColor:Colors.purpleAccent,
           flexibleSpace: FlexibleSpaceBar(
             background: Image.asset("images/"+ secilenBurc.burcBuyukResmi, fit: BoxFit.cover,),
               title: Text(secilenBurc.burcAdi +" ve Özellikleri" , ),
             centerTitle: true,
           )
           )
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
              child:Text(secilenBurc.burcDetay+ secilenBurc.burcDetay,style:TextStyle(fontSize: 18, color :Colors.black,)),
            ),
          )


          ],
        ),
      );
  }
}


