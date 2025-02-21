import 'package:flutter/material.dart';




void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Two boxes with icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Expanded(
                   child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      border:Border.all(
                        color:Color(0xFF22C7B8),
                      ) ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.receipt))
                        ],
                      ),
                   ),
                 )
                ],
              ),
              const SizedBox(height: 20),
              // Request Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  Navigator.pop(context); // Close the pop-up
                },
                child: Text("Request", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        );
      },
    );
  }