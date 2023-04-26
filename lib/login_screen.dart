import 'package:flutter/material.dart';
import 'package:submission_1/main_screen.dart';

Color inputColor = const Color.fromRGBO(227, 242, 193, 1);
Color mainColor = const Color.fromRGBO(201, 219, 178, 1);
OutlineInputBorder focusedInputStyle = OutlineInputBorder(
  borderSide: BorderSide(
    color: mainColor,
    width: 2,
  ),
  borderRadius: BorderRadius.circular(8)
);
OutlineInputBorder inputStyle = OutlineInputBorder(
  borderSide: BorderSide(
    color: inputColor, 
    width: 2,
  ),
  borderRadius: BorderRadius.circular(8)
);
OutlineInputBorder inputBorderRadius = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
);


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState () => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = '';
  String password = '';
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(170, 200, 167, 1),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                children: [
                  Container(
                    width: 300,
                    margin: const EdgeInsets.only(
                      bottom: 50
                    ),
                    child: Image.asset('images/login.png'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: inputStyle,
                      focusedBorder: focusedInputStyle,
                      hintText: 'Enter your username...'
                    ),
                    onChanged: (value) {
                      setState(() {
                        username = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    obscureText: showPassword,
                    decoration: InputDecoration(
                      enabledBorder: inputStyle,
                      focusedBorder: focusedInputStyle,
                      hintText: 'Enter password...',
                      suffixIcon: IconButton(
                        onPressed: () => setState(() {
                          showPassword = !showPassword;
                        }),
                        icon: Icon(showPassword ? Icons.visibility_off : Icons.visibility),
                        color: mainColor,
                      )
                    ),
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (username == 'username' && password == 'password') {
                        // message = 'User is valid';
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return MainScreen();
                        }));
                      } else {
                        String message = 'User is invalid';
                        showDialog(
                          context: context, 
                          builder: (context) {
                            return AlertDialog(
                              content: Text(message),
                            );
                          }
                        );
                      }

                    }, 
                    icon: const Icon(Icons.login), 
                    label: const Text('Login'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: mainColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}