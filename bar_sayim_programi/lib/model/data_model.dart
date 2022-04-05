enum Alkoller {
  viski,
  kanyak,
  sarap,
  kopukluSarap,
  votka,
  cin,
  rum,
  tekila,
  likor,
  bira,
  raki,
}

class AkolKategori {
  Viski viski;
  Kanyak kanyak;
  Sarap sarap;
  String kopukluSarap;
  String votka;
  String cin;
  Rum rum;
  Tekila tekila;
  String likor;
  String bira;

  AkolKategori(
    this.viski,
    this.kanyak,
    this.sarap,
    this.kopukluSarap,
    this.votka,
    this.cin,
    this.rum,
    this.tekila,
    this.likor,
    this.bira,
  );
}

enum Viski {
  singleMalt,
  grain,
  blended,
  blendedMalt,
  bourbon,
  tennessee,
  rye,
}
enum Kanyak {
  vs, // very Special (VS): En az 2.5 yıl dinlendirilmiş,
  vo, // Very Old / Very Superior Old Pale (VO / VSOP): Açık renkli, en az 4.5 yıl dinlendirilmiş,
  vsop,
  xo, //Extra Old (XO): En az 6.5 yıl dinlendirilmiş.
}
enum Sarap {
  kirmizi,
  beyaz,
  rose,
  blush,
  meyve,
}
enum Rum {
  blanco, // Silver / Light
  oro, // Gold
  anejo // Dark
}
enum Tekila {
  blanco, //Plata (White/Silver): Renksiz tekiladır.
  oro, //Joven (Gold/Young): Yeni damıtılmış ve renklendirilmiş tekiladır.
  reposado, // (Aged): En az iki ay meşe fıçıda bekletilmiş tekiladır.
  anejo, // (Extra Aged): En az bir yıl, en fazla üç yıl meşe fıçıda dinlendirilmiş tekiladır.
  extraAnejo //(Ultra Aged): En az üç yıl meşe fıçıda dinlendirilmiş tekiladır
}
enum Cl {
  aa, //33cl
  a, // 35cl
  b, // 50cl
  c, // 70cl
  d, // 75cl
  f, // 100cl
  g, // 150cl
  h, //200cl
  i, //250cl
  j, //300cl

}
enum Miktar {
  a, // 6
  b, // 12
  c, // 20
  d, // 24
}

class SantiLitre {
  late Miktar miktar;
  late Cl cl;

  SantiLitre({
    required this.miktar,
    required this.cl,
  });

  cLiter(Cl cl) {
    switch (cl) {
      case Cl.aa:
        return 33;
      case Cl.a:
        return 35;
      case Cl.b:
        return 50;
      case Cl.c:
        return 70;
      case Cl.d:
        return 75;
      case Cl.f:
        return 100;
      case Cl.g:
        return 150;
      case Cl.h:
        return 200;
      case Cl.i:
        return 250;
      case Cl.j:
        return 300;
      default:
        return 0;
    }
  }

  adetSayisi(Miktar adet) {
    switch (adet) {
      case Miktar.a:
        return 6;
      case Miktar.b:
        return 12;
      case Miktar.c:
        return 20;
      case Miktar.d:
        return 24;
      default:
        return 0;
    }
  }
}
// Benim mantığıma göre bunları data klas ile birlikte oluşturmak yerine ayrı bir yerde oluşturup bir  nesle 
// oluştururken class ları  çağırarak bir kererelik kayıt ederek daha sonra da ihtiyac durumunda çağırarak kullanılmasını planlıyorum 
