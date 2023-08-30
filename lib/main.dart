import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'api/base/base_api.dart';
import 'api/services/user_api_service.dart';
import 'api/services/post_api_service.dart';
// Adjust the import path

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<BaseApi>(
          create: (_) => BaseApi(baseUrl: 'http://localhost:3000'),
        ),
        ProxyProvider<BaseApi, UserApiService>(
          update: (_, baseApi, __) => UserApiService(baseApi),
        ),
        ProxyProvider<BaseApi, PostApiService>(
          update: (_, baseApi, __) => PostApiService(baseApi),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginPage(),
    );
  }
}
