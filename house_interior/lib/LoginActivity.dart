import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house_interior/GlobalVariable.dart';
import 'package:motion_toast/motion_toast.dart';

class LoginActivity extends StatefulWidget{
  @override
  State<LoginActivity> createState() => _LoginActivity();
}
class _LoginActivity extends State<LoginActivity>{
  final mail_id = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LOGIN'),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: 200,
              alignment: Alignment.center,
              child: const Image(
                image: AssetImage('images/bg2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                      'LOGIN',
                      textStyle: const TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink
                      ),
                      speed: const Duration(milliseconds: 500)
                  )
                ],
                totalRepeatCount: 20,
                pause: const Duration(milliseconds: 100),
                stopPauseOnTap: true,
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: _Neumorphism(),
              padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
              margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
              child: _TextField_Decoration(mail_id, 'mail id'),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: _Neumorphism(),
              padding: EdgeInsets.only(left: GlobalVariable.TEXT_FIELD_LEFT_PADDING,top: GlobalVariable.TEXT_FIELD_TOP_PADDING, bottom: GlobalVariable.TEXT_FIELD_BOTTOM_PADDING, right: GlobalVariable.TEXT_FIELD_RIGHT_PADDING),
              margin: EdgeInsets.only(right: GlobalVariable.TEXT_FIELD_RIGHT_MARGIN, left: GlobalVariable.TEXT_FIELD_LEFT_MARGIN),
              child: _TextField_Decoration(password, 'password'),
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: (){
                  showToast("Logged In!!!");
                },
                child: Text('LOGIN'),
              )
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: const Text('Forgot the password'),
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                child: const Text('Register !'),
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationActivity()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  static BoxDecoration _Neumorphism() {
    return BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 10,
            offset: const Offset(5, 5),
            // spreadRadius: 1
          ),
          const BoxShadow(
              color: Colors.white,
              blurRadius: 10,
              offset: Offset(-5, -5),
              spreadRadius: 4
          )
        ]
    );
  }
  void showToast(String text){
    MotionToast.info(description: Text(text), title: const Text('Info',),).show(context);
  }

  static TextField _TextField_Decoration(TextEditingController controller, var label){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none
      ),
    );
  }

}