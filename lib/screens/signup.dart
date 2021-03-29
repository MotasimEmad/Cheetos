import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff416d6d),
      body: ListView(
        children: [
          SizedBox(height: 100),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Sign up",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          _nameField(),
          SizedBox(height: 5),
          _emailField(),
          SizedBox(height: 5),
          _passwordField(),
          SizedBox(height: 10),
          _btnSignUp(),
          SizedBox(height: 5),
          _btnSignInIntent(),
        ],
      ),
    );
  }

  Widget _btnSignInIntent() {
    return FlatButton(
      onPressed: () {
        Navigator.of(context).pushNamed("login");
      },
      child: Text(
        "Already have an account?",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _btnSignUp() {
    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "SIGN UP",
          style: TextStyle(
            color: Color(0xff416d6d),
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }

  Widget _nameField() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(40, 0, 0, 5),
          alignment: Alignment.topLeft,
          child: Text(
            "Name",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          margin: EdgeInsets.fromLTRB(40, 5, 40, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xff416d6d),
              ),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: "Alex Walker",
              hintStyle: TextStyle(color: Color(0xff416d6d)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _emailField() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(40, 0, 0, 5),
          alignment: Alignment.topLeft,
          child: Text(
            "Email",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          margin: EdgeInsets.fromLTRB(40, 5, 40, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            style: TextStyle(color: Color(0xff416d6d)),
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xff416d6d),
              ),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: "alex@work.io",
              hintStyle: TextStyle(color: Color(0xff416d6d)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _passwordField() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(40, 0, 0, 5),
          alignment: Alignment.topLeft,
          child: Text(
            "Password",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          margin: EdgeInsets.fromLTRB(40, 5, 40, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xff416d6d),
              ),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: "**************",
              hintStyle: TextStyle(color: Color(0xff416d6d)),
            ),
          ),
        ),
      ],
    );
  }
}
