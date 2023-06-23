part of 'auth_bloc.dart';

/// Events for [AuthBloc]
@freezed
class AuthEvent with _$AuthEvent {
  /// Event fired when user logs in.
  ///
  /// Takes the logged in [user] for easy reference through the state of the bloc
  const factory AuthEvent.loggedIn({required ParseUser user}) = LoggedIn;

  /// Event fired when user logs out.
  const factory AuthEvent.loggedOut() = LoggedOut;
}
