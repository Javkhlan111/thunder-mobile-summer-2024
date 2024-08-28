import 'package:flutter/material.dart';
import 'package:lesson_day_23/widgets/text_field_input.dart';
import 'package:lesson_day_23/auth_method.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  
  @override
  void dispose() {
    _emailController.dispose();
    _userController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1559251606-c623743a6d76?w=620&auto=format&fit=crop&q=60&ixlib=rb-4.0.3'),
                  ),
                  SizedBox(height: 40,),
                  TextFieldInput(controller: _emailController,
                      isPass: false,
                      hintText: "E-Mail",
                      inputType: TextInputType.text),
                  SizedBox(height: 24,),
                  TextFieldInput(controller: _userController,
                      isPass: false,
                      hintText: "User Name",
                      inputType: TextInputType.text),
                  SizedBox(height: 24,),
                  TextFieldInput(controller: _passwordController,
                      isPass: false,
                      hintText: "Password",
                      inputType: TextInputType.text),
                  SizedBox(height: 24,),
                  TextFieldInput(controller: _bioController,
                      isPass: false,
                      hintText: "Bio",
                      inputType: TextInputType.text),
                  const SizedBox(height: 24,),
                  InkWell(
                    onTap: (){
                      print("${_emailController.text} ${_userController.text} ");
                      AuthMethods().signUpUser(
                          email: _emailController.text,
                          password: _passwordController.text,
                          username: _userController.text);
                    },
                    child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration:
                        const ShapeDecoration(shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        color: Colors.purpleAccent
                        //fromRGBD(0, 149, 24, 1)
                        ),
                        child:
                        const Text('Sign Up')),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
