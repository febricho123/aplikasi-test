import 'package:flutter/material.dart';
import '../mixins/validationpgtrn.dart';

class RegisterScreen extends StatefulWidget {
  createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> with Validation {
  final fromKey = GlobalKey<FormState>(

  );

  String name ='';
  String email ='';
  String password ='';
  String number ='';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(30.0),
        child: Form(
        key: fromKey,
          child: Column(
            children: [
              nameField(),
              emailField(),
              passwordField(),
              numberField(),
              registerButton()
            ],
          )
          )
    );
  }
  Widget nameField() {
    return TextFormField(
      decoration: InputDecoration(
          icon: Icon(Icons.supervised_user_circle,size: 40.0,),
          labelText: 'Username',
          hintText: 'masukan Username',
      ),
      validator: validateName,
      onSaved: (String value){
        name = value;
      },
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        icon: Icon(Icons.email,size: 40.0,),
        labelText: 'Email',
        hintText: 'email@example.com',
      ),
      validator: validateEmail,
      onSaved: (String value){
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.vpn_key,size: 40.0,),
        labelText: 'Password',
        hintText: 'Enter Password',
      ),
      validator: validatePassword,
      onSaved: (String value){
        password = value;
      },
    );
  }
  Widget numberField() {
    return TextFormField(
      decoration: InputDecoration(
          icon: Icon(Icons.phone,size: 40.0,),
          labelText: 'Nomor HP',
          hintText: 'Masukan no HP',
      ),
      validator: validateNumber,
      onSaved: (String value){
        number = value;
      },
    );
  }
  Widget registerButton() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 90.0),
        ),
        RaisedButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.only(left: 70.0,right: 70.0,top: 30.0,bottom: 30.0),
          color: Colors.blueAccent,
          onPressed: () {
            if (fromKey.currentState.validate()){
                fromKey.currentState.save();

                  print('Nama : $name');
                  print('Email: $email');
                  print('password: $password');
            }
          },
             child: Text('Simpan'),
        )
    ]
    );
  }
}