import 'package:BMI_CALCULATOR/reusecard.dart';
import 'package:flutter/material.dart';
import 'reusecard.dart';
const ac=Color(0XFF1D1E33);
const bottomstyle=TextStyle(
  fontSize:25.0,
  fontWeight:FontWeight.bold,);
const titlestyle=TextStyle(
  fontSize:50.0,
  fontWeight:FontWeight.bold,);
  const resultstyle=TextStyle(
    color:Color(0xFF24D876),
    fontSize:22.0);
    const bmistyle=TextStyle(
      fontSize:100.0,
      fontWeight:FontWeight.bold,);
    const bstyle=TextStyle(
      fontSize:22.0);
class Resultspage extends StatelessWidget{
Resultspage({this.ans,this.result,this.feedback});
 final String ans;
  final String result;
 final String feedback;
build(context){
  return Scaffold(
    appBar: AppBar(title: Text('BMI CALCULATOR'),
    centerTitle:true),
    body:Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:<Widget>[
        Text('Your Result',
        style:titlestyle),
        Expanded(
          child:Reusecard(
            color:ac,
            cardchild:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                Text(ans,
                style:resultstyle),
                Text(result,
                style:bmistyle,),
                Text(feedback,
                textAlign: TextAlign.center,
                style:bstyle),
                ],),),),
              GestureDetector(
                onTap:(){
                  Navigator.pop(context);
                },
                child:Container(
                  child:Center(
                    child:Text('RE-CALCULATE',
                    style:bottomstyle),),
                    color: Color(0xFFEB1555),
                    margin:EdgeInsets.only(top:10.0),
                    width:double.infinity,
                    height: 80.0,),),],),);
                    
}
}