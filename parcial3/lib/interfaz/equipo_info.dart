import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:parcial3/Basededatos/controller.dart';


class EquipInfo extends StatefulWidget {
  EquipInfo(Equip product, {Key? key}) : super(key: key);

  @override
  _EquipInfoState createState() => _EquipInfoState();
}
final equipReference = FirebaseDatabase.instance.reference().child('equip');



class _EquipInfoState extends State<EquipInfo> {
  late List<Equip> items;

  void initState(){
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Information y Foto'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Container(
        height: 800.0,
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Center(
            child: Column(
              children: <Widget>[   /*     
                new Text("Name : ${widget.name}", style: TextStyle(fontSize: 18.0),),
                Padding(padding: EdgeInsets.only(top: 8.0),),
                Divider(),
                new Text("Entrenador : ${widget.product.Entrenador}", style: TextStyle(fontSize: 18.0),),
                Padding(padding: EdgeInsets.only(top: 8.0),),
                Divider(),
                new Text("Deprimera : ${widget.product.Deprimera}", style: TextStyle(fontSize: 18.0),),
                Padding(padding: EdgeInsets.only(top: 8.0),),
                Divider(),
                new Text("Web : ${widget.product.Web}", style: TextStyle(fontSize: 18.0),),
                Padding(padding: EdgeInsets.only(top: 8.0),),
                Divider(),
                n
            ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}