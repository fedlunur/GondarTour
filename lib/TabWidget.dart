import 'package:flutter/widgets.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    Key? key,
    required this.scrollController,
    required this.title,
  }) : super(key: key);

  final ScrollController scrollController;
  final String title;
  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.zero,
        controller: scrollController,
        // this is used to unhide the top content while scrolling
        children: <Widget>[
          SizedBox(height: 36),
          buildaboutText(),
          SizedBox(height: 24),
        ],
      );

  buildaboutText() => Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 12,
            ),
            Center(
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            // end of card icons

            Text(
              ''' the asdsad sadbasndsabdnbnasbndbnsa dnasdasghdhgasghdghasghdgh
 asdsadjashdhas asdghsagdghasd ashdgsadghasghd ashdgsadhas
 the asdsad sadbasndsabdnbnasbndbnsa dnasdasghdhgasghdghasghdgh
 
 ''',
            ),
          ],
        ),
      );
}
