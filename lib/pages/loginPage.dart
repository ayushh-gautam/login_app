import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app_/pages/signup_page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  String name = '';
  bool changebutton = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              // // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/loginImage.png',
                  height: 260,
                  width: 260,
                  fit: BoxFit.cover,
                ),
                const Text(
                  'Welcome Back!',
                  textScaleFactor: 1.8,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: username,
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return 'Enter username in correct form';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: const Icon(CupertinoIcons.person),
                          labelText: 'Enter your username',
                          labelStyle: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: password,
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty";
                          } else if (value.length < 6) {
                            return 'Password must be more than 6 character';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(CupertinoIcons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Enter your password ',
                          labelStyle: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: (() {
                          Navigator.pushNamed(context, 'welcomePage');
                        }),
                        child: Container(
                          height: 50,
                          width: 120,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(120),
                            color: Colors.blue,
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textScaleFactor: 1.2,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'or connect using',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 122, 122, 122)),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.facebook),
                            label: const Text('Facebook'),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          SizedBox(
                            width: 130,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red[600],
                                  elevation: 0),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.g_mobiledata_rounded,
                              
                              ),
                              label: const Text('Google'),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'signupPage');
                      },
                      child: Container(
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
