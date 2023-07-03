import 'package:all_nations/infrastructure/books/book.object.dart';
import 'package:all_nations/infrastructure/conference/conference.object.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

Future<void> initParse() async {
  await Parse().initialize(
    dotenv.get("APP_ID"),
    dotenv.get("SERVER_URL"),
    clientKey: dotenv.get("CLIENT_KEY"),
    debug: true,
    coreStore: await CoreStoreSembastImp.getInstance(),
    liveQueryUrl: dotenv.get("LIVE_QUERY_URL"),
    registeredSubClassMap: {
      "Book": () => BookObject(),
      'Conference': () => ConferenceObject(),
    },
  );
}
