import 'package:alquran_new/common.dart';

extension BuildContextExtensions on BuildContext {
  Size get size => MediaQuery.sizeOf(this);

  bool get isPotrait => size.width < size.height;

  double get responsiveWidth => isPotrait ? size.width : size.height;

  double get responsiveHeight => isPotrait ? size.height : size.width;

  double get largeScreenWidth => size.width;

  double get halfWidth => responsiveWidth / 2;

  double marginHorToViewport(double value) {
    final responsiveValue = value * 2;
    final widthPercent = responsiveWidth * 1;
    final margin = 1 - responsiveValue / widthPercent;

    return margin;
  }

  double widthToViewport(double value) {
    final responsiveValue = responsiveDoubleW(value);
    final viewport = responsiveValue / responsiveWidth;

    return viewport;
  }

  double responsiveDoubleH(
    double value, {
    double? miniPhone,
    double? tablet,
    double? desktop,
  }) {
    if (value == 0) return value;
    if (isMiniPhone) return miniPhone ?? value;

    return value;
  }

  double responsiveDoubleW(
    double value, {
    double? miniPhone,
    double? tablet,
    double? desktop,
  }) {
    if (value == 0) return value;
    if (isMiniPhone) return miniPhone ?? value;

    return value;
  }

  double responsiveDoubleR(
    double value, {
    double? miniPhone,
    double? tablet,
    double? desktop,
  }) {
    if (value == 0) return value;
    if (isMiniPhone) return miniPhone ?? value;

    return value;
  }

  double responsiveDoubleSP(
    double value, {
    double? miniPhone,
    double? tablet,
    double? desktop,
  }) {
    if (value == 0) return value;
    if (isMiniPhone) return miniPhone ?? value;

    return value;
  }

  double get viewTopArea => MediaQuery.viewPaddingOf(this).top;

  double get viewBottomArea => MediaQuery.viewPaddingOf(this).bottom;

  double get topPadding => MediaQuery.of(this).padding.top;

  bool get isMiniPhone => responsiveHeight <= 667.0;

  bool get hasBottomArea => viewBottomArea > 0;

  T responsiveType<T>(
    T value, {
    T? miniPhone,
    T? tablet,
    T? desktop,
  }) {
    if (isMiniPhone) return miniPhone ?? value;

    return value;
  }

  int responsiveInt(
    int value, {
    int? miniPhone,
    int? tablet,
    int? desktop,
  }) =>
      responsiveType<int>(
        value,
        miniPhone: miniPhone,
        tablet: tablet,
        desktop: desktop,
      );

  double responsiveDouble(
    double value, {
    double? miniPhone,
    double? tablet,
    double? desktop,
  }) =>
      responsiveType<double>(
        value,
        miniPhone: miniPhone,
        tablet: tablet,
        desktop: desktop,
      );

  Store<AppState> get store => StoreProvider.of<AppState>(this);

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;
}
