// ignore_for_file: unused_local_variable

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Middleware/check_image.dart';
import '../Response/uploadImage.dart';

class PostImageRoute {
  Handler get postimage {
    final route = Router()..post('/upload', uploadImage);

    final pipline = Pipeline().addMiddleware(checkImage()).addHandler(route);

    return route;
  }
}
