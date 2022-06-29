import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../config/config.dart';
import '../core/core.dart';
import '../injector.dart' as di;
import '../presentation/presentation.dart';
import 'cubit/app_cubit.dart';

export 'cubit/app_cubit.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Sizer(
        builder: (_, __, ___) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => di.injector<AppCubit>()),
            BlocProvider(create: (_) => di.injector<TodoCubit>()),
            BlocProvider(create: (_) => di.injector<NewTodoCubit>()),
            BlocProvider(create: (_) => di.injector<DetailsCubit>()),
            BlocProvider(create: (_) => di.injector<SettingsCubit>()),
          ],
          child: BlocBuilder<AppCubit, AppState>(
            builder: (context, state) => MaterialApp.router(
              title: kAppTitle,
              debugShowCheckedModeBanner: false,
              theme:
                  di.injector<AppTheme>(instanceName: '${state.theme}').getData,
              routeInformationProvider:
                  di.injector<AppRoute>().getRouter.routeInformationProvider,
              routeInformationParser:
                  di.injector<AppRoute>().getRouter.routeInformationParser,
              routerDelegate: di.injector<AppRoute>().getRouter.routerDelegate,
            ),
          ),
        ),
      );
}
