import 'dart:convert';

class UserX {
  final String nama;
  final String film;
  final String lagu;
  final String id;
  final int umur;
  final String createAt;

  UserX({
    this.nama = '',
    this.film = '',
    this.lagu = '',
    this.id = '',
    this.umur = 0,
    this.createAt = '',
  });

  UserX copyWith({
    String? nama,
    String? film,
    String? lagu,
    String? id,
    int? umur,
    String? createdAt,
  }) {
    return UserX(
      nama: nama ?? this.nama,
      film: film ?? this.film,
      lagu: lagu ?? this.lagu,
      id: id ?? this.id,
      umur: umur ?? this.umur,
      createAt: createdAt ?? this.createAt,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'nama': nama});
    result.addAll({'film': film});
    result.addAll({'lagu': lagu});
    result.addAll({'id': id});
    result.addAll({'umur': umur});
    result.addAll({'created_at': createAt});

    return result;
  }

  factory UserX.fromMap(Map<String, dynamic> map) {
    return UserX(
      nama: map['nama'] ?? '',
      film: map['film'] ?? '',
      lagu: map['lagu'] ?? '',
      id: map['id'] ?? '',
      umur: map['umur']?.toInt() ?? 0,
      createAt: map['created_at'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserX.fromJson(String source) => UserX.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserX(nama: $nama, film: $film, lagu: $lagu, id: $id, umur: $umur, createdAt: $createAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserX &&
        other.nama == nama &&
        other.film == film &&
        other.lagu == lagu &&
        other.id == id &&
        other.umur == umur &&
        other.createAt == createAt;
  }

  @override
  int get hashCode {
    return nama.hashCode ^ film.hashCode ^ lagu.hashCode ^ id.hashCode ^ umur.hashCode ^ createAt.hashCode;
  }
}
