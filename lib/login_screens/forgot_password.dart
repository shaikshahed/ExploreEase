import 'package:exploreease/login_screens/login_screen.dart';
import 'package:exploreease/screens/home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:  [Color(0xFF0B9A8B), Color(0xFF00FFAB)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
            ) 
        ),
        child: Center(
          child: Container(
            height: 350,
            width: 300,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                   Text("Forgot Password",style: TextStyle(color: Color(0xFF0B9A8B), fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 26,),
                    Form(
                      key: _formkey,
                      child: TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return "Please Enter your Email";
                          }if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                        .hasMatch(value)) {
                            return 'Please enter a valid email';
                            }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(8),
                            
                          ),
                          hintText: "Email",
                          
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){
                     if(_formkey.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                     }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0B9A8B),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))
                      )
                    ),
                    child: Text("Forgot Password")
                    ),   
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}