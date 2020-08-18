import 'package:BMI_CALCULATOR/bmicalculations.dart';
import 'package:flutter/material.dart';
import 'reusecard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resultspage.dart';
const ac=Color(0XFF1D1E33);
const ic=Color(0XFF111328);
const labletextstyle=TextStyle(
  fontSize:18.0,
  color:Color(0XFF8D8E98),
);
const numtextstyle=TextStyle(
  fontSize:50.0,
  fontWeight:FontWeight.w900,
);
const bottomstyle=TextStyle(
  fontSize:25.0,
  fontWeight:FontWeight.bold,
);
enum Gender{
  male,
  female,
}
class Inputpage extends StatefulWidget{
  _Inputpage createState() => _Inputpage();
}
class _Inputpage extends State<Inputpage>{
  int ht=157;
  int wt=40;
  int age=23;
  Gender sg;
  build(context){
    return Scaffold(
      appBar:AppBar(
        title:Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
          Expanded(
        child:Row(
              children:<Widget>[
                Expanded(
                  child:GestureDetector(
                    onTap: () {
                      setState(() {
                        sg=Gender.male;
                      });
                    },
                  child:Reusecard(
                    color:sg==Gender.male?ac:ic,
                    cardchild:Iconcontent(icon:FontAwesomeIcons.mars,name:'MALE'),),),
              
                    
                  
    ),
    Expanded(
      child:GestureDetector(
        onTap:(){setState(() {
          sg=Gender.female;
          
        });},
          
        
         child:Reusecard(
           color:sg==Gender.female?ac:ic,
           cardchild:Iconcontent(icon:FontAwesomeIcons.venus,name:'FEMALE')
         ),
      ),
    ),],),),
         Expanded(
         child:Reusecard(
           cardchild: Column(
             children: <Widget>[
               Text('HEIGHT',
               style:labletextstyle,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.baseline,
                 textBaseline: TextBaseline.alphabetic,
                 children:<Widget>[
                 Text(ht.toString(),
                 style:numtextstyle),
                 Text('cm',
                 style:labletextstyle),
                 ],),
                 Slider(
                   value:ht.toDouble(),
                   min:100.0,
                   max:250.0,
                   activeColor: Color(0xFFEB1555),
                   inactiveColor: Color(0xFF8D8E98),
                   onChanged: (double newvalue){
                     setState(() {
                       ht=newvalue.round();
                     });
                   },),],),
           
           color:ac,
         )
         ),
        Expanded( child:Row(
           children:<Widget>[
         Expanded(
         child:Reusecard(

           color:ac,
           cardchild: Column(
             children:<Widget> [
               Text('WEIGHT',
               style:labletextstyle) ,
               Text(wt.toString(),
               style:numtextstyle,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:<Widget>[
                   Roundbutton(
                     icon: FontAwesomeIcons.plus,
                     onPressed: (){
                       setState(() {
                         wt++;
                       });
                     }
                   ),
                   SizedBox(width:10.0,),
                   Roundbutton(
                     icon:FontAwesomeIcons.minus,
                     onPressed:(){
                       setState(() {
                         wt--;
                       });
                     }
                   ),],),],),),),
                   Expanded(
                     child:Reusecard(
                       color:ac,
                       cardchild:Column(
                         children:<Widget>[
                           Text('AGE',
                           style:labletextstyle),
                           Text(age.toString(),
                           style:numtextstyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget>[
                   Roundbutton(
                     icon:FontAwesomeIcons.plus,
                     onPressed: (){
                       setState(() {
                         age++;
                       });
                     }
                   ),
                   SizedBox(width:10.0),
                   Roundbutton(icon: FontAwesomeIcons.minus,
                   onPressed:(){
                     setState(() {
                       age--;
                     });
                   },),],),],),),),],),),
            GestureDetector(
              onTap: (){
                Bmicalculations bb = Bmicalculations(ht:ht,wt:wt);
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Resultspage(
                  ans:bb.calculate(),
                  result:bb.getResult(),
                  feedback:bb.getInterpretation(),
                )));
              },
           child:Container(
             child:Center(
             child:Text('CALCULATE',
             style:bottomstyle),),
             color:Color(0xFFEB1555),
             margin:EdgeInsets.only(top:10.0),
             width: double.infinity,
             height:80.0,),),],),);
  }
}

