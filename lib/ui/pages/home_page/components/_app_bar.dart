part of '../home_page.dart';

class _AppBar extends StatelessActionMapper with HomePageActionMapper {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    final cardLoadingTheme = CardLoadingTheme(
      colorOne: context.colorScheme.secondaryContainer,
      colorTwo: context.colorScheme.tertiaryContainer,
    );
    return SliverAppBar(
      expandedHeight: 200 + context.viewTopArea,
      floating: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      actionsIconTheme: const IconThemeData(
        color: Colors.white,
      ),
      actions: [
        DefaultStoreConnector(
          builder: (_, state) {
            if (state.adzanState.todayAdzan.isEmpty) {
              return const SizedBox.shrink();
            }

            return PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              onSelected: (value) {
                if (value != null && value is bool && value) {
                  goToCityPage();
                }
              },
              itemBuilder: (_) {
                return [
                  PopupMenuItem(
                    padding: EdgeInsets.zero,
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      onTap: () => Navigator.pop(context, true),
                      leading: const Icon(
                        Icons.location_searching,
                        color: Colors.black,
                      ),
                      title: const Text('Ganti Kota'),
                    ),
                  ),
                ];
              },
            );
          },
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: SizedBox.expand(
          child: Stack(
            children: [
              Positioned.fill(
                child: ColoredBox(
                  color: context.colorScheme.primary,
                ),
              ),
              Positioned(
                right: -100,
                child: Transform.scale(
                  scale: 1,
                  child: Image.asset(
                    'assets/images/mandala.png',
                    opacity: const AlwaysStoppedAnimation(.7),
                  ),
                )
                    .animate(
                      onComplete: (controller) => controller.repeat(),
                    )
                    .rotate(
                      duration: const Duration(minutes: 2),
                    ),
              ),
              Positioned.fill(
                bottom: 40,
                left: 20,
                right: 20,
                top: context.viewTopArea + 20,
                child: DefaultTextStyle.merge(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  child: DefaultStoreConnector(
                    builder: (_, state) {
                      final adzanState = state.adzanState;
                      final cityState = state.cityState;
                      final selectedCity = cityState.selectedCity;
                      final focusAdzan = adzanState.focusAdzan;
                      final focusDuration =
                          focusAdzan?.time.difference(DateTime.now());
                      final isFocusCloser =
                          focusDuration != null && focusDuration.inMinutes < 10;

                      if (!adzanState.hasInitialized) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CardLoading(
                                  height: 55,
                                  width: 55,
                                  cardLoadingTheme: cardLoadingTheme,
                                  margin: const EdgeInsets.only(right: 10),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CardLoading(
                                      height: 20,
                                      width: 150,
                                      cardLoadingTheme: cardLoadingTheme,
                                      margin: const EdgeInsets.only(bottom: 9),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    CardLoading(
                                      height: 20,
                                      width: 100,
                                      cardLoadingTheme: cardLoadingTheme,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        );
                      }

                      if (selectedCity == null) {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DottedBorder(
                                borderType: BorderType.Oval,
                                radius: const Radius.circular(12),
                                dashPattern: const [5, 2],
                                padding: const EdgeInsets.all(6),
                                color: Colors.white38,
                                child: const Icon(
                                  Icons.location_on_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'Belum memilih kota',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Text(
                                      'Pilih kota Anda terlebih dahulu untuk mendapatkan waktu adzan',
                                    ),
                                    const SizedBox(height: 10),
                                    ElevatedButton(
                                      onPressed: goToCityPage,
                                      child: const Text('Pilih kota'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              DottedBorder(
                                borderType: BorderType.Oval,
                                radius: const Radius.circular(12),
                                dashPattern: const [5, 2],
                                padding: const EdgeInsets.all(6),
                                color: Colors.white38,
                                child: const Icon(
                                  Icons.location_on_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                children: [
                                  Text(
                                    selectedCity.city,
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    selectedCity.adminName,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          CarouselSlider(
                            items: [
                              _AdzanSection(
                                adzanState: adzanState,
                              ),
                              if (focusAdzan != null)
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            focusAdzan.name,
                                          ),
                                          Text(
                                            focusAdzan.time.hhmm,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const VerticalDivider(
                                      indent: 10,
                                      endIndent: 10,
                                      color: Colors.white70,
                                    ),
                                    Expanded(
                                      child: Align(
                                        child: SlideCountdown(
                                          duration: focusDuration,
                                          decoration: BoxDecoration(
                                            color:
                                                context.colorScheme.secondary,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                            options: CarouselOptions(
                              initialPage: isFocusCloser ? 1 : 0,
                              height: 60,
                              reverse: true,
                              viewportFraction: 1.0,
                              autoPlayInterval:
                                  Duration(minutes: isFocusCloser ? 10 : 1),
                              scrollDirection: Axis.vertical,
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                height: 20,
                bottom: 0,
                width: context.responsiveWidth,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: context.theme.scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AdzanSection extends StatelessWidget {
  const _AdzanSection({
    required this.adzanState,
  });

  final AdzanState adzanState;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: context.responsiveWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          adzanState.todayAdzan.length,
          (index) {
            final item = adzanState.todayAdzan[index];
            return Column(
              children: [
                Text(
                  item.name,
                ),
                Text(
                  item.time.hhmm,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
