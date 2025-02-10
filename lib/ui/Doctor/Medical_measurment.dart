import 'package:flutter/material.dart';
import 'package:untitled36/ui/Doctor/case_details.dart';


class MedicalMeasurment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  leading: IconButton(onPressed: (){
   Navigator.pop(context);
  }, icon: Icon(Icons.close)),
  title: Text('Medical Measurment'),
  centerTitle: true,
),
body: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         SizedBox(width: 12,),
        Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Color(0xFF22C7B8),
              borderRadius: BorderRadius.circular(6)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Blood pressure',style: TextStyle(color: Colors.white),),
                Icon(Icons.close,color: Colors.white,)
              ],),
          ),
        
        SizedBox(width: 12,),
        
         Container(
            height: 50,
            width: 200,
           
            decoration: BoxDecoration(
              color: Color(0xFF22C7B8),
              borderRadius: BorderRadius.circular(6)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Suger analysis',style: TextStyle(color: Colors.white),),
                Icon(Icons.close,color: Colors.white,),
              ],),
          ),
        
         SizedBox(width: 20,),
      ],
    ),
    SizedBox(height: 5,),
    Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child:  
    Container(
            height: 50,
            width: 190,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: Colors.grey
              )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Add measurment',style: TextStyle(color: Colors.grey),),
                Icon(Icons.add,color: Color.fromARGB(255, 218, 216, 216),),
              ],),
          ),
      ),),
      SizedBox(height: 30,),
      Container(
        height: 130,
        width: 1000,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
             decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Add Note...',
            
          ),
           ),
        ) ),
        SizedBox(height: 280,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 1150,
            decoration: BoxDecoration(
              color: Color(0xFF22C7B8),
              borderRadius: BorderRadius.circular(3)
            ),
            child: ElevatedButton(onPressed: (){
              Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Case_details()),
);
            },
             child: Text('Send',style: TextStyle(color: Colors.white),),
             style: ElevatedButton.styleFrom(backgroundColor:Color(0xFF22C7B8),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))) ),
          )),
       ] )
  
);
   
  }
}