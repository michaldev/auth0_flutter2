import 'package:auth0_flutter2/auth0/init_auth0/init_auth0_web.dart';
import 'package:auth0_flutter2/auth0/auth0_flutter_web/auth0_flutter_web.dart'
    as auth0_web;

import 'get_logged_in_user.dart';

/// Fetches authenticated user ID on web.
Future<LoggedUserData?> getLoggedInUserData({
  required String auth0Domain,
  required String auth0ClientId,
  String? redirectUri,
}) async {
  try {
    auth0_web.Auth0 auth0 = await initAuth0Web(
      auth0Domain: auth0Domain,
      auth0ClientId: auth0ClientId,
      redirectUri: redirectUri,
    );

    var userInfo = await auth0.getUser();
    var token = await auth0.getTokenSilently();
    return LoggedUserData(accessToken: token, userId: userInfo?["sub"]);
  } catch (e) {
    return null;
  }
}
