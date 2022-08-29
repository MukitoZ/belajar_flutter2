import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late bool passwordVisible;

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle defaultTextStyle = const TextStyle(color: Colors.grey);
    TextStyle linkTextStyle = const TextStyle(color: Colors.blue);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/download.png",
              height: 70,
              width: 70,
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: fullNameController,
              decoration: const InputDecoration(labelText: "Full Name"),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: passwordController,
              obscureText: !passwordVisible,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Masukkan Password Anda",
                suffixIcon: IconButton(
                  icon: Icon(
                    passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text("Sign Up")),
            const SizedBox(
              height: 26,
            ),
            const Text("-------------------------or-------------------------"),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(59, 89, 152, 100),
                  shadowColor: Colors.blueAccent,
                  elevation: 3,
                  minimumSize: const Size.fromHeight(50),
                ),
                icon: Image.asset(
                  "assets/facebook.png",
                  width: 20,
                  height: 20,
                ),
                label: const Text(
                  "Sign up dengan Facebook",
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 3,
                  minimumSize: const Size.fromHeight(50),
                ),
                icon: Image.asset("assets/google.png", width: 20, height: 20),
                label: const Text(
                  "Sign up dengan Google",
                  style: TextStyle(color: Colors.grey),
                )),
            const SizedBox(
              height: 16,
            ),
            RichText(
              text: TextSpan(style: defaultTextStyle, children: <TextSpan>[
                const TextSpan(text: "Dengan Mendaftar anda telah menyetujui "),
                TextSpan(
                    text: "ketentuan servis",
                    style: linkTextStyle,
                    recognizer: TapGestureRecognizer()),
                const TextSpan(text: " dan "),
                TextSpan(
                    text: "ketentuan privasi",
                    style: linkTextStyle,
                    recognizer: TapGestureRecognizer())
              ]),
            ),
            const SizedBox(
              height: 26,
            ),
            RichText(
              text: TextSpan(style: defaultTextStyle, children: <TextSpan>[
                const TextSpan(text: "Sudah punya akun? "),
                TextSpan(
                    text: "Log in",
                    style: linkTextStyle,
                    recognizer: TapGestureRecognizer())
              ]),
            )
          ],
        ),
      ),
    );
  }
}
