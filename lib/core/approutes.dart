import 'package:arapface/features/Auth/presentation/views/register_view.dart';
import 'package:go_router/go_router.dart';
class Approutes {
  


 static final  router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => RegisterView(),
    ),
  ],
);
}