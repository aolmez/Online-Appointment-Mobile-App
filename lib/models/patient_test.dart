import 'package:side_hospital_app/models/patient_extra.dart';
import 'package:side_hospital_app/models/patient_test_id.dart';
import 'package:side_hospital_app/models/test.dart';

class PatientTest {
  PatientTest(
      {this.patientTestId,
      this.test,
      this.date,
      this.time,
      this.state,
      this.patient});
  PatientTestId patientTestId;
  Test test;
  String date;
  String time;
  bool state;
  PatientExtra patient;

  factory PatientTest.fromJson(Map<String, dynamic> json) => PatientTest(
        patientTestId: PatientTestId.fromJson(json["patientTestId"]),
        test: Test.fromJson(json["test"]),
        date: json["date"],
        time: json["time"],
        state: json["state"],
        patient: PatientExtra.fromJson(json["patient"]),
      );

  Map<String, dynamic> toJson() => {
        "patientTestId": patientTestId.toJson(),
        "test": test.toJson(),
        "date": date,
        "time": time,
        "state": state,
        "patient": patient.toJson(),
      };
}
