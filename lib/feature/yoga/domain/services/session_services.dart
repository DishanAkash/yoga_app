import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:yoga/feature/yoga/domain/services/constant.dart';

class SessionServices {

  Future<bool> createSession(
      ) async {
    final Map<String, String> headers = {
      // HttpHeaders.authorizationHeader: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJkNTZiOTdlNy0wZGY0LTRjZjgtYWQ4Yy1hZDg5NmRhNTBhY2IiLCJpYXQiOjE3MDEwNTM5NjcsImV4cCI6MTcwMTE0MDM2N30.y7bkgoWn2kzEQ3R5SSmz6UHcosRgN_fzHzSa5cfMdKE",
      HttpHeaders.contentTypeHeader: "application/json",
    };

    try {
      Uri uri = Uri(
        scheme: urlScheme,
        host: baseUrl,
        port: hostPort,
        path: "$basePath/session",
      );
      var body = jsonEncode({
        'title': "test title",
        'instructor': "john doe",
        'category': "category1",
        'image': "session_img1.jpg",
      });
      final http.Response str =
      await http.post(uri, headers: headers, body: body);
      print(str.body);
      if (str.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } on TimeoutException catch (e) {
      return false;
    } on SocketException catch (e) {
      return false;
    } catch (e) {
      return false;
    }
  }
}
