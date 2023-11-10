import 'package:festa_task/controller/home_page_provider.dart';

class ApiEndpoints {
  static String baseUrl = "https://randomuser.me/api/?results=100";

  static String setfilter(String gender) {
    return "gender=$gender";
  }
}
