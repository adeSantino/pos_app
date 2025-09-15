import 'package:flutter/material.dart';

// Import your screens
import 'package:pos_app/components/dashboard.dart';
import 'package:pos_app/components/checkout.dart';
import 'package:pos_app/components/reports.dart';
import 'package:pos_app/components/login.dart';
import 'package:pos_app/components/register.dart';

void main() {
  runApp(const POSApp());
}

class POSApp extends StatelessWidget {
  const POSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POS with RFID',
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Dashboard is now the start screen
      routes: {
        '/': (context) => const DashboardScreen(), // Dashboard as home
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/checkout': (context) => const CheckoutScreen(),
        '/reports': (context) => const ReportsScreen(),
      },
    );
  }
}
