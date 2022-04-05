void main(List<String> args) {
  /* int degisen = 0;
  while (degisen < 5) {
    print('$degisen inci: Momo killigier ');
    degisen++;
  }

  int momo = 1;
  while (momo <= 10) {
    print('$momo Momo olarak ne kadar yediğimi gösterebiliriz');
    momo++;
  }*/
  /*int baslama = 1;
  do {
    print('Buradada ne gereksiz şeyler yazdırıyoruz arkadaş');
  } while (baslama < 4);
  {
    baslama++;
  }*/

  // Soru 3 ile 5 tam bölünecek ve 100 kadar olacak bu sayılar
  // 3 ile 5 bölünen sayıların karalerini yazdıracaksın.

  for (int i = 1; i < 100; i++) {
    i % 3 == 0 && i % 5 == 0
        ? print('Bölünen sayılar $i ve bu sayıların karesi = ${i * i}')
        : null;
  }
  int sayi = 8;
  int sonuc = 1;
  int sayac = 1;
  while (sayac <= sayi) {
    sonuc = sonuc * sayac;
    sayac++;
  }

  print('Girdiğiniz  $sayi faktör hesabı $sonuc');
}
