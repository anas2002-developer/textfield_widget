import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  var Eemail = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: Eemail,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: "Email",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                                BorderSide(color: Colors.cyan, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.pink,
                            ),
                            onPressed: () {},
                          ),
                          suffixText: "suffix",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.green,
                          )),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 300,
                    child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: "Password",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.cyan, width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.black12, width: 4)),
                        ),
                    )),
              ),

              Container(
                width: 300,
                child: ElevatedButton(onPressed: (){

                  String email = Eemail.text.toString();
                  print("Email : $email");

                }, child: Text("Login")),
              )
            ],
          ),
        ));
  }
}
