import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const PanelWidget({
    Key? key,
    required this.controller,
    required this.panelController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.zero,
        controller: controller,
        // this is used to unhide the top content while scrolling
        children: <Widget>[
          SizedBox(height: 36),
          buildaboutText(),
          SizedBox(height: 24),
        ],
      );

  Widget buildaboutText() => Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 12,
            ),
            builddraghandle(),
            SizedBox(
              height: 12,
            ),
            Center(
              child: Text(
                'Exploer Gonar City',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Center(
                child: Row(
              children: <Widget>[
                buildIconWidget('Popular', Icons.favorite, Colors.blue),
              ],
            )), // end of card icons

            SizedBox(height: 12),
            Text(
              ''' the asdsad sadbasndsabdnbnasbndbnsa dnasdasghdhgasghdghasghdgh
 asdsadjashdhas asdghsagdghasd ashdgsadghasghd ashdgsadhas
 the asdsad sadbasndsabdnbnasbndbnsa dnasdasghdhgasghdghasghdgh
 
 ''',
            ),
          ],
        ),
      );

  Widget builddraghandle() => GestureDetector(
        child: Center(
          child: Container(
            width: 30,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        onTap: togglePannel,
      );
  void togglePannel() => panelController.isPanelOpen
      ? panelController.close()
      : panelController.open();

  Widget buildIconWidget(String label, IconData iconsdata, Color colors) =>
      (Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Icon(
                      iconsdata,
                      color: Colors.white,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: colors,
                  shape: BoxShape.circle,
                ),
              ),
              Text(label),
            ],
          ),
        ],
      ));
}
