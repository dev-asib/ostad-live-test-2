import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileHome(),
    );
  }
}

class ProfileHome extends StatelessWidget {
   ProfileHome({super.key});

   String para = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla facilisi cras fermentum odio eu feugiat. Nunc sed blandit libero volutpat. Diam sit amet nisl suscipit. Mauris cursus mattis molestie a iaculis at. Lacus vel facilisis volutpat est velit egestas dui id ornare. Enim praesent elementum facilisis leo vel fringilla est ullamcorper eget. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Sollicitudin tempor id eu nisl nunc mi. Libero volutpat sed cras ornare arcu. Massa enim nec dui nunc mattis enim. Aliquet risus feugiat in ante metus dictum at tempor. Auctor augue mauris augue neque gravida in fermentum.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding:  EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Profile",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 50,
              ),

              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("images/profile.jpg"),),
                ),
              ),
              SizedBox(height: 20,),
              Text("Dev Asib", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              Text("mail.asib.com@gmail.com", style: TextStyle(fontSize: 20, color: Colors.grey),),
              SizedBox(height: 20,),
              Wrap(children: [Text(textAlign: TextAlign.center,para, style: TextStyle(
              ),)]),
            ],
          ),
        ),
      ),
    );
  }
}
