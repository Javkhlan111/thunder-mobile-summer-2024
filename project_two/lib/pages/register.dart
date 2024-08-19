import 'package:flutter/material.dart';
import 'package:project_two/widgets/button.dart';
import '../widgets/input.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 160,
              ),
              Text(
                'iCodegram',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.53,
                  fontFamily: 'Lobster',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              SizedBox(height: 52),
              Input("Утасны дугаар"),
              SizedBox(height: 14),
              Input('Хэрэглэгчийн нэр'),
              SizedBox(height: 14),
              Input('Нууц үг'),
              SizedBox(height: 14),
              Input('Нууц үг давтах'),
              SizedBox(height: 48),
              Button('Бүртгүүлэх'),
              SizedBox(height: 26),
              Text(
                'Эсвэл',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6000000238418579),
                  fontSize: 14,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              SizedBox(height: 26),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Text(
                  'Бүртгэлтэй юу?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6000000238418579),
                    fontSize: 15,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(width: 5,),
                Text(
                      'Нэвтрэх',
                      style: TextStyle(
                        color: Color(0xFFE76A01),
                        fontSize: 15,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFFE76A01),
                        height: 0,
                      ),
                    ),

              ]),
            ],
          ),
        ),
      ),
    );
  }
}
