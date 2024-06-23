class UserModel {
  late final String id;
  late final String name;

  UserModel(this.id, Map<String, dynamic> map) {
    name = map["name"] != null ? map["name"] as String : throw("NO NAME ERROR IN USER MODEL"); 
  }

  UserModel.mock(this.id) {
    name = "Name Names";
  }
}