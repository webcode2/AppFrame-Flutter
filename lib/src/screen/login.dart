import 'package:app_frame/src/screen/registration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // transform: GradientRotation(1),
              colors: [Colors.green.shade50, Colors.green.shade200])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: AlignmentDirectional.topEnd,
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 20, vertical: 20),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistrationScreen()),
                      );
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.green.shade100)),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        letterSpacing: 2.3,
                        fontSize: 18,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/IT_DEV_Logo_Original.png',
                  width: 350,
                  height: 350,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    style: const TextStyle(fontSize: 20, letterSpacing: 1.9),
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    style: const TextStyle(letterSpacing: 2, fontSize: 20),
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(
                          Size.fromHeight(50),
                        ),
                        backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    onPressed: () {
                      // perform login logic here
                      if (kDebugMode) {
                        print('Email: ${_emailController.text}');
                        print('Password: ${_passwordController.text}');
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            letterSpacing: 2.5,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w300,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
