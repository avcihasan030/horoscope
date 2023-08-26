import 'package:flutter/material.dart';
import 'package:horoscope_guide/horoscope_detail.dart';
import 'package:horoscope_guide/model/horoscope.dart';

class HoroscopeItem extends StatelessWidget {
  final Horoscope listedHoroscope;

  const HoroscopeItem({Key? key, required this.listedHoroscope})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //default textstyle
    var myTextStyle = Theme.of(context).textTheme;

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) =>
            //       HoroscopeDetail(selectedHoroscope: listedHoroscope),
            // ));
            Navigator.pushNamed(context, '/horoscopeDetail',
                arguments: listedHoroscope);
          },
          //leading
          leading: Image.asset(
            "images/" + listedHoroscope.horoscopeImageSmall,
          ),

          //title
          title: Text(
            listedHoroscope.horoscopeName,
            style: myTextStyle.headline5,
          ),

          //subtitle
          subtitle:
              Text(listedHoroscope.horoscopeDate, style: myTextStyle.subtitle1),

          //trailing
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
