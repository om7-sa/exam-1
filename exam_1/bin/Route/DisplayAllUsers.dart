import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../Response/displayAllResponse.dart';

class DisplayAllUsers {
  Handler get router {
    final router = Router()..get('/displayAll', displayAllUsers);

    return router;
  }
}
