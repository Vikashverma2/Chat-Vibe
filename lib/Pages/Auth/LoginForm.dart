import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          Text("Login to your account"),
          SizedBox(height: 40),
          TextField(
            decoration: InputDecoration(
              hintText: "Email address",
              prefixIcon: Icon(Icons.email_rounded),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: Icon(Icons.lock_rounded),
            ),
          ),
          SizedBox(height: 40),
          Container(
            height: 55,
            width: 200,
            child: Center(
                child: Text(
              "LOGIN",
              style: Theme.of(context).textTheme.headlineMedium,
            )),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
    );
  }
}
