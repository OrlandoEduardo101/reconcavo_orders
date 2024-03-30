import 'package:routefly/routefly.dart';

import 'app/administrative_dashboard/presenter/administrative_dashboard_page.dart' as a2;
import 'app/auth/login/presenter/auth_page.dart' as a1;
import 'app/home/presenter/home_page.dart' as a0;

List<RouteEntity> get routes => [
  RouteEntity(
    key: '/home/presenter/home',
    uri: Uri.parse('/home/presenter/home'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a0.HomePage(),
    ),
  ),
  RouteEntity(
    key: '/auth/login/presenter/auth',
    uri: Uri.parse('/auth/login/presenter/auth'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      a1.AuthPage(),
    ),
  ),
  RouteEntity(
    key: '/administrative_dashboard/presenter/administrative_dashboard',
    uri: Uri.parse('/administrative_dashboard/presenter/administrative_dashboard'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a2.AdministrativeDashboardPage(),
    ),
  ),
];

const routePaths = (
  path: '/',
  home: (
    path: '/home',
    presenter: (
      path: '/home/presenter',
      home: '/home/presenter/home',
    ),
  ),
  auth: (
    path: '/auth',
    login: (
      path: '/auth/login',
      presenter: (
        path: '/auth/login/presenter',
        auth: '/auth/login/presenter/auth',
      ),
    ),
  ),
  administrativeDashboard: (
    path: '/administrative_dashboard',
    presenter: (
      path: '/administrative_dashboard/presenter',
      administrativeDashboard: '/administrative_dashboard/presenter/administrative_dashboard',
    ),
  ),
);
