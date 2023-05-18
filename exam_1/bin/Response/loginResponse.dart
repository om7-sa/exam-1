import 'dart:convert';
import 'package:shelf/shelf.dart';

loginResponse(Request req) async {
  List users = [];

  final body = req.readAsString();
  final jsonBody = json.decode(await body);

  final User = users.firstWhere((user) => user["email"] == jsonBody["email"]);

  if (User["password"] != jsonBody["password"]) {
    return Response.forbidden(
      "  plese try again",
    );
  }

  return Response.ok(
    "$jsonBody",
    headers: {"Content-Type": "Application/json"},
  );
}
