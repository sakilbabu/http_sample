import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = "https://animechan.vercel.app/api/random";
  String? result;
  Future<http.Response> getAnimeQuotes() async {
    final response = await http.get(Uri.parse(url));

    print(response.statusCode);
    return response;
  }

  @override
  void initState() {
    getAnimeQuotes().then((value) {
      result = value.body;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: result == null ? CircularProgressIndicator() : Text(result!),
      ),
    );
  }
}
