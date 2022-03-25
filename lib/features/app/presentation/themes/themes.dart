import 'package:api_example/common/providers/custom_app_theme.dart';
import 'package:api_example/features/app/presentation/themes/default.dart';

export 'dark.dart';
export 'default.dart';

enum AppStyles { light, dark }

class AppTheme extends CustomAppTheme<DefaultStyle> {
  AppTheme({required Map<String, ThemeBuilder<DefaultStyle>> styleList})
      : super(styleList: styleList);
}
