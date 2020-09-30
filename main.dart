import 'package:flutter/material.dart';

main() {
  var materialApp = MaterialApp(
    title: "Login App",
    home: MainPage(),
  );
  runApp(materialApp);
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController number = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Form"),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Enter Your Details Here",
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 25),
              TextFormField(
                controller: number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Mobile Number",
                ),
              ),
              SizedBox(height: 25),
              RaisedButton(
                child: Text("SUBMIT"),
                onPressed: submit,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void submit() {
    print('Name: ' + name.text);
    print('Email: ' + email.text);
    print('Mobile Number: ' + number.text);
  }
}
