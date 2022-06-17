class MyInfoModel {
  String? myName;
  String? qualification;
  String? dev;
  String? phone;
  String? email;

  MyInfoModel({
    this.myName,
    this.qualification,
    this.dev,
    this.phone,
    this.email,
  });
}

List<MyInfoModel> myInfoModel = [
  MyInfoModel(
    myName: "Muhammad Ali",
    qualification: "BS(Software Engineering)",
    dev: "Flutter Developer",
    phone: "0309-4991850",
    email: "Se.Aliijaz@gmail.com",
  ),
];
