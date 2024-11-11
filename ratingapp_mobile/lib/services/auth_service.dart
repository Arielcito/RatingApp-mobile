// Acá podes poner el código de autenticación, ya sea los 3 en un solo archivo o los 3 en archivos separados
// El código podría ser algo así (Con sus respectivos imports) en caso de elegir esta implementación y después distintos "Handlers" en el widget correspondiente (LoginScreen) con sus respectivos state.
//
// Sino, se podría implementar el patrón con BloC https://bloclibrary.dev dependiendo del nivel de complejidad que requieran las capas, con una estructura de carpetas algo así
// lib/features/auth/
// ├── data/
// │   ├── repositories/
// │   │   └── auth_repository.dart
// │   └── datasources/
// │       └── auth_datasource.dart
// ├── domain/
// │   ├── entities/
// │   │   └── user.dart
// │   └── repositories/
// │       └── i_auth_repository.dart
// └── presentation/
//     ├── bloc/
//     │   ├── auth_bloc.dart
//     │   ├── auth_event.dart
//     │   └── auth_state.dart
//     └── widgets/
//         └── social_login_button.dart
// Con Domain para la entidad de usuario y la interfaz para manejarla, data para la implementación de esta entidad y presentation con la UI y la lógica bloc para armar el 
// stateful widget con sus respectivos handlers (Para después agregar directo en el login_screen.dart, sin tener que tocar tanto el widget de origen).

// Código de ejemplo de implementación básica con una capa única de servicio.
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn();

//   // Login con email y contraseña
//   Future<bool> loginWithEmail(String email, String password) async {
//     try {
//       await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return true;
//     } catch (e) {
//       print('Error en login con email: $e');
//       return false;
//     }
//   }

//   // Login con Google
//   Future<bool> loginWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//       if (googleUser == null) return false;

//       final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );

//       await _auth.signInWithCredential(credential);
//       return true;
//     } catch (e) {
//       print('Error en login con Google: $e');
//       return false;
//     }
//   }

//   // Login con Facebook
//   Future<bool> loginWithFacebook() async {
//     try {
//       final LoginResult result = await FacebookAuth.instance.login();
//       if (result.status != LoginStatus.success) return false;

//       final credential = FacebookAuthProvider.credential(
//         result.accessToken!.token,
//       );

//       await _auth.signInWithCredential(credential);
//       return true;
//     } catch (e) {
//       print('Error en login con Facebook: $e');
//       return false;
//     }
//   }

//   // Cerrar sesión
//   Future<void> logout() async {
//     await _auth.signOut();
//     await _googleSignIn.signOut();
//     await FacebookAuth.instance.logOut();
//   }
// }

