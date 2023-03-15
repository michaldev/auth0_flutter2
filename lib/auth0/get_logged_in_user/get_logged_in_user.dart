import 'get_logged_in_user_stub.dart'
    if (dart.library.io) 'get_logged_in_user_mobile.dart'
    if (dart.library.js) 'get_logged_in_user_web.dart' as impl;

class LoggedUserData {
  final String accessToken;
  final String userId;

  LoggedUserData({required this.accessToken, required this.userId});
}

/// Cross-platform method for fetching authenticated user ID.
Future<LoggedUserData?> getLoggedInUserData({
  required String auth0Domain,
  required String auth0ClientId,
  String? redirectUri,
}) =>
    impl.getLoggedInUserData(
      auth0Domain: auth0Domain,
      auth0ClientId: auth0ClientId,
      redirectUri: redirectUri,
    );
