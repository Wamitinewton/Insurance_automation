
//class
class UserData {
  String? accessToken;
  String? token;
  String? id;
  String? name;
  String? email;
  String? avatar;
  String? location;
  String? description;
  int? online;
  String? fcmtoken;
  DateTime? addtime;
  int? type;
  //constuctor
  UserData({
    this.type,
    this.accessToken,
    this.token,
    this.id,
    this.name,
    this.email,
    this.avatar,
    this.location,
    this.description,
    this.online,
    this.fcmtoken,
    this.addtime,
  });
  //map
  factory UserData.fromJson(
    Map<String, dynamic> json,
  ) {
    //returns an object
    //in an object you can be able to call userdata.photourl
    return UserData(
      type: json["type"],
      token: json["token"],
      accessToken: json["accessToken"],
      id: json['id'],
      name: json['name'],
      email: json['email'],
      avatar: json['photourl'],
      online: json['online'],
      description: json['description'],
      location: json['location'],
      fcmtoken: json['fcmtoken'],
      addtime: json['addtime'],
    );
  }

  Map<String, dynamic> toFirestore() => {
        "type": type,
        "token": token,
        "accessToken": accessToken,
        "id": id,
        "name": name,
        "email": email,
        "photourl": avatar,
        "description": description,
        "location": location,
        "online": online,
        "fcmtoken": fcmtoken,
        "addtime": addtime,
      };
}

// 登录返回
class UserLoginResponseEntity {
  int? code;
  String? msg;
  UserData? data;

  UserLoginResponseEntity({
    this.code,
    this.msg,
    this.data,
  });

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseEntity(
        code: json["code"],
        msg: json["msg"],
        data: UserData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "msg": msg,
        "data": data,
      };
}

class MeListItem {
  String? name;
  String? icon;
  String? explain;
  String? route;

  MeListItem({
    this.name,
    this.icon,
    this.explain,
    this.route,
  });

  factory MeListItem.fromJson(Map<String, dynamic> json) => MeListItem(
        name: json["name"],
        icon: json["icon"],
        explain: json["explain"],
        route: json["route"],
      );
}

class LoginRequestEntity {
  int? type;
  String? name;
  String? email;
  String? avatar;
  String? description;
  String? open_id;
  String? phone;
  int? online;

  LoginRequestEntity({
    this.type,
    this.name,
    this.email,
    this.avatar,
    this.description,
    this.open_id,
    this.phone,
    this.online,
  });

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "email": email,
        "photourl": avatar,
        "description": description,
        "openid": open_id,
        "phone": phone,
        "online": online,
      };
}
