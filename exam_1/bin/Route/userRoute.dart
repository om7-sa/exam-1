import 'package:shelf_router/shelf_router.dart';

import '../Response/loginResponse.dart';

class UserRoute {
  Router get router {
    final router = Router()..get('/login', loginResponse);

    return router;
  }
}
