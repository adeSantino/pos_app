import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'auth/auth_gate.dart';

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
      title: 'POS Application',
      home: AuthGate(),
    );
  }
}
