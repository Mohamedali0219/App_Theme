import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/network/local/cache_helper.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isDark = false;

  changeAppTheme({bool? fromShared}) {
    if (fromShared == null) {
      isDark = !isDark;
      CacheHelper.setThemeValue(key: 'isDark', value: isDark).then((value) {
        emit(AppChangeThemeMode());
      });
    } else {
      isDark = fromShared;
      emit(AppChangeThemeMode());
    }
  }
}
