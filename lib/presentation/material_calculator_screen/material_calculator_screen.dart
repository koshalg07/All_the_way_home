import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../reusable_widgets/reusable_widget.dart';
import '../../screens/profile_page.dart';
import '../home_page_screen/home_page_screen.dart';
import '../page_one_screen/page_one_screen.dart';
import 'controller/material_calculator_controller.dart';
import 'package:all_the_way_home/core/app_export.dart';
import 'package:all_the_way_home/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class MaterialCalculatorScreen extends GetWidget<MaterialCalculatorController> {
  TextEditingController nameController = TextEditingController();
  TextEditingController homeController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        leading: Container(
          width: 90,
          height: 90,
          child: Image.asset('assets/logo.png'),
        ),

        title: Text('All The Way Home',
            style:TextStyle(
              color: Colors.black,
            )),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.menu,size:30),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const ProfileScreen()));
            },
          ),
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              height: Get.height*0.3,
              child: Stack(
                children: [
                  orangeIntroWidget(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding:EdgeInsets.symmetric(horizontal: 19),
              child: Column(
                children: [
                  reusableTextField("Enter City", Icons.location_city_outlined, false, nameController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Area", Icons.area_chart_outlined, false, homeController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter number of floors", Icons.home_outlined, false, phoneController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter number of car parkings", Icons.car_rental, false, mailController),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: (){
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
                  }, child: Text('Submit'))

                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:  GNav(
          tabs: [
            GButton(icon: Icons.home,
              text:'Home',onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)=>  PageOneScreen()));
              },),
            GButton(icon: Icons.question_mark_outlined,
                text:'Queries'),
            GButton(icon: Icons.payment_outlined,
                text:'Payments'),
          ]
      ),
    );
  }
}
Widget orangeIntroWidget() {
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
        height:Get.height*0.2,
        width: Get.width,
        margin: EdgeInsets.only(bottom: Get.height*0.05),
        child: Center(
            child:Text('Materials Estimator',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold, color: Colors.black))
        ),
      )
  );
}