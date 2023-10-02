import 'package:f_app/constants/page_constant.dart';
import 'package:f_app/utils/get_icon.dart';
import 'package:f_app/widgets/actions/action_widget.dart';
import 'package:flutter/material.dart';

class ListActionsWidget extends StatelessWidget {
  const ListActionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: actions(),
    );
  }
}

List<Widget> actions() {
  return [
    ActionWidget(
        route: PAGES.transferPage.route,
        icon: getIconWidget(IconsAvailables.arrowsRotate),
        text: "Transferir"),
    ActionWidget(
        route: PAGES.payPage.route,
        icon: getIconWidget(IconsAvailables.receipt),
        text: "Pagar servicio"),
    ActionWidget(
        route: PAGES.receivePage.route,
        icon: getIconWidget(IconsAvailables.coins),
        text: "Ingreso"),
    ActionWidget(
        route: PAGES.moreOptionsPage.route,
        icon: getIconWidget(IconsAvailables.ellipsis),
        text: "Más"),
  ];
}
