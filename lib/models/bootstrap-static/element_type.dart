class ElementType {
  final int id;
  final String name;
  final String nameShort;

  ElementType({this.id, this.name, this.nameShort});

  factory ElementType.fromJson(Map<String, dynamic> json) {
    return ElementType(
      id: json['id'],
      name: json['singular_name'],
      nameShort: json['plural_name_short'],
    );
  }
}
