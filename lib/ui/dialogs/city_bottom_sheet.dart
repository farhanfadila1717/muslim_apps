import 'package:alquran_new/common.dart';
import 'package:alquran_new/core/models/city/city.dart';
import 'package:alquran_new/core/redux/actions/city_action/city_action.dart';
import 'package:alquran_new/ui/components/default_store_connector.dart';
import 'package:dotted_border/dotted_border.dart';

class CityBottomSheet extends StatelessActionMapper {
  const CityBottomSheet({
    super.key,
    required this.city,
  });

  final City city;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        20,
        20,
        20,
        context.viewBottomArea + 16,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton.filledTonal(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close_rounded),
              ),
            ),
            Center(
              child: DottedBorder(
                borderType: BorderType.Oval,
                radius: const Radius.circular(12),
                dashPattern: const [5, 2],
                padding: const EdgeInsets.all(10),
                color: context.colorScheme.primary.withOpacity(.1),
                child: Icon(
                  Icons.location_on_rounded,
                  color: context.colorScheme.primary,
                  size: 60,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              city.city,
              style: context.textTheme.titleMedium,
            ),
            Text(city.adminName),
            const SizedBox(height: 4),
            Text('(${city.lat}, ${city.lng})'),
            const SizedBox(height: 10),
            DefaultStoreConnector(
              builder: (_, state) {
                final selected = city == state.cityState.selectedCity;
                return FilledButton(
                  onPressed: () {
                    if (selected) return;

                    dispatch(
                      SetCityAction(city),
                    );
                  },
                  child: Text(selected ? 'Kota Terpilih' : 'Pilih Kota'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
