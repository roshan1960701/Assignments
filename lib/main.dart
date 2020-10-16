import 'package:assignment/show.dart';
import 'package:assignment/ui.dart';
import 'package:assignment/user_model.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String _name, _salary, _age;
  String select;
  int age = 0;
  var selectedYear;
  UserModel _userModel;
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
            context: context,
            // initialDate: selectedDate,
            firstDate: new DateTime(1980),
            initialDate: new DateTime(2020),
            lastDate: DateTime.now())
        .then((DateTime dt) {
      setState(() {
        selectedYear = dt.year;
        age = (2020 - selectedYear).toInt();
        _age = age.toString();
      });
    });

    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
    // if (picked != null && picked != selectedDate) {
    //   setState(() {
    //     selectedDate = picked;
    //     print(selectedDate);
    //     // var now = new DateTime.now();
    //     // var formatter = new DateFormat('yyyy-MM-dd');
    //     // String formattedDate = formatter.format(now);
    //     // select = selectedDate.toString();
    //   });
    // }
  }

  void calculate() {
    setState(() {
      age = (2020 - selectedYear).toInt();
      _age = age.toString();
      print(_age);
    });
  }

  Future<UserModel> sendData(String name, String salary, String age) async {
    final String apiurl = "http://dummy.restapiexample.com/api/v1/create";
    var response = await http
        .post(apiurl, body: {"name": name, "salary": salary, "age": age});

    if (response.statusCode == 200) {
      final String responseString = response.body;

      return userModelFromJson(responseString);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 100.0, left: 60.0, right: 60.0),
            child: TextFormField(
                style: TextStyle(
                  color: Colors.blue,
                ),
                maxLength: 100,
                onChanged: (text) {
                  _name = text;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please Enter Name";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: "Name",
                    border: OutlineInputBorder())),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 60.0, right: 60.0),
            child: TextFormField(
                style: TextStyle(
                  color: Colors.blue,
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  _salary = text;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please Enter Salary";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: "Salary",
                    border: OutlineInputBorder())),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Container(
                margin: EdgeInsets.only(left: 100.0, right: 100.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "${selectedDate.toLocal()}".split(' ')[0],
                      style: TextStyle(fontSize: 18.0, color: Colors.blue),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.calendar_today,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          _selectDate(context);
                        })
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: MaterialButton(
                color: Colors.blue,
                minWidth: 150,
                height: 40.0,
                elevation: 10.0,
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onPressed: () async {
                  final UserModel user = await sendData(_name, _salary, _age);

                  setState(() {
                    _userModel = user;
                  });
                }),
          ),
          SizedBox(
            height: 12.0,
          ),
          _userModel == null
              ? Container()
              : Text(
                  "Record is inserted id = ${_userModel.data.id}, Name= ${_userModel.data.name}, Age= ${_userModel.data.age}"),
          Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                    color: Colors.blue,
                    minWidth: 120,
                    height: 40.0,
                    elevation: 10.0,
                    child: Text(
                      "Display",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => show()));
                    }),
                MaterialButton(
                    color: Colors.blue,
                    minWidth: 120,
                    height: 40.0,
                    elevation: 10.0,
                    child: Text(
                      "UI",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ui()));
                    })
              ],
            ),
          ),
          // MaterialButton(
          //     color: Colors.blue,
          //     minWidth: 120,
          //     height: 40.0,
          //     elevation: 10.0,
          //     child: Text(
          //       "UI-Slider",
          //       style: TextStyle(color: Colors.white, fontSize: 20.0),
          //     ),
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => CarouselDemo()));
          //     }),
        ],
      )),
    );
  }
}
