class add_record {
  String name;
  String specialty;

  add_record({required this.name, required this.specialty});

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "specialty": specialty,
    };
  }
}
