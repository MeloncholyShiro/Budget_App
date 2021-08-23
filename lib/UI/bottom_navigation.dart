import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graysoft_budget/cubit/bottom_navigation_cubit.dart';

class BottomNavigationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final int selectedIndex = context.read<BottomNavigationCubit>().state;

    return Container(
      width: size.width,
      height: 80,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomPaint(
            size: Size(size.width, 80),
            painter: BNBCustomPainter(),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.add,
                size: 32,
                color: Colors.greenAccent,
              ),
              elevation: 0.1,
              onPressed: () {},
            ),
          ),
          Container(
            width: size.width,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: selectedIndex == 0 ? Colors.orange : Colors.grey.shade400,
                  ),
                  onPressed: () => context.read<BottomNavigationCubit>().getHome(),
                  splashColor: Colors.white,
                ),
                IconButton(
                  icon: Icon(
                    Icons.paid,
                    color: selectedIndex == 1 ? Colors.orange : Colors.grey.shade400,
                  ),
                  onPressed: () => context.read<BottomNavigationCubit>().getTasks(),
                ),
                Container(
                  width: size.width * 0.20,
                ),
                IconButton(
                  icon: Icon(
                    Icons.mic,
                    color: selectedIndex == 2 ? Colors.orange : Colors.grey.shade400,
                  ),
                  onPressed: () => context.read<BottomNavigationCubit>().getNotification(),
                ),
                IconButton(
                  icon: Icon(
                    Icons.person,
                    color: selectedIndex == 3 ? Colors.orange : Colors.grey.shade400,
                  ),
                  onPressed: () => context.read<BottomNavigationCubit>().getProfile(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
