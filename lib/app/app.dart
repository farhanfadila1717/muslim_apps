import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:go_router/go_router.dart';

import 'package:alquran_new/common.dart';

import 'app_action_mapper.dart';

class App extends StatefulActionMapper with AppActionMapper {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    widget.init();
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.getIt.get<Store<AppState>>(),
      child: MaterialApp.router(
        title: 'Al-Qur\'an',
        debugShowCheckedModeBanner: false,
        locale: const Locale('id'),
        theme: FlexThemeData.light(
          scheme: FlexScheme.material,
          surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
          blendLevel: 7,
          subThemesData: const FlexSubThemesData(
            blendOnLevel: 10,
            blendOnColors: false,
            useTextTheme: true,
            useM2StyleDividerInM3: true,
            switchSchemeColor: SchemeColor.secondaryContainer,
            alignedDropdown: true,
            useInputDecoratorThemeInDialogs: true,
          ),
          visualDensity: FlexColorScheme.comfortablePlatformDensity,
          useMaterial3: true,
          swapLegacyOnMaterial3: true,
        ),
        darkTheme: FlexThemeData.dark(
          scheme: FlexScheme.material,
          surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
          blendLevel: 13,
          subThemesData: const FlexSubThemesData(
            blendOnLevel: 20,
            useTextTheme: true,
            useM2StyleDividerInM3: true,
            switchSchemeColor: SchemeColor.secondaryContainer,
            alignedDropdown: true,
            useInputDecoratorThemeInDialogs: true,
          ),
          visualDensity: FlexColorScheme.comfortablePlatformDensity,
          useMaterial3: true,
          swapLegacyOnMaterial3: true,
        ),
        themeMode: ThemeMode.light,
        routerConfig: widget.getIt.get<GoRouter>(),
      ),
    );
  }
}
