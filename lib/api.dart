import 'dart:convert';
import 'package:http/http.dart' as http;
import 'listing.dart';

class Service {
  static const _url1 =
      'http://karma.equinoxlab.com/betaDailyUpdateApi/Service1.svc/getManager';
  static Future<List<Listing>> getdata() async {
    try {
      final response = await http.get(
        Uri.parse(_url1),
      );
      if (response.statusCode == 200) {
        final jsonDatas = json.decode(response.body);
        final note = <Listing>[];
        for (var items in jsonDatas["DATA"]) {
          note.add(Listing.fromJson(items));
        }
        return note;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception("Error");
    }
  }
}
