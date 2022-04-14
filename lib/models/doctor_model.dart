class Doctor {
  String? name;
  String rating;
  String imageUrl;

  Doctor({
    this.name,
    required this.rating,
    required this.imageUrl,
  });

  List<Doctor> doctors = [
    Doctor(
      name: 'Hamzat',
      rating: '4.8',
      imageUrl: 'assets/images/doc1.jpg',
    ),
    Doctor(
      name: 'Bridgett',
      rating: '4.5',
      imageUrl: 'assets/images/doc2.jpg',
    )
  ];
}
