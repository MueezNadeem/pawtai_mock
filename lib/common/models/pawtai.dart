class Pawtai {
  late String pawtaiID;
  late String name;
  late String petType;
  late String petWeight;
  late String petLength;
  late String petBreed;
  late String userID;
  late String profilepicURL;

  Pawtai({
    required this.name,
    required this.pawtaiID,
    required this.petBreed,
    required this.petLength,
    required this.petType,
    required this.petWeight,
    required this.profilepicURL,
    required this.userID,
  });

  factory Pawtai.fromJson(Map<String, dynamic> json) {
    return Pawtai(
      name: json['pawtaiName'],
      pawtaiID: json['pawtai_id'].toString(),
      petBreed: json['petBreed'].toString(),
      petLength: json['petLength'].toString(),
      petType: json['petType'].toString(),
      petWeight: json['petWeight'].toString(),
      profilepicURL: json['profPicUrl'].toString(),
      userID: json['userID'].toString(),
    );
  }
}
