import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/bloc_observer.dart';
import 'package:shop_app/cubits/app_cubit/app_cubit.dart';
import 'package:shop_app/service/local/cache_helper.dart';
import 'package:shop_app/screens/onbording_screen.dart';
import 'package:shop_app/service/remote/dio_helper.dart';
import 'package:shop_app/widgets/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper
      .init(); // ! using async, await becuase the instance will be created only with the app running or change value

  bool? isDark = CacheHelper.getThemeValue(key: 'isDark');
  Bloc.observer = MyBlocObserver();
  runApp(MyApp(
    isDark: isDark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.isDark});
  final bool? isDark;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..changeAppTheme(fromShared: isDark),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ligthTheme(),
            darkTheme: darkTheme(),
            themeMode:
                AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: const OnboardingScreen(),
          );
        },
      ),
    );
  }
}
