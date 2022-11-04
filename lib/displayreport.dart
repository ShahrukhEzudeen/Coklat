import 'package:flutter/material.dart';
import 'package:job1/calldb.dart';
import 'package:job1/grap.dart';
import 'package:pie_chart/pie_chart.dart';

class report extends StatefulWidget {
  final String th;
  const report({Key? key,required this.th}) : super(key: key);

  @override
  State<report> createState() => _reportState();
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
class _reportState extends State<report> {

  void initState() {
    super.initState();
    refreshUsers();
  }
  List<Coklat2> coklat = [];
  Future<void> refreshUsers()async {
    var result = await http_get(widget.th.toString());
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
   return Scaffold(
      appBar: AppBar(
        title: Text("TOP 5 CHOCOLATE"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.bar_chart),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => grap(kk:widget.th.toString()),
              )
              );
            },
          )
        ],
      ),
      body:  ListView.separated(
          itemCount: coklat.length,
          itemBuilder: (context, i) => ListTile(
            leading: Icon(Icons.emoji_food_beverage ),
            title: Text("${i+1} "+coklat[i].ChocolateTypes),
            subtitle: Text(coklat[i].Volumes.toString()),
          ),
          separatorBuilder: (context, i) => Divider(),
        ),
   );
  }

}




