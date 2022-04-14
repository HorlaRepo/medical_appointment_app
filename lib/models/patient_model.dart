class Patient {
  String firstName;
  String lastName;
  String occupation;
  String imageUrl;

  Patient({
    required this.firstName,
    required this.lastName,
    required this.occupation,
    required this.imageUrl,
  });

  final Patient currentPatient = Patient(
    firstName: 'Hope',
    lastName: 'Ajao',
    occupation: 'Web Developer',
    imageUrl: 'assets/images/profile.png',
  );
}
