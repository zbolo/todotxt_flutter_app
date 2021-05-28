class Account {
  late int _id;
  late String _username;
  late String _password;
  late Uri _uri;

  Account();

  int get id => this._id;
  String get username => this._username;
  String get password => this._password;
  Uri get uri => this._uri;

  Account.fromMap(Map<String, dynamic> parsedJson) {
    this._id = parsedJson['id'];
    this._username = parsedJson['username'];
    this._password = parsedJson['password'];
    this._uri = Uri.parse(parsedJson['uri']);
  }


  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = id;
    map['username'] = username;
    map['password'] = password;
    map['uri'] = uri;
    return map;
  }
}
