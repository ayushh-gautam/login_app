import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Color.fromARGB(255, 194, 235, 255),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
            child: Column(
              children: [
                const Text(
                  'Let\'s get started!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Create an account to access all the features'),
                const SizedBox(
                  height: 13,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      /* Outline border is the border that is created initially  */
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(CupertinoIcons.person),
                      hintText: 'Enter your full name',
                      hintStyle: const TextStyle(fontSize: 18),
                      labelText: 'Full Name',
                      labelStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      /* Outline border is the border that is created initially  */
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(CupertinoIcons.mail),
                      hintText: 'Enter your email',
                      hintStyle: const TextStyle(fontSize: 18),
                      labelText: 'Email',
                      labelStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      /* Outline border is the border that is created initially  */
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(CupertinoIcons.person),
                      hintText: 'Enter your contact number',
                      hintStyle: const TextStyle(fontSize: 18),
                      labelText: 'Contact Number',
                      labelStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(CupertinoIcons.lock),
                      hintText: 'Password',
                      hintStyle: const TextStyle(fontSize: 18),
                      labelText: 'Password',
                      labelStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    right: 40,
                    bottom: 10,
                  ),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      /* Outline border is the border that is created initially  */
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(CupertinoIcons.lock),
                      hintText: 'Confirm Password',
                      hintStyle: const TextStyle(fontSize: 18),
                      labelText: 'Confirm Password',
                      labelStyle: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'CREATE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 30,
                      ),
                      child: Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'loginPage');
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        )),
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
