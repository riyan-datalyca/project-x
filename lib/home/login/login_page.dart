import 'package:flutter/material.dart';
import 'package:project_x/home/login/login_components.dart';
import 'package:project_x/home/utils/constants.dart' as constant;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AppBar titleApp = AppBar(
    title: const Text(constant.projectName),
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 500) {
          return Scaffold(
            appBar: titleApp,
            body: Row(
              children: const [CompanyLogo(), SizedBox(width: 500,
                child: LoginContainer())],
            ),
          );
        } else {
          return Scaffold(
            appBar: titleApp,
            body: Column(
              children: const [CompanyLogo(), LoginContainer()],
            ),
          );
        }
      },
    );
  }
}
