import 'package:flutter/material.dart';
import 'package:gondartour/Screens/AllplacesMapsWidget.dart';
import 'package:gondartour/PanelWidget.dart';
import 'package:gondartour/account/signup.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() => runApp(StableSlideUP());

class StableSlideUP extends StatelessWidget {
  const StableSlideUP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Gondar Visit',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names
  final panelController = PanelController();
  static const double fabheightclosed = 186.0;
  // initial gap between panel open and fab icon
  double fabheight = fabheightclosed; // initially set the height
  @override
  Widget build(BuildContext context) {
    final panelheightClosed =
        MediaQuery.of(context).size.height * 0.2; // minheight of Slidepanel
    final panelheightOpenmaximumheight =
        MediaQuery.of(context).size.height * 0.5;

    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          SlidingUpPanel(
            controller:
                panelController, // add panel controlle to detect the toggle
            minHeight:
                panelheightClosed, // when closed and at initilization set to height to 10% so that it will
            // be always visible
            maxHeight: panelheightOpenmaximumheight,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(18)), //rounded at the paenl
            parallaxEnabled:
                true, // the background map move up down as the panel moves
            parallaxOffset: .5,
            body: AllplacesMapsWidget(),
            panelBuilder: (controller) => PanelWidget(
              panelController: panelController,
              controller: controller,
            ),
            onPanelSlide: (position) => setState(() {
              final panelMaxScrlloerPosition =
                  panelheightOpenmaximumheight - panelheightClosed;
              fabheight = panelMaxScrlloerPosition * position + fabheightclosed;
            }),
          ),
          Positioned(right: 20, bottom: fabheight, child: buildFAB(context)),
        ],
      ),
    );
  }

  Widget buildFAB(BuildContext context) => FloatingActionButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => Signup())));
      },
      backgroundColor: Colors.white,
      child: Icon(
        Icons.gps_fixed,
        color: Theme.of(context).primaryColor,
      ));
}
