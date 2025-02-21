import 'package:flutter/material.dart';
class case_index_two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/doctor.png',
                width: 50, // Adjust size as needed
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aml Ezzat',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Specialist-Nurse',
                    style: TextStyle(
                      color: Color(0xFF22C7B8),
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.info,
                color: Color(0xFF22C7B8),
              ),
            ],
          ),
          SizedBox(height: 7),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Details note: Lorem Ipsum is simply dummy text of')),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('printing and typesetting industry. Lorem Ipsum')),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Medical measurement',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color: Color(0xFF22C7B8),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('Blood pressure'),
                  ],
                ),
              ),
              Text('120-129'),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color: Color(0xFF22C7B8),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('Sugar analysis'),
                  ],
                ),
              ),
              Text('120-129'),
            ],
          ),
        ],
      ),
    );
  }
}

    
    
    
    /*Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
  ListTile(
    leading: Image.asset('assets/doctor.png',),
    title: Text('Aml Ezzat',style: TextStyle(color: Colors.black),),
    subtitle: Text('Specialist-Nurse',style: TextStyle(color: Color(0xFF22C7B8),),),
  
  ),
  SizedBox(height: 7,),
  Padding(
  padding: EdgeInsets.symmetric(horizontal: 10),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text('Details note:Lorem lpsum is simply dummy text of ')),
  ),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text('printing and typcasting industry .lorem lpsum')),
  ),
  SizedBox(height: 10,),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Text('Medical measurment',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
  ),
   SizedBox(height: 10,),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      children: [
       Container(
        height: 15,
        width: 15,
        decoration: BoxDecoration(
          color: Color(0xFF22C7B8),
          shape: BoxShape.circle,
        ),
       ),
        SizedBox(width: 10,),
       Text('Blood pressure'),
       SizedBox(width: 150,),
       Text('120-129'),
    
    
    
      ],
    ),
  ),
  SizedBox(height: 4,),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      children: [
       Container(
        height: 15,
        width: 15,
        decoration: BoxDecoration(
          color: Color(0xFF22C7B8),
          shape: BoxShape.circle,
        ),
       ),
        SizedBox(width: 10,),
       Text('Sugar analysis'),
       SizedBox(width: 153,),
       Text('120-129'),
    
    
    
      ],
    ),
  ),
  ],
  );
  }
  }
  class OnlineProfileImage extends StatelessWidget {
  final String imageUrl;
  final bool isOnline;

  OnlineProfileImage({required this.imageUrl, required this.isOnline});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Profile Image
        ClipRRect(
          borderRadius: BorderRadius.circular(20), // Rounded corners
          child: Image.network(
            imageUrl,
            width: 80, // Adjust size
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        // Online Status Indicator
        if (isOnline)
          Positioned(
            bottom: 5, // Adjust position
            right: 5,
            child: Container(
              width: 18, // Indicator size
              height: 18,
              decoration: BoxDecoration(
                color: Colors.green, // Online color
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2), // White border
              ),
            ),
          ),
      ],
    );
  }*/