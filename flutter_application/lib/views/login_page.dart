import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"), centerTitle: true),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor insira o email';
                  }
                  // Adicionar validação de email
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor insira a senha';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Processo de login
                  }
                },
                child: Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  // Navegar para tela de cadastro
                },
                child: Text('Cadastrar'),
              ),
              TextButton(
                onPressed: () {
                  // Navegar para tela de esqueci a senha
                },
                child: Text('Esqueci a Senha'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
