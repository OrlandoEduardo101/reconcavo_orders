import 'package:routefly/routefly.dart';

import 'app/administrative_dashboard/modules/costumers/presenter/costumers_page.dart' as a3;
import 'app/administrative_dashboard/modules/stock/presenter/create_category/create_category_page.dart' as a5;
import 'app/administrative_dashboard/modules/stock/presenter/stock_page.dart' as a4;
import 'app/administrative_dashboard/presenter/administrative_dashboard_layout.dart' as a2;
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
          const a1.AuthPage(),
        ),
      ),
      RouteEntity(
        key: '/administrative_dashboard/presenter/administrative_dashboard',
        uri: Uri.parse('/administrative_dashboard/presenter/administrative_dashboard'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a2.AdministrativeDashboardLayout(),
        ),
      ),
      RouteEntity(
        key: '/administrative_dashboard/modules/costumers/presenter/costumers',
        parent: '/administrative_dashboard/presenter/administrative_dashboard',
        uri: Uri.parse('/administrative_dashboard/modules/costumers/presenter/costumers'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a3.CostumersPage(),
        ),
      ),
      RouteEntity(
        key: '/administrative_dashboard/modules/stock/presenter/stock',
        parent: '/administrative_dashboard/presenter/administrative_dashboard',
        uri: Uri.parse('/administrative_dashboard/modules/stock/presenter/stock'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a4.StockPage(),
        ),
      ),
      RouteEntity(
        key: '/administrative_dashboard/modules/stock/presenter/create_category',
        parent: '/administrative_dashboard/presenter/administrative_dashboard',
        uri: Uri.parse('/administrative_dashboard/modules/stock/presenter/create_category'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a5.CreateCategoryPage(),
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
    modules: (
      path: '/administrative_dashboard/modules',
      costumers: (
        path: '/administrative_dashboard/modules/costumers',
        presenter: (
          path: '/administrative_dashboard/modules/costumers/presenter',
          costumers: '/administrative_dashboard/modules/costumers/presenter/costumers',
        ),
      ),
      stock: (
        path: '/administrative_dashboard/modules/stock',
        presenter: (
          path: '/administrative_dashboard/modules/stock/presenter',
          stock: '/administrative_dashboard/modules/stock/presenter/stock',
          createCategory: '/administrative_dashboard/modules/stock/presenter/create_category',
        ),
      ),
    ),
  ),
);
