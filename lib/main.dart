import 'package:flutter/material.dart';

void main() => runApp(Aplikasiku());

class Aplikasiku extends StatelessWidget {
  const Aplikasiku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Screen',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
      ),
      backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            children: [
              const SizedBox(height: 60),
              Image.asset(
                'images/flutters.jpg',
                width: 80,
                height: 80,
              ),
              const SizedBox(height: 120),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(12), 
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), 
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(0, 3), 
                    ),
                  ],
                ),
                child: 
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(borderSide: BorderSide.none), 
                    contentPadding: EdgeInsets.symmetric(horizontal: 30), 
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12), 
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), 
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(0, 3), 
                    ),
                  ],
                ),
                child: TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(borderSide: BorderSide.none), 
                    contentPadding: EdgeInsets.symmetric(horizontal: 30), 
                  ),
                  obscureText: true, 
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  String username = _usernameController.text;
                  String password = _passwordController.text;
                  if (username == 'admin' && password == 'password') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuPage()),
                    );
                  } 
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Colors.blue,
                ),
                child: const Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Page',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
      ),
      backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            children: [ 
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OperasiPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.blueGrey
                ),
                child: const Text('Penjumlahan dan Pengurangan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GanjilGenapPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.blueGrey
                ),
                child: const Text('Bilangan Ganjil/Genap',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OperasiPage extends StatefulWidget {
  const OperasiPage({super.key});

  @override
  _OperasiPageState createState() => _OperasiPageState();
}

class _OperasiPageState extends State<OperasiPage> {
  final _num1Controller = TextEditingController();
  final _num2Controller = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Penjumlahan dan Pengurangan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _num1Controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Input Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _num2Controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Input Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      int num1 = int.parse(_num1Controller.text);
                      int num2 = int.parse(_num2Controller.text);
                      
                      setState(() {
                        _result = '${num1 + num2}';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text(
                      '+',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      int num1 = int.parse(_num1Controller.text);
                      int num2 = int.parse(_num2Controller.text);
                      setState(() {
                        _result = '${num1 - num2}';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text(
                      '-',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 150),
            
            Text(
              _result,
              style: const TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center, 
            ),
          ],
        ),
      ),
    );
  }
}


class GanjilGenapPage extends StatefulWidget {
  const GanjilGenapPage({super.key});

  @override
  _GanjilGenapPageState createState() => _GanjilGenapPageState();
}

class _GanjilGenapPageState extends State<GanjilGenapPage> {
  final _numberController = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Ganjil/Genap',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            Container(
              width: double.infinity, 
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.transparent, 
                borderRadius: BorderRadius.circular(12), 
                border: Border.all(color: Colors.grey), 
              ),
              child: TextField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Input Number',
                  border: InputBorder.none, 
                ),
                textAlign: TextAlign.center, 
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                int number = int.parse(_numberController.text);
                setState(() {
                  if (number % 2 == 0) {
                    _result = 'Genap';
                  } else {
                    _result = 'Ganjil';
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, 
              ),
              child: const Text(
                'Check',
                style: TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 150), 

            Text(
              _result,
              style: const TextStyle(
                fontSize: 40, 
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center, 
            ),
          ],
        ),
      ),
    );
  }
}

