class Horoscope {
  final String _horoscopeName;
  final String _horoscopeDate;
  final String _horoscopeDetails;
  final String _horoscopeImageSmall;
  final String _horoscopeImageLarge;

  Horoscope(this._horoscopeName, this._horoscopeDate, this._horoscopeDetails,
      this._horoscopeImageSmall, this._horoscopeImageLarge);

  String get horoscopeImageLarge => _horoscopeImageLarge;

  String get horoscopeImageSmall => _horoscopeImageSmall;

  String get horoscopeDetails => _horoscopeDetails;

  String get horoscopeDate => _horoscopeDate;

  String get horoscopeName => _horoscopeName;
}
