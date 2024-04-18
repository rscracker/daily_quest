import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_quest/app/data/user/datasource/user_data_source.dart';
import 'package:daily_quest/app/data/user/model/user_model.dart';

class UserRepository {
  final UserDataSource _userDataSource;

  UserRepository(this._userDataSource);

  Future<UserModel?> getUser({required String uid}) async {
    return _userDataSource.getUser(uid: uid);
  }

  Future<void> updateUser({required UserModel user}) async {
    return _userDataSource.updateUser(user: user);
  }

  Future<void> deleteUser({required String uid}) async {
    return _userDataSource.deleteUser(uid: uid);
  }

  Future<bool> checkNickName({required String nickname}) async {
    QuerySnapshot snapshot =
        await _userDataSource.checkNickname(nickname: nickname);
    return snapshot.docs.isEmpty;
  }
}
