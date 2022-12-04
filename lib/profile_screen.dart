import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'images/productalogo.png',
                fit: BoxFit.contain,
                height: 32,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.logout,
                  color: Colors.grey,
                ),
              )
            ],
          )),
    );
  }
}
