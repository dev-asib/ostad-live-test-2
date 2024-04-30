import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:(_ , child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProfileHome(),
      ),
      designSize: const Size(360, 640),
    );
  }
}

class ProfileHome extends StatelessWidget {
   ProfileHome({super.key});

   String para = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla facilisi cras fermentum odio eu feugiat. Nunc sed blandit libero volutpat. Diam sit amet nisl suscipit. Mauris cursus mattis molestie a iaculis at. Lacus vel facilisis volutpat est velit egestas dui id ornare. Enim praesent elementum facilisis leo vel fringilla est ullamcorper eget. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Sollicitudin tempor id eu nisl nunc mi. Libero volutpat sed cras ornare arcu. Massa enim nec dui nunc mattis enim. Aliquet risus feugiat in ante metus dictum at tempor. Auctor augue mauris augue neque gravida in fermentum.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.0.r),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 56,),
              Text(
                "Profile",
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 50.h,
              ),

              Container(
                height: 180.w,
                width: 180.w,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("images/profile.jpg"), fit: BoxFit.fill),
                ),
              ),
              SizedBox(height: 20.h,),
              Text("Dev Asib", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),),
              Text("mail.asib.com@gmail.com", style: TextStyle(fontSize: 25.sp, color: Colors.grey),),
              SizedBox(height: 20.h,),
              Wrap(children: [Text(textAlign: TextAlign.center,para, style: TextStyle( color: Colors.black, fontSize: 16.sp
              ),)]),
            ],
          ),
        ),
      ),
    );
  }
}
