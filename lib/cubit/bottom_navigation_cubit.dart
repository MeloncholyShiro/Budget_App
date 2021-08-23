import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationCubit extends Cubit<int> {
  BottomNavigationCubit() : super(0);

  /// update index function to update the index onTap in BottomNavigationBar
  void updateIndex(int index) => emit(index);

  /// for navigation button on single page
  void getHome() => emit(0);
  void getTasks() => emit(1);
  void getNotification() => emit(2);
  void getProfile() => emit(3);
}
