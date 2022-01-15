import 'package:flutter/material.dart';
import 'package:registration_screen/page/my_home_page.dart';

import 'package:registration_screen/model/model.dart';

class UserInfoPage extends StatelessWidget {
  final User? userInfo;
  const UserInfoPage({Key? key, required this.userInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter login demo',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              _logoutOnRegistrationScreen(context);
            },
            child: const Text(
              'Logout',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(50),
            child: const Center(
              child: Text(
                'Welcome',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,            
              children: [
                Text('email: ${userInfo?.email}'),
                const SizedBox(
                  height: 5,
                ),
                Text('password: ${userInfo?.password}'),
              ],
            ),
          )
        ],
      ),
      //),
    );
  }

  void _logoutOnRegistrationScreen(BuildContext context) async {
    Route route = MaterialPageRoute(builder: (context) => MyHomePage());
    final result = await Navigator.push(context, route);
  }
}
