import 'dart:convert';
import 'package:assignment/showModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class show extends StatefulWidget {
  @override
  _showState createState() => _showState();
}

class _showState extends State<show> {
  List<ShowModel> _shows = List<ShowModel>();

  Map data;
  List userData;

  Future fetchUsers() async {
    http.Response response =
        await http.get("http://dummy.restapiexample.com/api/v1/employees");
    data = json.decode(response.body);
    setState(() {
      userData = data["data"];
    });
    // var url = "http://dummy.restapiexample.com/api/v1/employees";
    // var response = await http.get(url);

    // var show = List<ShowModel>();
    // if (response.statusCode == 200) {
    //   var users = json.decode(response.body);
    //   Map data = json.decode(response.body);

    //   for (var showJason in users) {
    //     show.add(ShowModel.fromJson(showJason));
    //   }
    // }
    // return show;
  }

  @override
  void initState() {
    // fetchUsers().then((value) {
    //   setState(() {
    //     _shows.addAll(value);
    //   });
    // });
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Display"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: ListView.builder(
          itemCount: userData == null ? 0 : userData.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5.0,
              color: Colors.grey.shade200,
              margin: EdgeInsets.all(12.0),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "ID: ${userData[index]["id"]}",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Name: ${userData[index]["employee_name"]}",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Salary: ${userData[index]["employee_salary"]}",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Age: ${userData[index]["employee_age"]}",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
