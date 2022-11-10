import 'hits.dart';

class PhotoDto {
  PhotoDto({
      this.total, 
      this.totalHits, 
      this.hits,});

  PhotoDto.fromJson(dynamic json) {
    total = json['total'];
    totalHits = json['totalHits'];
    if (json['hits'] != null) {
      hits = [];
      json['hits'].forEach((v) {
        hits?.add(Hits.fromJson(v));
      });
    }
  }
  num? total;
  num? totalHits;
  List<Hits>? hits;
PhotoDto copyWith({  num? total,
  num? totalHits,
  List<Hits>? hits,
}) => PhotoDto(  total: total ?? this.total,
  totalHits: totalHits ?? this.totalHits,
  hits: hits ?? this.hits,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['totalHits'] = totalHits;
    if (hits != null) {
      map['hits'] = hits?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}