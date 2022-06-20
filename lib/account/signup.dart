import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({
    Key? key,
  }) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
          title: Text("Profile Info", style: TextStyle(color: Colors.black))),
      body: SafeArea(
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
                    Text('BASIC INFO',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 10.0),
                    Container(
                      width: size.width,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5.0),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          labelText: 'Full name',
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      width: size.width,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          labelText: 'Gender',
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      width: size.width,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          labelText: 'Country',
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      width: size.width,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          labelText: 'Date of Birth(MM/DD/YYYY)',
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text('USERNAME & PASSWORD',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 10.0),
                    Container(
                      width: size.width,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          labelText: 'Username/email',
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      width: size.width,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                          labelText: 'password',
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0),
                        ),
                      ),
                    ),
                  ]),
            )),

            const SizedBox(height: 10.0),

            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
            const SizedBox(height: 10.0),
            // buttons
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.3,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 40.0,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0, 65, 117),
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
                  const SizedBox(width: 30.0),
                  Container(
                    width: size.width * 0.3,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 40.0,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 6, 13, 80),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Center(
                            child: Text('Sign up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.0)),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            //end of buttons
          ],
        ),
      ),
    );
  }
}
