import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:join/Model/user.dart';
import 'package:join/constans.dart';

class UserService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  addUser(User user, String userUID) {
    _firestore.collection(KCollectionName).doc(userUID).set({
      KFirstName: user.firstName,
      KLastName: user.lastName,
      KAge: user.age,
      KEmail: user.email,
      KGender: user.gender,
      KPassword: user.password,
    });
  }
}
