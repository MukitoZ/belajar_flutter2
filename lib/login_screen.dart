import 'package:belajar_flutter2/list.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
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
            Image.asset("assets/download.png", width: 70, height: 70),
            const SizedBox(
              height: 36,
            ),
            const Text(
              "Whatsapp KW",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text("Silahkan Login"),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                  labelText: "Username", hintText: "contoh: indocyber"),
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
              height: 36,
            ),
            ElevatedButton(
                onPressed: () {
                  String username = usernameController.text.toString();
                  String password = passwordController.text.toString();

                  print("username => $username");
                  print("password => $password");

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ListGenerator();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  minimumSize: const Size.fromHeight(50),
                ),
                child: const Text("Log in")),
            const SizedBox(
              height: 16,
            ),
            TextButton(onPressed: () {}, child: const Text("Lupa Password?")),
            const SizedBox(
              height: 16,
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
                  "Log in dengan Facebook",
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
                  "Log in dengan Google",
                  style: TextStyle(color: Colors.grey),
                )),
            const SizedBox(
              height: 16,
            ),
            RichText(
              text: TextSpan(style: defaultTextStyle, children: <TextSpan>[
                const TextSpan(text: "Tidak punya akun? "),
                TextSpan(
                    text: "Sign up",
                    style: linkTextStyle,
                    recognizer: TapGestureRecognizer()..onTap = () {})
              ]),
            )
          ],
        ),
      ),
    );
  }
}
