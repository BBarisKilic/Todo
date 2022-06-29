import 'package:go_router/go_router.dart';

import '../../core/core.dart';
import '../../presentation/presentation.dart';

class AppRoute {
  final _router = GoRouter(
    routes: [
      GoRoute(
        path: kTodoPagePath,
        builder: (context, state) => const TodoPage(),
      ),
      GoRoute(
        path: kNewTodoPagePath,
        builder: (context, state) => const NewTodoPage(),
      ),
      GoRoute(
        path: kDetailsPagePath,
        builder: (context, state) => const DetailsPage(),
      ),
      GoRoute(
        path: kSettingsPagePath,
        builder: (context, state) => const SettingsPage(),
      ),
    ],
  );

  GoRouter get getRouter => _router;
}
