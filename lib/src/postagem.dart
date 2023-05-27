import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;


Post(
  {
    required this.userId,
    required this.id,
    required this.title,
    required this.body});
    factory Post.fromJson(Map<String, dynamic> json){
      return Post(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);

    }}

    Future<Post> pegaPost() async{
      final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/3"));

      if (response.statusCode == 200){
        return Post.fromJson(json.decode(response.body));
      }else {
        throw Exception('Falhou na requisição');
      }
    }
    class Postagem extends StatefulWidget{
      State<Postagem> createState() => _Postagem();
    }

    class _Postagem extends State<Postagem>{
      
    }
    late Future<Post> postagem;
    @override
    void initState(){
      super.initState();
      postagem = pegaPost();
    }

    Container(
      color: Colors.amber,
      child: FutureBuilder<Post>(
        future: postagem,
        builder: (context, snapshot){
          if (snapshot.hasData){
            return Text(snapshot.data!.title);
          } else if (snapshot.hasError){
            return Text('Erro: ${snapshot.error}');
          } else {
            return CircularProgressIndicator();
          }
        },
      )
    ),
 

