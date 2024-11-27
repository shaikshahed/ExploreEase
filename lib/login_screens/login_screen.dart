import 'package:exploreease/login_screens/forgot_password.dart';
import 'package:exploreease/login_screens/sign_up_screen.dart';
import 'package:exploreease/screens/home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;
  bool showPassword = false;
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
            height: 500,
            width: 300,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Text("Login",style: TextStyle(color: Color(0xFF0B9A8B), fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 26,),
                    TextFormField(
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
                          borderRadius: BorderRadius.circular(8)
                        ),
                        hintText: "Email"
                      ),
                    ),
                    SizedBox(height: 50,),
                    TextFormField(
                      controller: passwordController,
                      obscureText: _obscureText,
                      validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    } else if (value.length < 6) {
                                      return 'Password must be atleast 6 characters long';
                                    }
                                    return null;
                                  },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        hintText: "Password"
                      ),
                    ),
                     ListTile(
                                      contentPadding: EdgeInsets.only(left: 6,),
                                      leading: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            height: 10,
                                            width: 10,
                                            child: Checkbox(
                                              value: showPassword,
                                            
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  showPassword = value ?? false;
                                                  _obscureText = !showPassword;
                                                });
                                              },
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Text(
                                            'Show Password',
                                            style: TextStyle(
                                                color: Colors.grey[800],
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      trailing: TextButton(
                                        style: TextButton.styleFrom(padding: EdgeInsets.zero,minimumSize: Size(0, 0)),
                                        onPressed: () {
                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                                        },
                                        child: Text(
                                          'Forgot Password',
                                          style: TextStyle(
                                              color: Color(0xFF0B9A8B), fontSize: 12),
                                        ),
                                      ),
                                    ),
                    Spacer(),
                    ElevatedButton(onPressed: (){
                      if(_formkey.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()))
                        ;
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0B9A8B),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))
                      )
                    ),
                    child: Text("SIGN IN")),
                    
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      }, 
                      child: Text("Sign Up", style: TextStyle(color: Color(0xFF0B9A8B)),))
                    ],
                   )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}