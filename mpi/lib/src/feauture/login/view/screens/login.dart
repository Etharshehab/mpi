import 'package:flutter/material.dart';

import 'package:mpi/src/core/style/strings.dart';
import 'package:mpi/src/core/widget/customappbar.dart';
import 'package:mpi/src/core/widget/customelvetedbutton.dart';
import 'package:mpi/src/core/widget/customtextfield.dart';
import 'package:mpi/src/feauture/login/model/logindatamodel.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customappBar(text: Strings.text2),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(children: [
              SizedBox(
                height: 400,
                child: ListView.builder(
                    itemCount: loginFields.length,
                    itemBuilder: (context, index) {
                      return CustomTextField(
                        model: loginFields[index],
                      );
                    }),
              ),
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
            ]),
          ),
        ));
  }
}
