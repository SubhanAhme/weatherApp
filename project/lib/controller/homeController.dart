import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project/model/userModel.dart';

import '../utils/constant.dart';

getData(city) async {
  var weatherData = ["karachi"];
  weatherData.add("${city}");
  var url =
      "https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=f5783e1fee68d6228723ecc46804ee40";
  var urlUpdate = Uri.parse(url);
  var response = await http.get(urlUpdate);
  var res = jsonDecode(response.body);

  return res;
}
