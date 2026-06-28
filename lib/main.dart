import 'package:flutter/material.dart';
import 'package:hello_curio/signup.dart';
import 'package:hello_curio/splash_screen.dart';
//import 'ui_helper/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curio Tech',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    super.key,
    required this.title,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText = TextEditingController();
  var passwordText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),

              SizedBox(height: 20),

              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 183, 108, 207),
                      width: 2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.yellow,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.email),
                    onPressed: () {
                      print("Email field");
                    },
                  ),
                  labelText: 'Email',
                  hintText: 'Enter your email',
                ),
              ),

              SizedBox(height: 20),

              TextField(
                obscureText: true,
                controller: passwordText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: () {
                      print("Password field");
                    },
                  ),
                  labelText: 'Password',
                  hintText: 'Enter your password',
                ),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                child: Text("Login"),
                onPressed: () {
                  String email = emailText.text;
                  String password = passwordText.text;

                  print("Email: $email");
                  print("Password: $password");
                },
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    child: Text("Sign Up"),
                    onPressed: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context){
                        return Signup();
                      })
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}