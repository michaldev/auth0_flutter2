import 'package:auth0_flutter2/auth0/get_logged_in_user/get_logged_in_user.dart';

import 'login_user_stub.dart'
    if (dart.library.io) 'login_user_mobile.dart'
    if (dart.library.js) 'login_user_web.dart' as impl;

/// Cross-platform method for logging in user (via universal login).
Future<LoggedUserData?> loginUser({
  required String auth0Domain,
  required String auth0ClientId,
  String? scheme,
  String? redirectUri,
  Future<void> Function()? afterLogin,
}) =>
    impl.loginUser(
      auth0Domain: auth0Domain,
      auth0ClientId: auth0ClientId,
      scheme: scheme,
      redirectUri: redirectUri,
      afterLogin: afterLogin,
    );
