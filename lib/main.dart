import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                child: Stack(
                  alignment: Alignment(0.0, 1.0),
                  children: <Widget>[
                    Container(
                      child: Image(
                        image: AssetImage('images/exercise.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0, bottom: 10.0),
                      child: Text(
                        'Sports Activity Platform ',
                        style: TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          color: Color(0xFF152942),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'User Name',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4073AE)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF4073AE),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4073AE)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF4073AE),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 35.0, right: 80.0, left: 20.0),
                      child: Text(
                        'Sign-In',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF1E354E),
                            fontSize: 30.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 35.0, right: 10.0, left: 50.0),
                    child: FloatingActionButton(
                      backgroundColor: Color(0xFF4073AE),
                      child: Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: InkWell(
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            color: Color(0xFF4073AE),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: InkWell(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Color(0xFF4073AE),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
