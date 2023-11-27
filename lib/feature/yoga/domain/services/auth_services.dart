import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:yoga/feature/yoga/domain/services/constant.dart';

class AuthService {

  Future<bool> signUpWithPassword(
    username,
    email,
    gender,
    password,
  ) async {
    final Map<String, String> headers = {
      // HttpHeaders.authorizationHeader: "Bearer ${request.authToken}",
      HttpHeaders.contentTypeHeader: "application/json",
    };

    try {
      Uri uri = Uri(
        scheme: urlScheme,
        host: baseUrl,
        port: hostPort,
        path: "$basePath/auth/register",
      );
      var body = jsonEncode({
        'username': username,
        'email': email,
        'gender': gender,
        'password': password,
      });
      final http.Response str =
          await http.post(uri, headers: headers, body: body);
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
  Future<bool> signInWithPassword(
      email,
      password,
      ) async {
    final Map<String, String> headers = {
      // HttpHeaders.authorizationHeader: "Bearer ${request.authToken}",
      HttpHeaders.contentTypeHeader: "application/json",
    };

    try {
      Uri uri = Uri(
        scheme: urlScheme,
        host: baseUrl,
        port: hostPort,
        path: "$basePath/auth/login",
      );
      var body = jsonEncode({
        'email': email,
        'password': password,
      });
      final http.Response str =
      await http.post(uri, headers: headers, body: body);
      if (str.statusCode == 200) {
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
