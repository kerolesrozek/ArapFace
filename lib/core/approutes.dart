import 'package:arapface/features/Auth/presentation/views/register_view.dart';
import 'package:arapface/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';
class Approutes {
  
static final kRegisterView='/kRegisterView';

 static final  router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),

    GoRoute(
      path: kRegisterView,
      builder: (context, state) => RegisterView(),
    ),
  ],
);
}