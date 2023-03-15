import 'package:auth0_flutter2/auth0/get_logged_in_user/get_logged_in_user.dart';

/// Stub method for logging in a user.
Future<LoggedUserData?> loginUser({
  required String auth0Domain,
  required String auth0ClientId,
  String? scheme,
  String? redirectUri,
  Future<void> Function()? afterLogin,
}) =>
    throw UnsupportedError(
      'This is the stub method, use the active method instead.',
    );
