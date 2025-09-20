import 'dart:convert';

import 'package:flutter_application_1/models/post_model.dart';
import 'package:http/http.dart' as http;

class PostRepository {
  String baseUrl="http://jsonplaceholder.typicode.com/comments?postId=1";
  Future<List<PostModel>> fetchUsers()async{
    final response=await http.get(Uri.parse(baseUrl));
    if(response.statusCode==200){
      List data=jsonDecode(response.body);
      return data.map((json)=>PostModel.fromJson(json)).toList();

    }else {
      throw Exception('failed to load');
    }
  }
}