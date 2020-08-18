import 'package:flutter/material.dart';
class Reusecard extends StatelessWidget {
  Reusecard({this.cardchild,this.color});
  final Widget cardchild;
  final Color color;
   build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child:cardchild,
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(15.0),
        ),
      );
  }
  }
  class Iconcontent extends StatelessWidget{
    Iconcontent({this.icon,this.name});
    final IconData icon;
    final String name;
    build(context){
      return Column(
                    children:<Widget>[
                        Icon(
                          icon,
                          size:80.0),
                          SizedBox(height: 10.0,),
                        Text(
                          name,
                        style:TextStyle(
                          fontSize:18.0,
                          color:Color(0XFF8D8E98),),
                        )],);
    }
  }
  class Roundbutton extends StatelessWidget{
    Roundbutton({this.icon,this.onPressed});
    final IconData icon;
    final Function onPressed;

    Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
  }