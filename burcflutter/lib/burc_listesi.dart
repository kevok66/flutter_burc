
import 'package:burcflutter/utils/strings.dart';
import 'package:flutter/material.dart';
import 'models/burc.dart';

class BurcListesi extends StatelessWidget {
 static  List<Burc> tumBurclar=[];
  @override
  Widget build(BuildContext context) {
tumBurclar=verikaynaginiHazirla();

    return Scaffold(
      appBar: AppBar(
        title:Text("Burc Rehberi"),
      ),
      body: listeyiHazirla(),
    );
  }

  static List <Burc>verikaynaginiHazirla(){

    List<Burc> burclar = [];
    for (int i = 0; i < 12; i++) {
      String kucukResim = Strings.BURC_DOSYALARI[i] + "${i + 1}.png";
      String buyukResim = Strings.BURC_DOSYALARI[i] + "_buyuk${i + 1}.png";

      Burc eklenecekBurc = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.Genel_Ozellikleri[i],
          kucukResim,  buyukResim);
      burclar.add(eklenecekBurc);
    }
    return burclar;
  }

  Widget listeyiHazirla() {
    var _controller;
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return tekSatirBurc(context, index);
      },
      itemCount: tumBurclar.length,
    );

  }

  Widget tekSatirBurc(BuildContext context, int index) {
    Burc oanListeyeEklenenBurc=tumBurclar[index];
    print(oanListeyeEklenenBurc.burcAdi);
    return Card(

        elevation:4,
        child:ListTile
            (
          onTap: ()=> Navigator.pushNamed(context, "/burcDetay/$index"),
              leading: Image.asset("images/"+ oanListeyeEklenenBurc.burcKucukResmi,
          width: 64, height: 64,),
          title: Text(oanListeyeEklenenBurc.burcAdi ,
            style: TextStyle(fontSize:24,fontWeight:FontWeight.w400,
                color:Colors.purple.shade400),
          ),
          subtitle:Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),

          child: Text(oanListeyeEklenenBurc.burcTarihi ,
            style: TextStyle(fontSize:14,fontWeight:FontWeight.w900,
                color:Colors.black12),
          ),
          ),
          trailing: Icon(Icons.arrow_forward_ios,color: Colors.purple.shade600,),
        )
    );
  }
}