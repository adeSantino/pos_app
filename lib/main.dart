import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:pos_app/main/dashboard.dart';
import 'package:pos_app/main/checkout.dart';
import 'package:pos_app/main/reports.dart';
import 'package:pos_app/main/login.dart';
import 'package:pos_app/main/register.dart';

void main() async{
  await Supabase.initialize(url: "https://zezehkbeskswjcarjnqv.supabase.co",
      anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InplemVoa2Jlc2tzd2pjYXJqbnF2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTc5MjAzMDAsImV4cCI6MjA3MzQ5NjMwMH0.onvQWa4oH4HoZM3yX5xe11onbCXX3WjInKVpyGQLP9Y"
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POS with RFID',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/checkout': (context) => const CheckoutScreen(),
        '/reports': (context) => const ReportsScreen(),
      },
    );
  }
}
