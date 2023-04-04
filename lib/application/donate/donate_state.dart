part of 'donate_bloc.dart';

@freezed
class DonateState with _$DonateState {
  const factory DonateState({
    required WebViewController webViewController,
  }) = _DonateState;

  factory DonateState.initial() => DonateState(
        webViewController: WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse(dotenv.get("DONATE_URL"))),
      );
}
