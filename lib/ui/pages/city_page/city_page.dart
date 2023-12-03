import 'package:alquran_new/common.dart';
import 'package:alquran_new/core/models/city/city.dart';
import 'package:alquran_new/core/navigation/action/navigation_actions.dart';
import 'package:alquran_new/core/navigation/destination/navigation_destinations.dart';
import 'package:alquran_new/ui/components/default_store_connector.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:grouped_list/sliver_grouped_list.dart';

class CityPage extends StatefulActionMapper {
  const CityPage({super.key});

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  late final TextEditingController _controller;
  late final ValueNotifier<List<City>> _notifier;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _notifier = ValueNotifier(widget.store.state.cityState.citys);
    _listenSearch();
  }

  void _listenSearch() {
    final allCitys = widget.store.state.cityState.citys;

    _controller.addListener(() {
      final query = _controller.text.toLowerCase();

      if (query.isEmpty) {
        _notifier.value = allCitys;
        return;
      }

      final results = allCitys
          .where(
            (e) =>
                e.city.toLowerCase().contains(query) ||
                e.adminName.toLowerCase().contains(query),
          )
          .toList();

      _notifier.value = results;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultStoreConnector(
        builder: (_, state) {
          final selectedCity = state.cityState.selectedCity;

          return Scrollbar(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  floating: true,
                  expandedHeight: 150 + context.viewTopArea,
                  systemOverlayStyle: SystemUiOverlayStyle.light,
                  iconTheme: const IconThemeData(color: Colors.white),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      children: [
                        Positioned.fill(
                          child: ColoredBox(
                            color: context.colorScheme.primary,
                          ),
                        ),
                        Positioned(
                          right: -50,
                          top: -50,
                          child: DottedBorder(
                            borderType: BorderType.Oval,
                            dashPattern: const [10, 10],
                            strokeWidth: 4,
                            padding: const EdgeInsets.all(6),
                            color: Colors.white24,
                            child: const SizedBox.square(
                              dimension: 200,
                            ),
                          )
                              .animate(
                                onComplete: (controller) => controller.loop(),
                              )
                              .rotate(
                                begin: 0.0,
                                end: 1.0,
                                duration: const Duration(minutes: 3),
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cari kota',
                                style: context.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Untuk menentukan waktu adzan silahkan pilih kota Anda',
                                style: context.textTheme.bodyMedium?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextField(
                                controller: _controller,
                                decoration: InputDecoration(
                                  fillColor: Colors.white70,
                                  hintText: 'Cari kota Anda',
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    borderSide: BorderSide(
                                      color:
                                          context.colorScheme.tertiaryContainer,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: _notifier,
                  builder: (context, citys, _) {
                    return SliverGroupedListView(
                      elements: citys,
                      itemComparator: (a, b) => a.city.compareTo(b.city),
                      groupBy: (city) => city.adminName,
                      groupSeparatorBuilder: (adminName) => GroupSeparator(
                        adminName: adminName,
                      ),
                      itemBuilder: (_, city) {
                        final selected = city == selectedCity;
                        return ListTile(
                          title: Text(
                            city.city,
                          ),
                          trailing: Visibility(
                            visible: selected,
                            child: const Chip(
                              label: Text('Terpilih'),
                            ),
                          ),
                          onTap: () => widget.dispatch(
                            ShowModalBottomSheetAction(
                              destination: CityBottomSheetDestination(
                                city: city,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class GroupSeparator extends StatelessWidget {
  const GroupSeparator({
    super.key,
    required this.adminName,
  });

  final String adminName;

  @override
  Widget build(BuildContext context) {
    final colors = [
      context.colorScheme.tertiary,
      context.colorScheme.surfaceTint,
    ];

    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: colors[adminName.length % 2],
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            left: -50,
            top: -50,
            child: DottedBorder(
              borderType: BorderType.Oval,
              dashPattern: const [5, 5],
              strokeCap: StrokeCap.round,
              strokeWidth: 3,
              padding: const EdgeInsets.all(6),
              color: Colors.white24,
              child: const SizedBox.square(
                dimension: 100,
              ),
            ),
          ),
          Positioned(
            right: -50,
            bottom: -50,
            child: DottedBorder(
              borderType: BorderType.Oval,
              dashPattern: const [5, 5],
              strokeCap: StrokeCap.round,
              strokeWidth: 3,
              padding: const EdgeInsets.all(6),
              color: Colors.white24,
              child: const SizedBox.square(
                dimension: 100,
              ),
            ),
          ),
          Positioned.fill(
            top: 20,
            bottom: 20,
            left: 20,
            right: 20,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                adminName,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
