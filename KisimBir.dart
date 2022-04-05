void main(List<String> args) {
  var kenar1 = 23;
  var kenar2 = 34;
  var kenar3 = 54;
  int Ucgen;
  Ucgen = kenar1 + kenar2 + kenar3;

  print(
      'Üçgenin kenarlarınını değerleri ${Ucgen.toString()} Birinci kenar ${kenar1.toString()} İkinci kenar ${kenar2.toString()} Üçüncü kenar ${kenar3.toString()}');

  var ismi = 'Momo';
  var soyIsim = 'Killiogulari';
  print(
      'İsim: $ismi Soyisim: $soyIsim Uzunluğu :${(ismi + soyIsim).length.toInt()}');
}
