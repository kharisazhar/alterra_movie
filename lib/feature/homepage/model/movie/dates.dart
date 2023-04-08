/// maximum : "2023-04-13"
/// minimum : "2023-02-24"

class Dates {
  Dates({
    this.maximum,
    this.minimum,
  });

  Dates.fromJson(dynamic json) {
    maximum = json['maximum'];
    minimum = json['minimum'];
  }

  String? maximum;
  String? minimum;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maximum'] = maximum;
    map['minimum'] = minimum;
    return map;
  }
}
