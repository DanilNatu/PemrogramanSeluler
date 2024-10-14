import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Biodata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final String top = "Mahasiswa";
  final String name = "Denilson Leonardo Natu";
  final String email = "natudenilson@gmail.com";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            width: 350,
            height: 265,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 33, 33, 33),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  top,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),

                SizedBox(height: 15),
                Center(
                  child:CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/1.jpg'), // Ganti dengan gambar profil
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15),
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        
                      ),
                    ), 
                  ],
                ),

                SizedBox(height: 10),
                Row (
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.white,
                      ),
                    SizedBox(width: 15),
                    Text(
                      email,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),  
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





