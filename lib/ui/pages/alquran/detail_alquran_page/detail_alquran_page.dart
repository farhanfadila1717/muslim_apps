import 'package:alquran_new/common.dart';
import 'package:alquran_new/core/controller/alquran_controller.dart';
import 'package:alquran_new/core/utils/utils.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DetailAlquranPage extends StatelessActionMapper {
  const DetailAlquranPage({
    super.key,
    required this.no,
  });

  final String no;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getIt.get<AlquranController>().getAlquranDetail(
            no: no,
          ),
      builder: (_, snapshot) {
        if (snapshot.hasData) {
          final data = snapshot.data!;
          final surah = data.surah;

          return Scaffold(
            appBar: AppBar(
              title: Text(data.alquran.name),
            ),
            body: ScrollablePositionedList.separated(
              itemCount: surah.length,
              itemBuilder: (_, index) {
                final item = surah[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Tooltip(
                              message: 'Nomor ${item.no}',
                              child: SizedBox.square(
                                dimension: 24,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.surfaceTint,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      toArabicNumber(
                                        item.no,
                                      ),
                                      style: const TextStyle(
                                        fontFamily: 'umani',
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                item.arab,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                  fontFamily: 'umani',
                                  fontSize: 26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        item.latin,
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (_, __) => const SizedBox(height: 10),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
