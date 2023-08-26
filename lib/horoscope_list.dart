import 'package:flutter/material.dart';
import 'package:horoscope_guide/data/strings.dart';
import 'package:horoscope_guide/horoscope_item.dart';

import 'model/horoscope.dart';

class HoroscopeList extends StatelessWidget {
  late List<Horoscope> allHoroscopes;

  HoroscopeList() {
    allHoroscopes = prepareDataResource();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burçlar Listesi"),
      ),
      body: SafeArea(
        child: Center(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return HoroscopeItem(listedHoroscope: allHoroscopes[index]);
            },
            itemCount: allHoroscopes.length,
          ),
        ),
      ),
    );
  }

  List<Horoscope> prepareDataResource() {
    List<Horoscope> temp = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarih = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
      var burcBuyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
      Horoscope insertHoroscope = Horoscope(
          burcAdi, burcTarih, burcDetay, burcKucukResim, burcBuyukResim);
      temp.add(insertHoroscope);
    }
    return temp;
  }
}
