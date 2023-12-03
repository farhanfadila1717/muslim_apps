import 'package:alquran_new/common.dart';

class DefaultStoreConnector extends StatelessWidget {
  const DefaultStoreConnector({
    super.key,
    required this.builder,
    this.onInitialBuild,
    this.ignoreChange,
    this.onDidChange,
  });

  final ViewModelBuilder<AppState> builder;
  final OnInitialBuildCallback<AppState>? onInitialBuild;
  final IgnoreChangeTest<AppState>? ignoreChange;
  final OnDidChangeCallback<AppState>? onDidChange;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: (context, state) => builder(context, state),
      onInitialBuild: onInitialBuild,
      ignoreChange: ignoreChange,
      onDidChange: onDidChange,
    );
  }
}
