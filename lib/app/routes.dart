import 'package:reconcavo_orders/app/auth/login/presenter/auth_page.dart' as a1;
import 'package:reconcavo_orders/app/home/presenter/home_page.dart' as a6;
import 'package:routefly/routefly.dart';

List<RouteEntity> get routes => [
      RouteEntity(
        key: '/auth/login/presenter',
        uri: Uri.parse('/auth/login/presenter'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a1.AuthPage(),
        ),
      ),
      RouteEntity(
        key: '/app/home/presenter',
        uri: Uri.parse('/app/home/presenter'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a6.HomePage(),
        ),
      ),
    ];

const routePaths = (
  path: '/',
  home: (path: '/home',),
  auth: (
    path: '/auth',
    login: '/auth/login/presenter',
    register: '/auth/register/presenter',
  ),
);
