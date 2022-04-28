import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential

  print('signInWithGoogle: $credential');
  print('auth: $googleAuth');
  print('user: $googleUser');
  final credentialFirebase = await FirebaseAuth.instance.signInWithCredential(credential);
  print('credentialFirebase: $credentialFirebase');
  print('uid ${credentialFirebase.user?.uid}, email ${credentialFirebase.user?.email}, displayName ${credentialFirebase.user?.displayName}, phoneNumber ${credentialFirebase.user?.phoneNumber}');
  FirebaseFirestore.instance.collection('users').doc(credentialFirebase.user?.uid).set({
    'email': credentialFirebase.user?.email,
    'nombre': credentialFirebase.user?.displayName,
    'tel': credentialFirebase.user?.phoneNumber,
    'type': 'user',
    'pfp': '',
  });
  print('uid ${FirebaseAuth.instance.currentUser?.uid}');

  return credentialFirebase;
  //return await FirebaseAuth.instance.signInWithCredential(credential);
}