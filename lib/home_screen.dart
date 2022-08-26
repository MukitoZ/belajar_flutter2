import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/download.png", width: 70, height: 70),
            const SizedBox(
              height: 36,
            ),
            const Text(
              "Nikmati Obrolan Bebas Dengan Orang-orang Terdekatmu",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const RegisterScreen();
                }));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text("Sign Up"),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  side: const BorderSide(width: 1, color: Colors.green),
                  elevation: 3,
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text(
                  "Sign In",
                  style: TextStyle(color: Colors.green),
                )),
            const SizedBox(
              height: 16,
            ),
            TextButton(
                onPressed: () {}, child: const Text("Lewati untuk Sekarang"))
          ],
        ),
      ),
    );
  }
}
