// ignore: unused_import
import 'package:changrode/page1/log2.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  // ignore: non_constant_identifier_names, prefer_final_fields
  var _GoogleSignin = GoogleSignIn();
  var googleAccount = Rx<GoogleSignInAccount?>(null);

  login() async {
    googleAccount.value = await _GoogleSignin.signIn();
  }

  logout() async {
    googleAccount.value = await _GoogleSignin.signOut();
  }
}
