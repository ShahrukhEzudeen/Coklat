import 'package:flutter/material.dart';

import 'package:job1/calldb.dart';
import 'package:pie_chart/pie_chart.dart';

class grap extends StatefulWidget {
   final String kk;
  const grap( {Key? key, required this.kk}) : super(key: key);

  @override
  State<grap> createState() => _grapState();
}

class _grapState extends State<grap> {
  void initState() {
    super.initState();
    refreshUsers();
  }
  List<Coklat2> coklat = [];
  Future<void> refreshUsers()async {
    var result = await http_get(widget.kk.toString());
    if (result.ok) {
      setState(() {
        coklat.clear();
        final in_users = result.data;
        print(in_users[0]);
        print(in_users.length);
        for(int i = 0;i<in_users.length;i++){
          var m = Coklat.fromJson(in_users[i]);
          coklat.add(Coklat2(
            m.id,
            m.ChocolateType,
            m.Production_date,
            m.Volume,
          ));

        }
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "${coklat[0].ChocolateTypes}": coklat[0].Volumes.toDouble(),
      "${coklat[1].ChocolateTypes}": coklat[1].Volumes.toDouble(),
      "${coklat[2].ChocolateTypes}": coklat[2].Volumes.toDouble(),
      "${coklat[3].ChocolateTypes}": coklat[3].Volumes.toDouble(),
      "${coklat[4].ChocolateTypes}": coklat[4].Volumes.toDouble(),
    };
    return Scaffold(
        appBar: AppBar(
        title: Text("GRAPH"),
    ),

        body:RefreshIndicator(
          onRefresh: refreshUsers,
          child: PieChart(dataMap: dataMap)

        ),
    );


  }
}
class Coklat2
{
  int ids;
  String ChocolateTypes;
  String Production_dates;
  int Volumes;

  Coklat2( this.ids, this.ChocolateTypes, this.Production_dates, this.Volumes);
}

class Coklat
{
  final int id;
  final String ChocolateType;
  final String Production_date;
  final int Volume;

  const Coklat({
    required this.id,
    required this.ChocolateType,
    required this.Production_date,
    required this.Volume,
  });

  factory Coklat.fromJson(Map<String, dynamic> json) {
    return Coklat(
      id: json['id'],
      ChocolateType: json['ChocolateType'],
      Production_date: json['Production_date'],
      Volume: json['Volume'],
    );

  }
}
