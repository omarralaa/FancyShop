class AuthResponseModel {

  String token;

  AuthResponseModel({  this.token });

  AuthResponseModel.fromJson(Map<String, dynamic> json){
      this.token = json['name'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    return data;
  }
}