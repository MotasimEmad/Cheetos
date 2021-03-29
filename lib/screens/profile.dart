import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff416d6d),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Color(0xff416d6d),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("setting");
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus,
          child: ListView(
            children: [
              Text(
                "Edit Profile",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0, 1),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/profile.jpg"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
              _CreateTextField("Name", "Alex Walker", false, false),
              _CreateTextField("E-mail", "0994081137", false, true),
              _CreateTextField("Password", "*************", true, false),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onPressed: () {},
                    child: Text(
                      "CANCLE",
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Color(0xff416d6d),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _CreateTextField(
      String label, String hint, bool isPasswordTextField, bool isNumberField) {
    var _Padding = Padding(
      padding: EdgeInsets.only(bottom: 35.0),
      child: TextField(
        keyboardType: isNumberField ? TextInputType.number : TextInputType.text,
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
                  icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                  onPressed: () {
                    setState(() => showPassword = !showPassword);
                  })
              : null,
          contentPadding: EdgeInsets.only(bottom: 3),
          labelText: label,
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
    return _Padding;
  }
}
