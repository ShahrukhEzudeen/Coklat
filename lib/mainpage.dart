
import 'dart:convert';
import 'package:job1/displayreport.dart';
import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {
  const mainpage({ key}) : super();

  @override
  State<mainpage> createState() => _mainpageState();
}



class Month{
  final String month;
  final String th;


  const Month({
    required this.month,
    required this.th,

  });
}


class _mainpageState extends State<mainpage> {

  @override

List<Month> mon = [Month(month: "JANUARY", th: 'jan'),Month(month: "FEBRUANRY", th: 'feb'),Month(month: "MARCH", th: 'mac'),Month(month: "APRIL", th: 'april'),Month(month: "MAY", th: 'may'),Month(month: "JUN", th: 'jun'),Month(month: "JULY", th: 'july')];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COKLAT REPORT"),

      ),

      body:  ListView.separated(
          itemCount: mon.length,
          itemBuilder: (context, i) => ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text(mon[i].month),

            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context){
                      return report(th: mon[i].th);
                    }
                ));
              });
            },
          ),

          separatorBuilder: (context, i) => Divider(),

        ),
    );
  }
}
