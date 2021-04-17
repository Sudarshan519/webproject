import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webproject/app/data/utils/constant.dart';
import 'package:webproject/app/modules/home/bindings/home_binding.dart';
import 'package:webproject/app/modules/home/views/home_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final email = TextEditingController();
  final password = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Form(
            key: formkey,
            child: Container(
              width: MediaQuery.of(context).size.width * .7,
              height: MediaQuery.of(context).size.height * .7,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [Colors.pink, Colors.blue])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                      controller: email,
                      validator: (v) {
                        if (v.isBlank)
                          return 'blank';
                        else
                          return null;
                      }),
                  // CustomTextField(
                  //   borderRadius: 10,
                  //   prefixIcon: Icons.email,
                  //   controller: email,
                  //   hintText: ' email',
                  //   hintcolor: Colors.white,
                  //   validator: (v) {
                  //     if (v == null || v.isBlank) return 'email cannot be empty';
                  //     if (!v.isEmail) return 'Valid';
                  //   },
                  // ),
                  SizedBox(height: 20),
                  TextFormField(
                      controller: password,
                      validator: (v) {
                        if (v.isBlank)
                          return 'blank';
                        else
                          return null;
                      }),
                  // CustomTextField(
                  //   validator: (v) {
                  //     if (v == null || v.isBlank) return 'Email cannot be empty ';
                  //     if (!v.isEmail) return 'Valid';
                  //   },
                  //   borderRadius: 10,
                  //   prefixIcon: Icons.lock,
                  //   controller:password,
                  //   hintText: 'password',
                  //   hintcolor: Colors.white,
                  // ),
                  SizedBox(height: 20),

                  Container(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () async {
                        if (formkey.currentState.validate()) {
                          final result = await auth.signInWithEmailAndPassword(
                              email: email.text, password: password.text);
                          if (result.user.uid == null)
                            Get.snackbar('Failed', 'Logging in');
                          else
                            Get.to(HomeView(), binding: HomeBinding());
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.deepOrange),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(onPressed: () async {
                  final result= await auth.signInAnonymously();
                  if(result.user!=null)
                  Get.snackbar('completed', 'succesful');
                
                  }, child: Text('Sign In anon')),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Get.to(ForgotPassword());
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(Register(height: height));
                        },
                        child: Text(
                          'Create account ',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text('Forgot Password'),
        ],
      )),
    );
  }
}

class Register extends StatelessWidget {
  const Register({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: height * .4,
        child: Column(
          children: [],
        ),
      ),
    ));
  }
}
