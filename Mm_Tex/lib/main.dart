import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: MmTex(),
  ));
}

class MmTex extends StatefulWidget {
  const MmTex({Key? key}) : super(key: key);

  @override
  _MmTexState createState() => _MmTexState();
}

Future<void> signin() async{
  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: "email@12.com", password: "Password");
}

class _MmTexState extends State<MmTex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: (){
          signin().then((value) => {
            print("Success")
          }).catchError((onError){
            print(onError);
          });
        },
        child: Text("Sign in"),
      ),
    );
  }
}
