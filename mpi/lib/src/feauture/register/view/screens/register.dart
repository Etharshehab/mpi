import 'package:flutter/material.dart';
import 'package:mpi/src/core/widget/customappbar.dart';
import 'package:mpi/src/core/widget/customelvetedbutton.dart';
import 'package:mpi/src/core/widget/customtextfield.dart';
import 'package:mpi/src/feauture/register/model/registermodel.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customappBar(text: 'Register'),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                      itemCount: registerfields.length,
                      itemBuilder: (context, index) {
                        return CustomTextField(
                          model: registerfields[index],
                        );
                      }),
                ),
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
        ));
  }
}
