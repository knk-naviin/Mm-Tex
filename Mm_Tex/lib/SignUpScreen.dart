import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? firstname, lastname, email, password, confirmpassword, phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/textlogo.jpeg",
                    width: 400,
                  )
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 400,
                      child: TextFormField(
                        onSaved: (value) {
                          firstname = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Firstname";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            // filled: true,
                            hintText: "First Name",
                            labelText: "Firstname",
                            labelStyle: TextStyle(color: Colors.indigo),
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  style: BorderStyle.solid,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.deepPurple,
                                  style: BorderStyle.solid,
                                ))),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 400,
                      child: TextFormField(
                        onSaved: (value) {
                          lastname = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Lastname";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            hintText: "Last Name",
                            labelText: "Lastname",
                            labelStyle: TextStyle(color: Colors.indigo),
                            hintStyle: TextStyle(color: Colors.grey),
                            // filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  style: BorderStyle.solid,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.deepPurple,
                                  style: BorderStyle.solid,
                                ))),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 400,
                      child: TextFormField(
                        onSaved: (value) {
                          email = value!;
                        },
                        validator: (email) =>
                            email != null && !EmailValidator.validate(email)
                                ? 'Enter a valid email'
                                : null,
                        decoration: InputDecoration(
                            // filled: true,
                            hintText: "Email",
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.indigo),
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  style: BorderStyle.solid,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.deepPurple,
                                  style: BorderStyle.solid,
                                ))),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 400,
                      child: TextFormField(
                        onSaved: (value) {
                          password = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Password";
                          } else {
                            return null;
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.indigo),
                            hintStyle: TextStyle(color: Colors.grey),
                            // filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  style: BorderStyle.solid,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.deepPurple,
                                  style: BorderStyle.solid,
                                ))),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 400,
                      child: TextFormField(
                        onSaved: (value) {
                          confirmpassword = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Confirm Password";
                          } else {
                            return null;
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            labelText: "Confirm Password",
                            labelStyle: TextStyle(color: Colors.indigo),
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  style: BorderStyle.solid,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.deepPurple,
                                  style: BorderStyle.solid,
                                ))),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 400,
                      child: TextFormField(
                        onSaved: (value) {
                          phone = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Phonenumber";
                          } else if (value.length != 10) {
                            return "Check Your Phonenumber";
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Phonenumber",
                            labelText: "Phonenumber",
                            labelStyle: TextStyle(color: Colors.indigo),
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  style: BorderStyle.solid,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.deepPurple,
                                  style: BorderStyle.solid,
                                ))),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: SizedBox(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.indigoAccent),
                              elevation: MaterialStateProperty.all(0)),
                          child: Text(
                            "Sign in",
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              (formkey.currentState!.save());
                              print(firstname! + lastname!);
                              print(email);
                              print(password);
                              print(phone);
                            }
                          }),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
