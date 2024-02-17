import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hafidomio_s_application2/backend/model/user.dart';

const String user_Collection_Ref = 'users';

class dbService {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference _userRef;

  dbService() {
    _userRef = _firestore.collection(user_Collection_Ref).withConverter<dbUser>(
        fromFirestore: (snapshots, _) => dbUser.fromJson(
              snapshots.data() as Map<String, dynamic>,
            ),
        toFirestore: (user, _) => user.toJson());
  }

  // CRUD Controllers
  Stream<QuerySnapshot> getUsers() {
    return _userRef.snapshots();
  }

//  Future<dbUser?> getUserByEmail(String email) async {
//     try {
//       var query = await _userRef.where('email', isEqualTo: email).get();

//       if (query.docs.isNotEmpty) {
//         // Assuming there should be only one user with a given email
//         var userData = query.docs.first.data() as Map<String, dynamic>;
//         return dbUser.fromJson(userData);
//       } else {
//         // Return null if no user is found with the given email
//         return null;
//       }
//     } catch (e) {
//       rethrow;
//     }
//   }

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
