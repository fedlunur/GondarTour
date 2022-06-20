import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class nearbycards extends StatelessWidget {
  const nearbycards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
  }

  buildContainers(IconData icondata, Color iconcolor, String label) =>
      Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
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
              size: 25,
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
