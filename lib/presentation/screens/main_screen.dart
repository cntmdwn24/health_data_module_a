import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_data_module_a/common/colors.dart';
import 'package:health_data_module_a/presentation/screens/alarm_screen.dart';
import 'package:health_data_module_a/presentation/screens/home_screen.dart';
import 'package:health_data_module_a/presentation/screens/mypage_screen.dart';
import 'package:health_data_module_a/presentation/screens/workout_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _screens = [
    HomeScreen(),
    AlarmScreen(),
    WorkoutScreen(),
    MypageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: signInScreenInButtonColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
          onTap: _onTap,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home-1-svgrepo-com.svg',
                color: _currentIndex != 0 ? Colors.grey : Colors.white,
                width: 25,
                height: 25,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/alarm-clock-svgrepo-com.svg',
                color: _currentIndex != 1 ? Colors.grey : Colors.white,
                width: 25,
                height: 25,
              ),
              label: 'Alarm',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/run-on-treadmill-exercise-work-out-run-svgrepo-com.svg',
                color: _currentIndex != 2 ? Colors.grey : Colors.white,
                width: 25,
                height: 25,
              ),
              label: 'Workout',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/user-svgrepo-com.svg',
                color: _currentIndex != 3 ? Colors.grey : Colors.white,
                width: 25,
                height: 25,
              ),
              label: 'My Page',
            ),
          ],
        ),
      ),
    );
  }
}
