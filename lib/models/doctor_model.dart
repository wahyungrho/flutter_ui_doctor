class DoctorModel {
  final int? id;
  final String? name;
  final String? specialist;
  final String? picturePath;
  final double? rate;

  DoctorModel(
      {this.id, this.name, this.specialist, this.picturePath, this.rate});
}

List<DoctorModel> listDoctor = [
  DoctorModel(
      id: 1,
      name: 'Alessya Camilla',
      specialist: 'Eye Specialist',
      picturePath: 'assets/doctor_pic.png'),
  DoctorModel(
      id: 2,
      name: 'Jamal Luddin',
      specialist: 'Smile Specialist',
      picturePath: 'assets/doctor_pic_1.png'),
];
