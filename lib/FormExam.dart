import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isvisable = true;

  @override
  Widget build(BuildContext context) {
    final wareeg = OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        10,
      ),
      borderSide: BorderSide(
        color: Colors.orange,
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(
            255,
            199,
            176,
            240,
          ),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                "Signup",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //textfield name
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Username",
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: wareeg,
                    focusedBorder: wareeg,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "E-mail",
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: wareeg,
                    focusedBorder: wareeg,
                  ),
                ),
              ),
              //textfiled two
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 10,
                  right: 10,
                  bottom: 0,
                ),
                child: TextField(
                  obscureText: isvisable,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isvisable = !isvisable;
                        });
                      },
                      icon: isvisable == true
                          ? Icon(Icons.visibility_off)
                          : Icon(
                              Icons.visibility,
                            ),
                    ),
                    enabledBorder: wareeg,
                    focusedBorder: wareeg,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 151, 98, 244),
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 40),
                  ),
                  onPressed: () {},
                  child: Text("Signup"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
