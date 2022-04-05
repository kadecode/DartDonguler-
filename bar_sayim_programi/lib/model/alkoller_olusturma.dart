import 'dart:convert';

class AlcolName {
  String categori;
  String cl;
  String miktar;
  String marka;
  AlcolName({
    required this.categori,
    required this.cl,
    required this.miktar,
    required this.marka,
  });

  AlcolName copyWith({
    String? categori,
    String? cl,
    String? miktar,
    String? marka,
  }) {
    return AlcolName(
      categori: categori ?? this.categori,
      cl: cl ?? this.cl,
      miktar: miktar ?? this.miktar,
      marka: marka ?? this.marka,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'categori': categori,
      'cl': cl,
      'miktar': miktar,
      'marka': marka,
    };
  }

  factory AlcolName.fromMap(Map<String, dynamic> map) {
    return AlcolName(
      categori: map['categori'] ?? '',
      cl: map['cl'] ?? '',
      miktar: map['miktar'] ?? '',
      marka: map['marka'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AlcolName.fromJson(String source) => AlcolName.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AlcolName(categori: $categori, cl: $cl, miktar: $miktar, marka: $marka)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AlcolName &&
      other.categori == categori &&
      other.cl == cl &&
      other.miktar == miktar &&
      other.marka == marka;
  }

  @override
  int get hashCode {
    return categori.hashCode ^
      cl.hashCode ^
      miktar.hashCode ^
      marka.hashCode;
  }
}
