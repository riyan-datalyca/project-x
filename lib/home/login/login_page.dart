import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
            child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(color: Colors.red),
                child: Image.network('https://picsum.photos/id/237/200/300'))),
        Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8.0,
                spreadRadius: 0.0,
                blurStyle: BlurStyle.outer,
              ),
            ],
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(),
              ElevatedButton(onPressed: () {}, child: Text("Login"))
            ],
          ),
        ),
        ElevatedButton(onPressed: () {}, child: const Text('Skip Login'))
      ],
    );
  }
}
