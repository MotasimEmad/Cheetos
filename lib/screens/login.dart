import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              "Sign in",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          _emailField(),
          SizedBox(height: 5),
          _passwordField(),
          SizedBox(height: 0),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
            child: Container(
              alignment: Alignment.bottomRight,
              child: Text(
                "Forget password?",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          _btnLogin(),
          SizedBox(height: 5),
          _btnSignUpIntent(),
        ],
      ),
    );
  }

  Widget _btnSignUpIntent() {
    return FlatButton(
      onPressed: () {
        Navigator.of(context).pushNamed("signup");
      },
      child: Text(
        "Create an account?",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _btnLogin() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("home");
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Color(0xff416d6d),
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
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
            style: TextStyle(color: Color(0xff416d6d)),
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color:  Color(0xff416d6d),
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

  Widget _emailField() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(40, 20, 0, 5),
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
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                color:  Color(0xff416d6d),
              ),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: "motasimmax@gmail.com",
              hintStyle: TextStyle(color: Color(0xff416d6d)),
            ),
          ),
        ),
      ],
    );
  }
}
