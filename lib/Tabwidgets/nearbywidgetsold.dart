import 'package:flutter/material.dart';

class NearbyTabWidget extends StatelessWidget {
  const NearbyTabWidget({
    Key? key,
    required this.scrollController,
    required this.title,
  }) : super(key: key);

  final ScrollController scrollController;
  final String title;
  @override
  Widget build(BuildContext context) => miandivisionScreen();
  miandivisionScreen() => SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(),
                  ),
                  child: const Center(child: Text('SEARCH NEAR BY')),
                ),
              ),
              SizedBox(
                child: buildcatagorygriditems(),
                height: 395,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(),
                  ),
                  child: nearbylistviewbuilder(),
                ),
              ),
            ],
          ),
        ),
      );

  nearbylistviewbuilder() => ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              title: Text('Nearby of your home'),
              trailing: Icon(
                Icons.directions,
                color: Colors.blue,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.work,
                color: Colors.blue,
              ),
              title: Text('Nearby of your work'),
              trailing: Icon(
                Icons.directions,
                color: Colors.blue,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.search,
                color: Colors.blue,
              ),
              title: Text('All nearby of your location'),
              trailing: Icon(
                Icons.directions,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      );
  buildcatagorygriditems() => new Expanded(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: GridView(
              children: [
                buildContainers(Icons.balance, Color.fromARGB(255, 32, 40, 46),
                    'Banks & Insurances'),
                buildContainers(Icons.coffee, Colors.black, 'Coffee'),
                buildContainers(Icons.church, Color.fromARGB(255, 6, 64, 109),
                    'Churches & Mosques'),
                buildContainers(Icons.health_and_safety,
                    Color.fromARGB(255, 150, 0, 20), 'Health'),
                buildContainers(
                    Icons.hotel, Color.fromARGB(255, 2, 114, 30), 'Hotels'),
                buildContainers(Icons.balance, Color.fromARGB(255, 240, 66, 13),
                    'Resturants'),
                buildContainers(
                    Icons.restaurant, Color.fromARGB(255, 88, 84, 14), 'ATMS'),
                buildContainers(Icons.attractions,
                    Color.fromARGB(255, 2, 133, 24), 'Attractions'),
                buildContainers(Icons.shopping_bag,
                    Color.fromARGB(255, 10, 3, 114), 'Shoping'),
              ],
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
            ),
          ),
        ),
      );

  headerbuild() => Container(
        child: Padding(
          padding: EdgeInsets.zero,
          child: GridView(
            children: [
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Header')),
              ),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
            ),
          ),
        ),
      );

  buildContainers(IconData icondata, Color iconcolor, String label) =>
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // make the all child to align center
          children: [
            Icon(
              icondata,
              size: 30,
              color: iconcolor,
            ),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
}
