import 'package:flutter/material.dart';

import '../Widgets/text_form-field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              Image.asset('assets/images/food-delivery-logo.png'),
              const SizedBox(height: 20),
              const Text(
                'Register',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 20),
              TextFormFieldWidget(
                type: TextInputType.text,
                hint: 'Name',
                prefixIcon: const Icon(Icons.person),
              ),
              const SizedBox(height: 15),
              TextFormFieldWidget(
                type: TextInputType.emailAddress,
                hint: 'Email Address',
                prefixIcon: const Icon(Icons.email),
              ),
              const SizedBox(height: 15),
              TextFormFieldWidget(
                type: TextInputType.visiblePassword,
                hint: 'Password',
                prefixIcon: const Icon(Icons.lock),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Register'),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
