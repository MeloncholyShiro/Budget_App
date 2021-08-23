import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graysoft_budget/UI/bottom_navigation.dart';
import 'package:graysoft_budget/cubit/bottom_navigation_cubit.dart';
import 'package:graysoft_budget/screens/counter_screen.dart';
import 'package:graysoft_budget/screens/home_screen.dart';
import 'package:graysoft_budget/screens/introduction_screen.dart';
import 'package:graysoft_budget/screens/login_screen.dart';
import 'package:graysoft_budget/screens/mock_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationCubit(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/login',
        routes: {
          '/': (context) => IntroductionScreen(),
          '/login': (context) => LoginScreen(),
          '/application': (context) => MainScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _titleList = ['Home', 'Counter', 'Voice', 'Profile'];

  final _pageNavigation = [
    HomeScreen(),
    CounterScreen(),
    MockScreen(textContent: 'Voice Page'),
    MockScreen(textContent: 'Profile page')
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, int>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text(_titleList[state]),
          centerTitle: true,
        ),
        body: _buildBody(state),
        bottomNavigationBar: BottomNavigationMenu(),
      ),
    );
  }

  Widget _buildBody(int index) => _pageNavigation.elementAt(index);
}
