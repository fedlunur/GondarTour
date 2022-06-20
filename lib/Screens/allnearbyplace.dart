import 'package:flutter/material.dart';
import 'package:gondartour/Screens/nearbycards.dart';

class allnearbyplaces extends StatefulWidget {
  const allnearbyplaces({
    Key? key,
    required this.scrollController,
    required this.title,
  }) : super(key: key);
  final ScrollController scrollController;
  final String title;
  @override
  State<allnearbyplaces> createState() => _allnearbyplacesState();
}

class _allnearbyplacesState extends State<allnearbyplaces> {
  bool _flag = false;

  @override
  void initState() {
    super.initState();
  }

  void _onChangeCheckbox(bool? e) {
    setState(() {
      _flag = e!;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Near By Places", style: TextStyle(color: Colors.black))),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10.0),
                      SizedBox(
                        child: nearbycards(),
                        height: size.height * 0.5,
                      ),
                    ]),
              )),
              Card(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10.0),
                      SizedBox(
                        child: nearbylistviewbuilder(),
                        height: size.height * 0.5,
                      ),
                    ]),
              )),
            ],
          ),
        ),
      ),
    );
  }

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
}
