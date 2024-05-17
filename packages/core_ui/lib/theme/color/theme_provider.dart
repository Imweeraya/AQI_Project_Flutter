
import 'package:core_ui/theme/color/theme_color_interface.dart';
import 'package:core_ui/theme/color/theme_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class AppTheme extends _$AppTheme {
  @override
  ThemeState build() => ThemeState(
      selectedTheme: Themes.light,
      themeColor: lightTheme,
  );

}