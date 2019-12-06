import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final List<String> mentor = [
    'mentor',
    'mentee',
  ];

  final List<String> programmingLangs = [
    'Drat',
    'Java',
    'Kotlin',
    'C++',
  ];
  final _formKey = GlobalKey<FormState>();

  String currentLang = 'Programming Language';
  String currentData = 'Mentor or Mentee';
  bool gender = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownButtonFormField<String>(
                    hint: Text(currentData),
                    onChanged: (mentor) {
                      setState(() {
                        currentData = mentor;
                      });
                    },
                    items: mentor.map<DropdownMenuItem<String>>((mentor) {
                      return DropdownMenuItem(
                        value: mentor,
                        child: Text(mentor),
                      );
                    }).toList()),
                SizedBox(
                  height: 15,
                ),
                DropdownButtonFormField<String>(
                    hint: Text(currentLang),
                    onChanged: (prl) {
                      setState(() {
                        currentLang = prl;
                      });
                    },
                    items: programmingLangs.map<DropdownMenuItem<String>>((prl) {
                      return DropdownMenuItem(
                        value: prl,
                        child: Text(prl),
                      );
                    }).toList()),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Male'),
                    SizedBox(
                      width: 15,
                    ),
                    CupertinoSwitch(
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                        print(gender);
                      },
                      value: gender,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Female')
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text('Signup'),
                    onPressed: (){},
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
