import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pageview_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Faça seu login',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  'Preencha os campos abaixo para acessar sua conta.',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'email',
                  filled: true,
                  fillColor: const Color(0xFFF7F7F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe seu email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: _passwordController,
                obscureText: _isObscure,
                decoration: InputDecoration(
                  hintText: 'Senha',
                  filled: true,
                  fillColor: const Color(0xFFF7F7F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  suffix: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe sua senha';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20.0),
                  ),
                  child: Text(
                    'Esqueceu a senha?',
                    style: TextStyle(color: Color(0xFF0D6EFD)),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageViewScreen()),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 70.0),
                    textStyle: TextStyle(fontSize: 18.0),
                    backgroundColor: Color(0xFF0D6EFD),
                  ),
                  child: Text(
                    'Entrar',
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(height: 40.0),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Não tem uma conta?          Inscrever-se \n   \n                  ou Conecte',
                  style: TextStyle(
                    color: Color(0xFF0D6EFD),
                    fontSize: 17.0,
                  ),
                ),
              ),
              SizedBox(height: 145.0),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/5968/5968764.png',
                          width: 40.0),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/2111/2111463.png',
                          width: 40.0),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/733/733579.png',
                          width: 40.0),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}