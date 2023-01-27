import 'package:all_the_way_home/core/app_export.dart';
import 'package:all_the_way_home/reusable_widgets/reusable_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../presentation/home_page_screen/home_page_screen.dart';

class ProfileScreen extends StatefulWidget{
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState  createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen>{

  TextEditingController nameController = TextEditingController();
  TextEditingController homeController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    CollectionReference users = FirebaseFirestore.instance.collection('user');
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              height: Get.height*0.4,
              child: Stack(
                children: [

                  orangeIntroWidgetWithoutLogos(),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child:Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        color: Color(0xffD6D6D6)
                      ),
                      child:Center(
                        child:Icon(Icons.camera_alt_outlined,size:40,color:Colors.white),
                      ),
                    ),
                  ),
                ],
              ),


            ),
            const SizedBox(
              height:20,
            ),
            Container(
              padding:EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                children: [
                    reusableTextField("Enter Name", Icons.person_outlined, false, nameController),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter address", Icons.home_outlined, false, homeController),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Phone Number", Icons.phone_callback_outlined, false, phoneController),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Email address", Icons.mail_outline, false, mailController),
                    const SizedBox(
                      height: 50,
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25.0),
                    child:GestureDetector(
                      onTap: () {
                        Map<String,String> dataToSave={
                          'address':homeController.text,
                          'mail': mailController.text,
                          'name': nameController.text,
                          'phone':phoneController.text,
                        };
                        FirebaseFirestore.instance.collection('user').add(dataToSave)
                            .then((value){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> HomePageScreen()));
                        }
                        );
                      },
                      child:Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Center(
                          child:Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
      )
    );
  }

}

Widget orangeIntroWidgetWithoutLogos(){
  return Container(
    width:Get.width,
    decoration: BoxDecoration(
      image: DecorationImage(
          image:AssetImage('assets/mask.png'),
        fit:BoxFit.fill
      ),
    ),
    height: Get.height*0.3,
    child: Container(
      height:Get.height*0.1,
      width: Get.width,
      margin: EdgeInsets.only(bottom: Get.height*0.05),
      child: Center(
          child:Text('Profile Settings',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold, color: Colors.white))
      ),
    )
  );
}

TextFieldWidget(String title,IconData iconData,TextEditingController controller,String hinttext){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        Text(title),
      const SizedBox(
        height: 6,
      ),
      Container(
        width: Get.width,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 1
            )
          ],
          borderRadius: BorderRadius.circular(8)
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: hinttext,
            prefixIcon: Icon(iconData),
          ),
        )
      ),
      ],
  );
}


Widget orangeButton(String title,Function onPressed){
  return MaterialButton(
    minWidth: Get.width,
    height: 50,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5)
    ),
    color: Colors.deepOrange,
    onPressed: (){},
    child: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white))
  );
}

