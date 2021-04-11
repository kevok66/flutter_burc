import 'package:flutter/material.dart';

class Burc {
  String _burcAdi;
  String _burcTarihi;
  String _burcDetayi;
  String _burcKucukResim;
  String _burcBuyukResim;
  
  Burc( this._burcAdi , this._burcTarihi ,this._burcDetayi, this._burcKucukResim,this._burcBuyukResim  );

  String get  burcBuyukResmi => _burcBuyukResim;
  set burcBuyukResmi (String value) {
    _burcBuyukResim= value;

  }
  String get  burcKucukResmi => _burcKucukResim;
  set burcKucukresmi (String value) {
    _burcKucukResim= value;

  }
String get  burcTarihi => _burcTarihi;
  set burcTarihi (String value) {
    _burcTarihi= value;

  }

String get  burcAdi => _burcAdi;
  set burcAdi (String value) {
    _burcAdi= value;

  }

String get  burcDetay => _burcDetayi;
  set burcDetay (String value) {
    _burcDetayi= value;

  }
}
