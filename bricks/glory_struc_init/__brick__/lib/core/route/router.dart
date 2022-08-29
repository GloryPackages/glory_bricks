
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../app/features/feature_name/views/pages/page.dart';
import 'route_name.dart';

const _pageKey = ValueKey('_pageKey');
// /..

class MyRouter {
  static final router = GoRouter(
    initialLocation: '/firstPage',
    debugLogDiagnostics: kDebugMode ? true : false,
    urlPathStrategy: UrlPathStrategy.path,
    routes: routes,
    errorBuilder: (context, state) => ErrorView(state.error!),
  );

  static List<GoRoute> routes = [
    GoRoute(
      name: 'firstPage',
      path: '/firstPage',
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: FirstPage(),
      ),
    ),
   
  ];
}

class RouteModel {
  const RouteModel({
    required this.key,
    required this.name,
    required this.path,
    required this.child,
  });
  final Key key;
  final String name;
  final String path;
  final Widget child;
}

class ErrorScaffold extends StatelessWidget {
  const ErrorScaffold({
    required this.body,
    Key? key,
  }) : super(key: key);

  final Widget body;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Page Not Found')),
        body: body,
      );
}

class ErrorView extends StatelessWidget {
  const ErrorView(this.error, {Key? key}) : super(key: key);
  final Exception error;

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(error.toString()),
            TextButton(
              onPressed: () => context.go('/'),
              child: const Text('Home'),
            ),
          ],
        ),
      );
}
