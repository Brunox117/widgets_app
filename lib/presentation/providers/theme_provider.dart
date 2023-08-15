import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Un simple booleano
final isDarkModeProvider = StateProvider((ref) => true);

//Un simple int
final selectedIndexColorProvider = StateProvider((ref) => 0);

//LISTADO DE COLORES INMUTABLE
final colorListProvider = Provider((ref) => colorList);

//Un objeto de tipo AppTheme
final themeNotifierProvider = StateNotifierProvider<ThemeController, AppTheme>(
  (ref) => ThemeController(),
);

//CONTROLLER O NOTIFIER
class ThemeController extends StateNotifier<AppTheme> {
  //STATE + estado = new AppTheme();
  ThemeController() : super(AppTheme());

  void toggleDarkMode(){
    state = state.copyWith(
      isDarkMode: !state.isDarkMode
    );
  }

  void changeColorIndex(int colorIndex){
    state = state.copyWith(
      selectedColor: colorIndex
    );
  }
}
