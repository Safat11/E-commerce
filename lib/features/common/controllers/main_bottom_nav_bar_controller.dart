import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MainBottomNavBarController extends GetxController {
  int _selectedIndex = 0;

  int get getSelectedIndex => _selectedIndex;

  get selectedIndex => null;
 
  void changeIndex(int index) {
    _selectedIndex = index;
    update();
  }

  void moveToCategory(){
    changeIndex(1);
  }
  void backToHome(){
    changeIndex(0);
  }
}