import 'package:responsive_portfolio/Constants/constants.dart';

class QualificationModel {
  String? schoolName;
  String? degreeName;
  String? session;
  String? scores;
  String? percentage;
  String? url;

  QualificationModel({
    this.schoolName,
    this.degreeName,
    this.session,
    this.scores,
    this.percentage,
    this.url,
  });
}

List<QualificationModel> qualificationModel = [
  QualificationModel(
    schoolName: "Govt High School Sahiwal",
    degreeName: "Matriculation/Science",
    session: "2016 to 2018",
    scores: "817/1100",
    percentage: "74.5%",
    url: ghs,
  ),
  QualificationModel(
    schoolName: "Superior College Sahiwal",
    degreeName: "Fsc (Pre-Engineering)",
    session: "2018 to 2020",
    scores: "817/1100",
    percentage: "74.5%",
    url: sc,
  ),
  QualificationModel(
    schoolName: "University of Sahiwal",
    degreeName: "BS(Software Engineering)",
    session: "2020 to 2024",
    scores: "817/1100",
    percentage: "74.5%",
    url: uos,
  ),
];
