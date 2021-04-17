import 'package:firebase_auth/firebase_auth.dart';
import 'package:webproject/app/data/utils/constant.dart';

class FirebaseService {

  signinAnon()
  async {
    final userCred=await auth.signInAnonymously();
    return userCred.user;
  }

  signout(){
    auth.signOut();
  }
}