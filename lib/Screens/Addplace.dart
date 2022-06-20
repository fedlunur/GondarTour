import 'package:flutter/material.dart';

class Addplace extends StatefulWidget {
  const Addplace({Key? key, required String type}) : super(key: key);

  @override
  State<Addplace> createState() => _AddplaceState();
}

class _AddplaceState extends State<Addplace> {
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
          title: Text("Add Places", style: TextStyle(color: Colors.black))),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Detail of Your Home(required)',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue)),
              const SizedBox(height: 15.0),
              Container(
                width: size.width,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    labelText: 'Home Address Location',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                width: size.width,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    labelText: 'Description',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Text('Home address (optional))',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue)),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.5,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        labelText: 'Phone No.',
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.4,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        labelText: 'email',
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.5,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        labelText: 'Mobile No.',
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.4,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        labelText: 'Web site',
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Column(
                children: [
                  Text('Graphic Location (Required)',
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue)),
                ],
              ),
              const SizedBox(height: 10.0),
              GestureDetector(
                onTap: () {},
                child: Container(
                    height: 40.0,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Center(
                      child: Text('Choose location on map',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 17.0)),
                    )),
              ),
              const SizedBox(height: 20.0),
              Text('Your absoulte location which is rendered on map',
                  style: TextStyle(
                    fontSize: 12,
                  )),
              const SizedBox(height: 20.0),
              // buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.5,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 40.0,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Center(
                            child: Text('Cancel',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.0)),
                          )),
                    ),
                  ),
                  Container(
                    width: size.width * 0.4,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 40.0,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Center(
                            child: Text('Save',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.0)),
                          )),
                    ),
                  ),
                ],
              ),
              //end of buttons
            ],
          ),
        ),
      ),
    );
  }
}
