import 'package:flutter/material.dart';
import 'package:food_app/pages/my_profile/widgets/payments.dart';
import 'package:food_app/pages/my_profile/widgets/user_details.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              UserDetails(),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(child: Text("Account details")),
                    Payments(),
                    Center(
                        child: Text(
                      "History details",
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
