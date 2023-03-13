class User {
  String? id;
  String? name;
  String? fatherName;
  String? countryName;
  String? countryCode;
  String? phoneNumber;

  User(
      {this.id,
      this.name,
      this.fatherName,
      this.countryName,
      this.countryCode,
      this.phoneNumber});

  User.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    fatherName = json['Father_Name'];
    countryName = json['Country_Name'];
    countryCode = json['Country_Code'];
    phoneNumber = json['Phone_Number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['Father_Name'] = this.fatherName;
    data['Country_Name'] = this.countryName;
    data['Country_Code'] = this.countryCode;
    data['Phone_Number'] = this.phoneNumber;
    return data;
  }
}
