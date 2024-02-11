import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hafidomio_s_application2/backend/model/user.dart';

const String user_Collection_Ref = 'users';

class dbService {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference _userRef;

  dbService() {
    _userRef = _firestore.collection(user_Collection_Ref).withConverter<dbUser>(
        fromFirestore: (snapshots, _) => dbUser.fromJson(
              snapshots.data()!,
            ),
        toFirestore: (user, _) => user.toJson());
  }

  // CRUD Controllers
  Stream<QuerySnapshot> getUsers() {
    return _userRef.snapshots();
  }

  Future<dbUser?> getUserByEmail(String? email) async {
  try {
    QuerySnapshot querySnapshot = await _userRef.where('email', isEqualTo: email).get();
    if (querySnapshot.docs.isNotEmpty) {
      // Use the fromJson method from your dbUser class to convert the data
      // return dbUser.fromJson(querySnapshot.docs.first.data());
      Map<String, dynamic> userData = querySnapshot.docs.first.data() as Map<String, dynamic>;
      return dbUser.fromJson(userData);
    } else {
      return null;
    }
  } catch (e) {
    // Handle any potential errors
    print("Error fetching user by email: $e");
    return null;
  }
}

  void addUser(dbUser user) async {
    _userRef.add(user);
  }

  void updateUser(String uid, dbUser user) async {
    _userRef.doc(uid).update(user.toJson());
  }

  void deleteUser(String uid) async {
    _userRef.doc(uid).delete();
  }

  Future<bool> checkUser(String? email) async {
    try {
      var user = await _userRef.where('email', isEqualTo: email).get();
      return user.docs.isNotEmpty;
    } catch (e) {
      rethrow;
    }
  }


}
