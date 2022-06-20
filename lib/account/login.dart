import 'package:flutter/material.dart';
import 'package:gondartour/account/signup.dart';

class Login extends StatefulWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          title: Text("Login", style: TextStyle(color: Colors.black))),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Gondar City Guide',
                        style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue)),
                    const SizedBox(height: 10.0),
                    Text('Tourist Mobile App',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue)),
                    const SizedBox(height: 10.0),
                    const SizedBox(height: 10.0),
                    Text('Login with the App',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue)),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                width: size.width,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    labelText: 'Username',
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
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              // buttons
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.25,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 30.0,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 66, 69, 216),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Center(
                            child: Text('Sign in',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.0)),
                          )),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Container(
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const Signup()))),
                      child: Container(
                          height: 20.0,
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Center(
                            child: Text('No Account Yet ?Create one',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 34, 9, 255),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.0)),
                          )),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Divider(
                  //       indent: 50,
                  //       color: Colors.black,
                  //     ),
                  //     Text('Or'),
                  //    Divider(
                  //       indent: 50,
                  //       color: Colors.black,
                  //     ),
                  //   ],
                  // ),
                  Divider(
                    indent: 20,
                    color: Colors.black,
                  ),
                  Text('Or'),

                  const SizedBox(height: 15.0),
                  Container(
                      height: 30.0,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 138, 40, 10),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Center(
                        child: Text('Sign in with Google',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 17.0)),
                      )),
                  const SizedBox(height: 15.0),
                  Container(
                      height: 30.0,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 10, 62, 139),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Center(
                        child: Text('Sign in with Facebook',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 17.0)),
                      )),
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
