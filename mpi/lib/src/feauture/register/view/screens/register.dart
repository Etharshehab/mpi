import 'package:flutter/material.dart';
import 'package:mpi/src/core/widget/customappbar.dart';
import 'package:mpi/src/core/widget/customelvetedbutton.dart';
import 'package:mpi/src/core/widget/customtextfield.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nationalIdController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _tokenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappBar(text: 'Register'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  label: 'Name',
                  controller: _nameController,
                  validator: (value) {
                    if (value == null || value.length < 3) {
                      return 'Name must be at least 3 characters';
                    }
                    return null;
                  },
                  preifixicon: Icons.person,
                  hinttext: 'please enter your name',
                ),
                CustomTextField(
                  label: 'National ID',
                  controller: _nationalIdController,
                  validator: (value) {
                    if (value == null || value.length != 14) {
                      return 'National ID must be 14 digits';
                    }
                    return null;
                  },
                  preifixicon: Icons.perm_identity,
                  hinttext: 'please enter your national id',
                ),
                CustomTextField(
                  label: 'Phone Number',
                  controller: _phoneController,
                  validator: (value) {
                    if (value == null || value.length != 11) {
                      return 'Phone number must be 11 digits';
                    }
                    return null;
                  },
                  preifixicon: Icons.phone,
                  hinttext: 'please enter your phone number',
                ),
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
                  hinttext: '',
                ),
                CustomTextField(
                  label: 'Token',
                  controller: _tokenController,
                  validator: (value) {
                    if (value == null || value.length < 5) {
                      return 'Token must be at least 5 characters';
                    }
                    return null;
                  },
                  preifixicon: Icons.token,
                  hinttext: 'please enter the token',
                ),
                const SizedBox(height: 20),
                CustomElvatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Registration Successful')));
                    }
                  },
                  text: 'Register',
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  child: const Text('Already have an account? Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
