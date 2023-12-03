part of 'home_page.dart';

mixin HomePageActionMapper on ActionMapper {
  void goToCityPage() => dispatch(
        const NavigateToNextAction('/city'),
      );
}
