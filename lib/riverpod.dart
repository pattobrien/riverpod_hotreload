// ignore_for_file: prefer_const_constructors

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'user.dart';

part 'riverpod.g.dart';

@riverpod
List<User> fetchUsers(FetchUsersRef ref) {
  return [
    User('John'),
    User('Jane'),
    User('Bob'),
  ];
}

List<User> fetchUsersRegularFunction() {
  return [
    User('John'),
    User('Bob'),
  ];
}
