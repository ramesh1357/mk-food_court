import 'dart:convert';

import 'package:flutter_application_1/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserRepositry {
  final String baseUrl="http://jsonplaceholder.typicode.com/posts";
  Future<List<UserModel>> fetchUsers()async{
    final response=await http.get(Uri.parse(baseUrl));
    if(response.statusCode==200){
      final List data=jsonDecode(response.body);
      return data.map((json)=>UserModel.fromJson(json)).toList();

    }else {
      throw Exception("failed to load");
    }
  }
}