// import 'dart:async';
// import 'dart:convert';

// import 'package:deltanews/services/http_service.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';

// enum Status { Registered, NotRegistered, Registering }

// class AuthProvider with ChangeNotifier {
//   Status _registeredInStatus = Status.NotRegistered;
//   Status get registeredInStatus => _registeredInStatus;

//   Future<Map<String, dynamic>> register(
//       String name, String email, String password) async {
//     final Map<String, dynamic> registrationData = {
//       'user': {"name": name, "email": email, "password": password}
//     };

//     _registeredInStatus = Status.Registering;
//     notifyListeners();
//     return await post(Uri.parse(HttpService.register),
//             body: json.encode(registrationData),
//             headers: {'constent-Type': 'application/json'})
//         .then(onValue().catchError(onError));
//   }

//   static Future<FutureOr> onValue(Response response) async {
//     var result;

//     return result;
//   }
// }
