import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled36/ui/Doctor/case_details.dart';


class Cases_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Cases '),
        centerTitle: true,
        backgroundColor: Colors.white,
        
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 3,
        itemBuilder:(context,index){
          return Container(
              height: 180,
              width: 100,
              margin:  EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8),
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.1), // Light shadow
      spreadRadius: 1,
      blurRadius: 3,
      offset: Offset(0, 3), // Position of shadow
    ),
  ],
                  color: Color(0xFFFFFF),
                  border: Border.all(color: Colors.white70),
                  borderRadius: BorderRadius.circular(15),
                 
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                    ListTile(
                      leading: Container(
                        height: 30,
                        width: 30,
                        
                                      decoration: BoxDecoration(
                                        
                                        color: Color(0xFF22C7B8),
                                        borderRadius: BorderRadius.circular(10),
                                       
                                      ),
                                      child: Center(child: Icon(Icons.person,color: Colors.white,)),
                      ),
                      
                      title: Text('Ebrahem Khaled',style: TextStyle(fontSize: 15),),
                    ),
                    ListTile(
                      leading: Container(
                        height: 30,
                        width: 30,
                        
                                      decoration: BoxDecoration(
                                        
                                        color: Color(0xFF22C7B8),
                                        borderRadius: BorderRadius.circular(10),
                                       
                                      ),
                                      child: Center(child: Icon(Icons.calendar_month_outlined,color: Colors.white,)),
                      ),
                      
                      title: Text('24.04.2021',style: TextStyle(fontSize: 15),),
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Case_details()),
                      );

                    }, 
                    child: Text('Show Details',
                    style: TextStyle(
                      color: Colors.white)
                      ,)
                     ,style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 52, 218, 57),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),),
                  ],
                ),
             );
        } )
    );

   
  }
}
