class DBConnectionModel {
  late int id;
  late String name;

  DBConnectionModel(this.id, this.name);

  DBConnectionModel.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['word'];
  }
}
