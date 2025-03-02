import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> updateData(BuildContext context, int id, String name, String email) async {
  final url = Uri.parse("https://hospital.elhossiny.net/api/v1/calls/$id");

  // Your token (Ideally, store this securely and retrieve it dynamically)
  String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZmFkZGQ3ODM5NTIzNzEyZWVmMjEzYTZmNTA1Y2M3YmJhOTRlNjZkNTU3Nzc4ZTI5NTI0YmJmY2I3OGE3NGY2YzAzMTVkYWQyYTkyMTEwNGEiLCJpYXQiOjE3NDAyMzA3OTMuNDg3ODQ5LCJuYmYiOjE3NDAyMzA3OTMuNDg3ODUxLCJleHAiOjE3NzE3NjY3OTMuNDg3MDc0LCJzdWIiOiI0MiIsInNjb3BlcyI6W119.UeqXAPLd6C6lwPcJLSemDXo-mXTixez7_A5SRGWtCH-dnNHAdDEiB22y6jgVTnUXbuC_P2prn-HmnDo36O-Ghd3O0dA_4BtLKbZRlT9dElm9B1OwUFHYX-o4f15Jx7AEscQYofi-XAErF-B45BIVNG-xsMKRgIyeM3H2t81ldBdE9m_G8BCWiFhUgf83Y8qpF5Xi2FaPf6T5OHYg0UgPuFy5cVA7mADEMsWCQfTXETlK8gQ-tIxX0XksVz_iwQq2xL3lTtyJs9jUqBr36NZrDppuHDNUU6TtpZe-2SRC76e4n5dWYBCcnOzM8o1y0vQTKkVch3OTxwGltx45AN5xAhyx0jSwnx80-iKVk72iYDv7vJ_bxCi_4uFEzNMioy4yah6Les8qJuPBuedB4wa3PcPMzf8ksdvQK70GBZkUAc52J_N3fiWkc_vnKalSULnHzLg8Kosqhtmb2CjWUlDz6RVkI04RtZqwqvrlClXyFQSU89bXwFACClHta8mv2e2DxB-ZakoWXdQ-XAl8pwKoBhNCMPeHhVIEGQhV-pkYZt0HJvIjaW_Ywf63Dl5p6woz0UKUAASpAwyQI57xdJgku2O-vVTvEDIFLE6qf4QNHXVodRDZtYoSpIMwSvOMI7pt21appUyaVKllqKEmWvny6jiVccbvMXfnobAUC4O98jE';

  final response = await http.put(
    url,
    headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer $token", // Include the token
    },
    body: jsonEncode({
      "name": name,
      "email": email,
    }),
  );

  if (response.statusCode == 200) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Data updated successfully!")),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Failed to update data: ${response.statusCode}")),
    );
  }
}
