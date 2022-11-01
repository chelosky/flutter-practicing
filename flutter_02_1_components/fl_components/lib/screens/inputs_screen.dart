import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Marcelo',
      'last_name': 'Lazo',
      'email': 'Marcelo@hotmail.com',
      'password': '123456',
      'role': 'ADMIN',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'NAME',
                  hintText: 'USERNAME',
                  icon: Icons.group_add_outlined,
                  suffixIcon: Icons.accessible_forward_outlined,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'LASTNAME',
                  hintText: 'OTHER NAME',
                  icon: Icons.group_add_outlined,
                  suffixIcon: Icons.accessible_forward_outlined,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'EMAIL',
                  hintText: 'USERS EMAIL',
                  icon: Icons.group_add_outlined,
                  suffixIcon: Icons.accessible_forward_outlined,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'PASSWORD',
                  hintText: 'USER PASS',
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                      value: 'ADMIN',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'NORMAL',
                      child: Text('Normal'),
                    )
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'ADMIN';
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar'),
                    ),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      return;
                    }
                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
