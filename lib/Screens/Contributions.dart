import 'package:flutter/material.dart';
import 'package:gondartour/Screens/Addplace.dart';

class Contributions extends StatelessWidget {
  const Contributions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contributions'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => const Addplace(type: 'home')))),
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.location_city,
                  color: Colors.blue,
                ),
                title: Text('Add home address'),
                trailing: Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => Addplace(
                      type: 'work',
                    )))),
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.add_home_work_outlined,
                  color: Colors.blue,
                ),
                title: Text('Add work address'),
                trailing: Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: WordOTheDayWidget(),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Footeryourplace(),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types

class WordOTheDayWidget extends StatelessWidget {
  const WordOTheDayWidget({
    Key? key,
  });
  Widget buildImageCard() => Card(
        child: Stack(children: [
          Ink.image(
            image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            height: 240,
            fit: BoxFit.cover,
          )
        ]),
      );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12,
        ),
        Text('NAVIGATE WITH LOCAL PLACES',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: -1)),
        const SizedBox(
          height: 6,
        ),
        Text(
            'In orde to navigate with local places, add local place which is missed in this map',
            style: TextStyle(
              fontSize: 12,
            )),
        const SizedBox(
          height: 12,
        ),
        buildImageCard(),
        GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: ((context) => Addplace(
                    type: 'MissedBusiness',
                  )))),
          child: Card(
            child: ListTile(
              leading: Icon(
                Icons.add,
                color: Colors.black,
              ),
              title: Text('Add missed business'),
            ),
          ),
        ),
      ],
    );
  }
}

class Footeryourplace extends StatelessWidget {
  const Footeryourplace({
    Key? key,
  });
  Widget buildImageCard() => Card(
        child: Stack(children: [
          Ink.image(
            image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            height: 240,
            fit: BoxFit.cover,
          )
        ]),
      );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12,
        ),
        Text('YOUR PLACE',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(
          height: 6,
        ),
        buildImageCard(),
      ],
    );
  }
}
