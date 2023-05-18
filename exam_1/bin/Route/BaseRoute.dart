import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'DisplayAllUsers.dart';
import 'postImageRoute.dart';
import 'userRoute.dart';

class BaseRoute {
  Handler get handler {
    final router = Router()
      ..mount('/display', DisplayAllUsers().router)
      ..mount('/post_image', PostImageRoute().postimage)
      ..mount('/user', UserRoute().router)
      ..all('/<name>|.*', (Request _) {
        return Response.notFound('path not found');
      });

    return router;
  }
}
