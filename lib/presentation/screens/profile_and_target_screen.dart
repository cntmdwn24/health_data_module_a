import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_data_module_a/common/colors.dart';
import 'package:health_data_module_a/presentation/components/custom_button.dart';
import 'package:health_data_module_a/presentation/components/custom_gender_button.dart';
import 'package:health_data_module_a/presentation/screens/splash_screen.dart';
import '../components/custom_text_field.dart';

class ProfileAndTargetScreen extends StatelessWidget {
  const ProfileAndTargetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: signUpScreenAppbarColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
              );
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
          title: Text(
            'Profile & Target',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 145),
                child: Text(
                  'Hi username99',
                  style: TextStyle(
                    fontSize: 30,
                    color: signInScreenInButtonColor,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 240),
                child: Text(
                  'Profile,',
                  style: TextStyle(
                    color: signInScreenInButtonColor,
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomGenderButton(isMan: true, isSelect: true),
                  CustomGenderButton(isMan: false, isSelect: false),
                ],
              ),
              SizedBox(height: 30),
              CustomTextField(
                icon: Icons.person,
                hint: 'Competitor 99',
                suffixText: '',
                svgName: '',
                controller: '',
              ),
              CustomTextField(
                isSvg: true,
                svgName: 'height-svgrepo-com.svg',
                hint: '182.5',
                suffixText: 'Cm',
                controller: '',
              ),
              CustomTextField(
                icon: Icons.monitor_weight_outlined,
                hint: '80.5',
                suffixText: 'Kg',
                controller: '',
              ),
              CustomTextField(
                icon: Icons.cake_outlined,
                hint: '1986.09.30',
                suffixText: '',
                controller: '',
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 240),
                child: Text(
                  'Target,',
                  style: TextStyle(
                    fontSize: 31,
                    color: signInScreenInButtonColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomTextField(
                icon: Icons.directions_walk_rounded,
                hint: '5,000',
                suffixText: 'Steps',
                controller: '',
              ),
              CustomTextField(
                icon: Icons.water_drop_outlined,
                hint: '2,000',
                suffixText: 'ml',
                controller: '',
              ),
              CustomButton(text: 'Complete', screen: () => SplashScreen()),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
