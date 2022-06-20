import 'package:flutter/material.dart';
import 'package:gondartour/Screens/AllplacesMapsWidget.dart';

import 'package:gondartour/Screens/saved.dart';
import 'package:gondartour/TabWidget.dart';
import 'package:gondartour/Screens/Contributions.dart';
import 'package:gondartour/account/login.dart';

import 'package:gondartour/navigationbarheader.dart';

// ignore: depend_on_referenced_packages

import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'Screens/allnearbyplace.dart';

import 'Screens/Dashboard.dart';
import 'Screens/Addplace.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  @override
  void init() {
    super.initState();
  }

  var currentPage = DrawerSections.allplaces;
  ScrollController scrollController = ScrollController();
  bool withoutpanel = true;
  final panelController = PanelController();
  static const double tabbarheight = 80;
  static const double fabheightclosed = 186.0;
  bool panelcurrentopenstate = false;
  // initial gap between panel open and fab icon
  double fabheight = fabheightclosed; // initially set the height
  @override
  Widget build(BuildContext context) {
    // minheight of Slidepanel when scroll down
    double panelheightClosed =
        MediaQuery.of(context).size.height * 0.25; //initial slideup heignht
    final panelheightOpenmaximumheight = MediaQuery.of(context).size.height;
    var container;

    if (currentPage == DrawerSections.allplaces) {
      container = AllplacesMapsWidget();
      // panelController.isAttached ? panelController.close() : null;
      withoutpanel = false;
    } else if (currentPage == DrawerSections.nearbyplaces) {
      panelcurrentopenstate = true;

      container = AllplacesMapsWidget();

      withoutpanel = false;
    } else if (currentPage == DrawerSections.saved) {
      container = SavedPlacePage();
      //   if (panelController.isPanelOpen) panelController.close();
    } else if (currentPage == DrawerSections.addyourhomeplace) {
      container = Addplace(
        type: 'Home Place',
      );
      withoutpanel = true;
      // Navigator.of(context).push(MaterialPageRoute(
      //     builder: ((context) => const Addplace(type: 'Home Place'))));
    } else if (currentPage == DrawerSections.addyourworkplace) {
      container = Addplace(
        type: 'Home work place',
      );
      withoutpanel = true;
      // Navigator.of(context).push(MaterialPageRoute(
      //     builder: ((context) => const Addplace(type: 'Home Place'))));
    } else if (currentPage == DrawerSections.contributions) {
      container = Contributions();
      withoutpanel = true;
    } else if (currentPage == DrawerSections.setttings) {
      container = DashboardPage();
    }
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
      body: withoutpanel
          ? container // this container is the main page to be rended drower menues
          : Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                buildSlidabePanel(
                    container: container,
                    panelheightClosed: panelheightClosed,
                    panelheightOpenmaximumheight: panelheightOpenmaximumheight),
                Positioned(
                    right: 20, bottom: fabheight, child: buildFAB(context)),
              ],
            ),
    );
  }

  Widget buildSlidabePanel(
          {required panelheightClosed,
          required panelheightOpenmaximumheight,
          required container}) =>
      SlidingUpPanel(
        controller: panelController, // add panel controlle to detect the toggle
        minHeight:
            panelheightClosed, // when closed and at initilization set to height to 10% so that it will
        // be always visible
        maxHeight: panelheightOpenmaximumheight - tabbarheight,
        backdropEnabled: true,
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(18)), //rounded at the paenl
        parallaxEnabled:
            true, // the background map move up down as the panel moves
        parallaxOffset: .5,
        body: container, // this will change the body based on pages
        panelBuilder: (scrollController) => BuildSlidingPannel(
            scrollController: scrollController, activeindex: 0),

        onPanelSlide: (position) => setState(() {
          final panelMaxScrlloerPosition =
              panelheightOpenmaximumheight - panelheightClosed;
          fabheight = panelMaxScrlloerPosition * position + fabheightclosed;
        }),
      );

  Widget buildFAB(BuildContext context) => FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.white,
      child: Icon(
        Icons.gps_fixed,
        color: Theme.of(context).primaryColor,
      ));

  Widget BuildSlidingPannel({
    required scrollController,
    required activeindex,
  }) =>
      DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(tabbarheight),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 2,
              title: GestureDetector(
                onTap: togglePannel,
                child: Icon(
                  Icons.drag_indicator,
                  color: Colors.grey,
                  size: 35,
                ),
              ),
              centerTitle: true,
              bottom: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                labelStyle:
                    TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), // Creates border
                    color: const Color(0xFF62A6E9)),
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.collections,
                      color: Colors.black,
                      size: 20,
                    ),
                    child: Text('Catagories'),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.explore_rounded,
                      color: Colors.black,
                      size: 20,
                    ),
                    child: Text('Explore'),
                    // style: TextStyle(color: Colors.black, fontSize: 12)),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.near_me_rounded,
                      color: Colors.black,
                      size: 20,
                    ),
                    child: Text('Near By'),
                    // style: TextStyle(color: Colors.black, fontSize: 12)),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const Contributions()))),
                    child: Tab(
                      icon: Container(
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      child: Text('Contributions',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              TabWidget(
                  scrollController: scrollController, title: 'Catagories'),
              TabWidget(scrollController: scrollController, title: 'Explore'),
              allnearbyplaces(
                  scrollController: scrollController, title: 'Nearby'),
              Contributions(),
            ],
          ),
        ),
      );

  void togglePannel() {
    print('toggle state  =====> $panelcurrentopenstate');
    if (panelcurrentopenstate == false) {
      panelController.open();
      panelcurrentopenstate = true;
    } else if (panelcurrentopenstate == true) {
      panelController.close();
      panelcurrentopenstate = false;
    }
  }

  //drawer data
  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        // shows the list of menu drawer
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Join Gondar Tour App now!!'),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => const Login()))),
                  child: Container(
                      height: 35.0,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Center(
                        child: Text('Sign In',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 12.0)),
                      )),
                ),
              ],
            ),
          ),
          Divider(),
          menuItem(1, "All places", Icons.place,
              currentPage == DrawerSections.allplaces ? true : false),
          menuItem(2, "Nearby Places", Icons.near_me,
              currentPage == DrawerSections.nearbyplaces ? true : false),
          menuItem(3, "Saved", Icons.saved_search,
              currentPage == DrawerSections.saved ? true : false),
          menuItem(4, "Route", Icons.route,
              currentPage == DrawerSections.route ? true : false),
          menuItem(5, "Setting", Icons.settings_outlined,
              currentPage == DrawerSections.setttings ? true : false),
          menuItem(6, "Add your home place", Icons.add_home,
              currentPage == DrawerSections.addyourhomeplace ? true : false),
          menuItem(7, "Add work place", Icons.add_home_work,
              currentPage == DrawerSections.addyourworkplace ? true : false),
          menuItem(8, "Add missed business", Icons.add_home_work,
              currentPage == DrawerSections.addmissedbusiness ? true : false),
          menuItem(9, "Contributions", Icons.add_home_work,
              currentPage == DrawerSections.contributions ? true : false),
          Divider(
            color: Color.fromARGB(255, 223, 81, 100),
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5),
                child: Text('More'),
              ),
            ],
          ),
          menuItem(10, "Map Type", Icons.map,
              currentPage == DrawerSections.maptype ? true : false),
          menuItem(11, "Filter POI on map", Icons.add_home_work,
              currentPage == DrawerSections.filterpoionmap ? true : false),
          menuItem(
              12,
              "Download Offline tiles",
              Icons.download,
              currentPage == DrawerSections.downloadofflinetiles
                  ? true
                  : false),
          menuItem(13, "Share", Icons.share,
              currentPage == DrawerSections.share ? true : false),
          menuItem(14, "Feedback", Icons.feedback,
              currentPage == DrawerSections.feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);

          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.allplaces;
            } else if (id == 2) {
              currentPage = DrawerSections.nearbyplaces;
            } else if (id == 3) {
              currentPage = DrawerSections.saved;
            } else if (id == 4) {
              currentPage = DrawerSections.route;
            } else if (id == 5) {
              currentPage = DrawerSections.setttings;
            } else if (id == 6) {
              currentPage = DrawerSections.addyourhomeplace;
            } else if (id == 7) {
              currentPage = DrawerSections.addyourworkplace;
            } else if (id == 8) {
              currentPage = DrawerSections.addmissedbusiness;
            } else if (id == 9) {
              currentPage = DrawerSections.contributions;
            } else if (id == 10) {
              currentPage = DrawerSections.maptype;
            } else if (id == 11) {
              currentPage = DrawerSections.filterpoionmap;
            } else if (id == 12) {
              currentPage = DrawerSections.downloadofflinetiles;
            } else if (id == 13) {
              currentPage = DrawerSections.share;
            } else if (id == 14) {
              currentPage = DrawerSections.feedback;
            } else if (id == 15) {
              currentPage = DrawerSections.aboutus;
            } else if (id == 16) {
              currentPage = DrawerSections.followus;
            } else if (id == 17) {
              currentPage = DrawerSections.helpandsupport;
            } else if (id == 18) {
              currentPage = DrawerSections.addmissedbusiness;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Color.fromARGB(255, 255, 37, 146),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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

enum DrawerSections {
  allplaces,
  nearbyplaces,
  saved,
  route,
  setttings,
  addyourhomeplace,
  addyourworkplace,
  addmissedbusiness,
  contributions,
  maptype,
  filterpoionmap,
  downloadofflinetiles,
  share,
  feedback,
  aboutus,
  followus,
  helpandsupport
}

// end of drawer data
