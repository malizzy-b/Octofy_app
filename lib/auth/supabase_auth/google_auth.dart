import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../backend/supabase/supabase.dart';
import '../../flutter_flow/flutter_flow_util.dart';

Future<User?> googleSignInFunc() async {
  if (kIsWeb) {
    final success = await SupaFlow.client.auth.signInWithOAuth(Provider.google);
    return success ? SupaFlow.client.auth.currentUser : null;
  }

  final googleSignIn = GoogleSignIn(
    scopes: ['profile', 'email'],
    clientId: isAndroid
        ? null
        : '1076706427668-dr4rogs52hjstvgcje1ljviu6e617ikq.apps.googleusercontent.com',
    serverClientId:
        '1076706427668-sjta19rkjcec96c3kscmk6c9l1gqir1h.apps.googleusercontent.com',
  );

  await googleSignIn.signOut().catchError((_) => null);
  final googleUser = await googleSignIn.signIn();
  final googleAuth = await googleUser!.authentication;
  final accessToken = googleAuth.accessToken;
  final idToken = googleAuth.idToken;

  if (accessToken == null) {
    throw 'No Access Token found.';
  }
  if (idToken == null) {
    throw 'No ID Token found.';
  }

  final authResponse = await SupaFlow.client.auth.signInWithIdToken(
    provider: Provider.google,
    idToken: idToken,
    accessToken: accessToken,
  );
  return authResponse.user;
}
