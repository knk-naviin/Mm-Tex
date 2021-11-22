import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mm_tex/SignUpScreen.dart';

class LoginScreen extends StatelessWidget {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 88.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Image.asset(
                //       "images/logo.jpg",
                //       width: 500,
                //     )
                //   ],
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 58.0),
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
                        prefixIcon: Icon(CupertinoIcons.mail_solid,color: Colors.indigoAccent,),
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
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                    width: 400,
                    child: TextFormField(
                      obscureText: true,
                      onSaved: (value) {
                        password = value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (value.length < 8) {
                          return "Enter valid password";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.lock_fill,color: Colors.indigoAccent,),
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
                Padding(
                  padding: const EdgeInsets.only(left: 270.0, top: 15),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("forgot password?"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.indigoAccent),
                            elevation: MaterialStateProperty.all(0)),
                        child: Text(
                          "Log in",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            (formkey.currentState!.save());
                            print(email);
                            print(password);
                          }
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      "New Registration?",
                      style: TextStyle(color: CupertinoColors.systemBlue),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
