import 'package:medical_appointment/models/patient_model.dart';

import '../models/doctor_model.dart';

final Patient currentPatient = Patient(
  firstName: 'Hope',
  lastName: 'Ajao',
  occupation: 'Web Developer',
  imageUrl: 'assets/images/profile.png',
);

List<Doctor> doctors = [
  Doctor(
    name: 'Portable',
    rating: '4.8',
    imageUrl: 'assets/images/doc1.jpg',
  ),
  Doctor(
    name: 'Bridgett',
    rating: '4.5',
    imageUrl: 'assets/images/doc2.jpg',
  )
];
