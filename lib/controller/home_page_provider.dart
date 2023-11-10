import 'dart:convert';
import 'dart:math';

import 'package:festa_task/model/randomuser_api_model.dart';
import 'package:festa_task/utils/config/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePageController with ChangeNotifier {
  final random = Random().nextInt(99);
  RandomUserModel? randomUserData;
  String setgender = "male";
  int? userIndex;
  bool isloading = false;
  bool isprofileloading = true;

  fetchData() async {
    isloading = true;
    notifyListeners();
    final url = Uri.parse(
        '${ApiEndpoints.baseUrl}&${ApiEndpoints.setfilter(setgender)}');
    print(url);
    final response = await http.get(url);

    randomUserData = RandomUserModel.fromJson(jsonDecode(response.body));
    setUserIndex();
    print(randomUserData?.results);
    isloading = false;
    isprofileloading = false;
    notifyListeners();
  }

  setFilter(String value) {
    setgender = value;
    fetchData();
    notifyListeners();
  }

  setUserIndex() {
    userIndex = random;
    notifyListeners();
  }
}

enum Gender { male, female }
