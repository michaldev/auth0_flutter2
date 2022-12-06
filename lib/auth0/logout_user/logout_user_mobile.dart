import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:auth0_flutter2/auth0/init_auth0/init_auth0_mobile.dart';

Future<void> logoutUser({
  required String auth0Domain,
  required String auth0ClientId,
}) async {
  Auth0 auth0 = initAuth0Mobile(
    auth0Domain,
    auth0ClientId,
  );

  try {
    await auth0.webAuthentication().logout();
  } catch (e) {
    throw Exception(e);
  }
}
