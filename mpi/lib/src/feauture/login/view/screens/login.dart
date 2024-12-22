import 'package:flutter/material.dart';
import 'package:mpi/src/core/style/strings.dart';
import 'package:mpi/src/core/widget/customappbar.dart';
import 'package:mpi/src/core/widget/customelvetedbutton.dart';
import 'package:mpi/src/core/widget/customtextfield.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappBar(text: Strings.text2),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                label: 'Email',
                controller: _emailController,
                validator: (value) {
                  if (value == null || !value.contains('@')) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
                preifixicon: Icons.email,
                hinttext: 'please enter your email',
              ),
              CustomTextField(
                label: 'Password',
                controller: _passwordController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Password must be at least 8 characters';
                  }
                  return null;
                },
                preifixicon: Icons.password,
                hinttext: 'please enter your password',
              ),
              const SizedBox(height: 20),
              CustomElvatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Login Successful')));
                  }
                },
                text: 'Login',
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
                },
                child: const Text('Don\'t have an account? Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
