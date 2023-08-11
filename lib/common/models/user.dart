class User {
  late String username;
  late String email;
  late String password;
  late DateTime dateOfCreation;

  User(u, e, p) {
    username = u;
    email = e;
    password = p;
    dateOfCreation = DateTime.now();
  }
}
