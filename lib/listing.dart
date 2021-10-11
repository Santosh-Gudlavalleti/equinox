class Listing {
  String name;
  String dept;

  Listing({required this.name, required this.dept});

  factory Listing.fromJson(Map<String, dynamic> items) {
    return Listing(
      name: items["name"] as String,
      dept: items["dept_name"] as String,
    );
  }
}
