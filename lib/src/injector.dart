import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app.dart';
import 'config/config.dart';
import 'core/core.dart';
import 'data/data.dart';
import 'domain/domain.dart';
import 'presentation/presentation.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  final database =
      await $FloorAppDatabase.databaseBuilder(kDatabaseName).build();
  final sharedPreferences = await SharedPreferences.getInstance();

  injector
    ..registerLazySingleton<AppTheme>(
      LightAppThemeImpl.new,
      instanceName: '${AvailableTheme.light}',
    )
    ..registerLazySingleton<AppTheme>(
      DarkAppThemeImpl.new,
      instanceName: '${AvailableTheme.dark}',
    )
    ..registerSingleton<AppRoute>(AppRoute())
    ..registerSingleton<AppDatabase>(database)
    ..registerSingleton<SharedPrefService>(
      SharedPrefServiceImpl(preferences: sharedPreferences),
    )
    ..registerSingleton<TaskRepository>(
      TaskRepositoryImpl(appDatabase: injector()),
    )
    ..registerSingleton<SharedPrefRepository>(
      SharedPrefRepositoryImpl(service: injector()),
    )
    ..registerSingleton<GetAllTasksUseCase>(
      GetAllTasksUseCase(repository: injector()),
    )
    ..registerSingleton<AddNewTaskUseCase>(
      AddNewTaskUseCase(repository: injector()),
    )
    ..registerSingleton<DeleteTaskUseCase>(
      DeleteTaskUseCase(repository: injector()),
    )
    ..registerSingleton<UpdateTaskUseCase>(
      UpdateTaskUseCase(repository: injector()),
    )
    ..registerSingleton<GetStringUseCase>(
      GetStringUseCase(repository: injector()),
    )
    ..registerSingleton<SetStringUseCase>(
      SetStringUseCase(repository: injector()),
    )
    ..registerFactory<AppCubit>(
      () => AppCubit(
        getStringUseCase: injector(),
        setStringUseCase: injector(),
      ),
    )
    ..registerFactory<TodoCubit>(
      () => TodoCubit(
        getAllTasksUseCase: injector(),
        deleteTaskUseCase: injector(),
      ),
    )
    ..registerFactory<NewTodoCubit>(
      () => NewTodoCubit(
        addNewTaskUseCase: injector(),
        titleEditingController: TextEditingController(),
        descriptionEditingController: TextEditingController(),
      ),
    )
    ..registerFactory<DetailsCubit>(
      () => DetailsCubit(
        updateTaskUseCase: injector(),
        titleEditingController: TextEditingController(),
        descriptionEditingController: TextEditingController(),
      ),
    )
    ..registerFactory<SettingsCubit>(SettingsCubit.new);
}
