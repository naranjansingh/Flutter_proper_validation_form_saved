import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';
  String _phone = '';
  String _gender = '';
  String _country = '';
  String _state = '';
  String _city = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Process the data or make an API request
      // Here, we are just printing the form data
      print('Name: $_name');
      print('Email: $_email');
      print('Phone: $_phone');
      print('Gender: $_gender');
      print('Country: $_country');
      print('State: $_state');
      print('City: $_city');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Validation Demo',


      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Validation Demo'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Name',
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),

                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Name';
                    }
                    return null;
                  },

                  onChanged: (value) {
                    // do something
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(

                  decoration: InputDecoration(
                      hintText: 'Email',
                      counterText: "",
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },

                  onChanged: (value) {
                    // do something
                  },

                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Phone',
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Phone Number';
                    }

                    return null;
                  },
                  onChanged: (value) {
                    // do something
                  },
                  onSaved: (value) {
                    _phone = value!;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Gender',
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),

                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Gender';
                    }

                    return null;
                  },

                  onChanged: (value) {
                    // do something
                  },
                  onSaved: (value) {
                    _gender = value!;
                  },

                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Country',
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),

                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Country';
                    }
                    return null;
                  },

                  onChanged: (value) {
                    // do something
                  },
                  onSaved: (value) {
                    _country = value!;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'State',
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),

                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your State';
                    }

                    return null;
                  },

                  onChanged: (value) {
                    // do something
                  },


                  onSaved: (value) {
                    _state = value!;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'City',
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),

                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your City';
                    }

                    return null;
                  },
                  onChanged: (value) {
                    // do something
                  },
                  onSaved: (value) {
                    _city = value!;
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // <-- Radius
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}