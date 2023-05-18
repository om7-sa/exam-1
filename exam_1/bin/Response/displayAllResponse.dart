import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

Future<Response> displayAllUsers(Request _) async {
  try {
    final List users = json.decode(await File('users.json').readAsString());

    return Response.ok(
      json.encode(users),
      headers: {'Content-Type': 'application/json'},
    );
  } catch (error) {
    return Response.notFound('Sorry, not found');
  }
}
