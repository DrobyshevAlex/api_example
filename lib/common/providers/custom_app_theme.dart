import 'package:api_example/common/config/defaults.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AppStyle {
  ThemeData get themeData;
}

typedef ThemeBuilder<T extends AppStyle> = T Function();

class CustomAppTheme<T extends AppStyle> extends ChangeNotifier {
  CustomAppTheme({
    required Map<String, ThemeBuilder<T>> styleList,
  })  : assert(styleList.isNotEmpty),
        _styleList = styleList,
        _styleName = styleList.keys.first,
        _currentStyle = styleList.values.first() {
    SharedPreferences.getInstance().then((sp) {
      final name = sp.getString(THEME_KEY);
      if (name?.isNotEmpty ?? false) {
        setStyle(name!);
      }
    });
  }

  final Map<String, ThemeBuilder<T>> _styleList;
  String _styleName;
  T _currentStyle;

  ThemeData get themeData => _currentStyle.themeData;

  Iterable<String> get styleList => _styleList.keys;

  String get styleName => _styleName;
  T get style => _currentStyle;

  T setStyle(String styleName) {
    if (styleName != _styleName) {
      final style = _styleList[styleName]?.call();
      if (style != null) {
        _styleName = styleName;
        _currentStyle = style;
        SharedPreferences.getInstance().then(
          (sp) => sp.setString(THEME_KEY, _styleName),
        );
        notifyListeners();
      }
    }
    return _currentStyle;
  }
}
