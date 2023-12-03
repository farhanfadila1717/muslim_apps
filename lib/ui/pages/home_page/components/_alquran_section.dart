part of '../home_page.dart';

class _AlquranSection extends StatelessWidget {
  const _AlquranSection();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(20, 6, 20, 20),
      sliver: DefaultStoreConnector(
        builder: (_, state) {
          final alquranState = state.alquranState;
          final alquran = alquranState.alquran;

          return _AlquranGrid(alquran: alquran);
        },
      ),
    );
  }
}

class _AlquranGrid extends StatelessWidget {
  const _AlquranGrid({
    required this.alquran,
  });

  final List<Alquran> alquran;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: alquran.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.7,
      ),
      itemBuilder: (_, index) {
        final item = alquran[index];
        return _AlquranCard(
          item: item,
        );
      },
    );
  }
}

class _AlquranCard extends StatelessActionMapper {
  const _AlquranCard({
    required this.item,
  });

  final Alquran item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => dispatch(NavigateToNextAction('/alquran/${item.no}')),
      borderRadius: BorderRadius.circular(
        16,
      ),
      child: Ink(
        decoration: BoxDecoration(
          color: context.colorScheme.secondary,
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: DefaultTextStyle.merge(
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('${item.no}'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.arab,
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Umani',
                    ),
                  ),
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
