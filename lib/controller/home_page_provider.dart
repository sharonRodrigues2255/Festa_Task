import 'package:festa_task/model/randomuser_api_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePageController with ChangeNotifier {
  RandomUserModel? randomUserData;

  fetchData() async {
    final url = Uri.parse('https://randomuser.me/api/?results=100');
    final response = await http.get(url);
    print(response.body);
  }
}
