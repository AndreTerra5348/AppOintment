import 'package:flutter/material.dart';

class ClientRegisterPage extends StatelessWidget {
  const ClientRegisterPage({super.key});
  static const Key nameTextFormKey = Key("nameTextFormKey");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Client Registration")),
      body: TextFormField(
        key: nameTextFormKey,
        decoration: const InputDecoration(labelText: 'Name'),
      ),
    );
  }
}
