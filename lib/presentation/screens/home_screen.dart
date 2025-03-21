import 'package:flutter/material.dart';
import 'package:health_data_module_a/common/colors.dart';
import 'package:health_data_module_a/presentation/components/custom_title_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: signUpScreenAppbarColor,
          title: Text(
            'MY HEALTH DATA',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              CustomTitleText(padding: 80.0, text: 'Hello Competitor99,'),
              Container(
                width: 350,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: [Text('asdf'), Text('asdf')]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
