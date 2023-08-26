import 'package:flutter/material.dart';
import 'package:horoscope_guide/horoscope_item.dart';
import 'package:horoscope_guide/model/horoscope.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetail extends StatefulWidget {
  final Horoscope selectedHoroscope;

  const HoroscopeDetail({Key? key, required this.selectedHoroscope})
      : super(key: key);

  @override
  State<HoroscopeDetail> createState() => _HoroscopeDetailState();
}

class _HoroscopeDetailState extends State<HoroscopeDetail> {
  Color appBarColor = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => findAppBarColor());
    //_generator = PaletteGenerator.fromImageProvider(AssetImage(assetName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appBarColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.selectedHoroscope.horoscopeName +
                  " Burcu ve Özellikleri"),
              background: Image.asset(
                "images/" + widget.selectedHoroscope.horoscopeImageLarge,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.selectedHoroscope.horoscopeDetails,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> findAppBarColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/${widget.selectedHoroscope.horoscopeImageLarge}"));
    setState(() {
      appBarColor = _generator.dominantColor!.color;
    });
  }
}
