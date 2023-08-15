import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Un simple booleano
final isDarkModeProvider = StateProvider((ref) => true);

//Un simple int
final selectedIndexColorProvider = StateProvider((ref) => 0);

//LISTADO DE COLORES INMUTABLE
final colorListProvider = Provider((ref) => colorList);