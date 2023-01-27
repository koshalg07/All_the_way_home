

import 'package:all_the_way_home/reusable_widgets/reusable_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

import '../../screens/profile_page.dart';
import '../../screens/sign_in.dart';
import '../home_page_screen/home_page_screen.dart';
import '../page_one_screen/page_one_screen.dart';
import 'controller/cost_calculator_controller.dart';
import 'package:all_the_way_home/core/app_export.dart';
import 'package:all_the_way_home/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class CostCalculatorScreen extends StatefulWidget{
  const CostCalculatorScreen({Key? key}) : super(key: key);

  @override
  _CostCalculatorScreenState createState() => _CostCalculatorScreenState();
}

class _CostCalculatorScreenState extends State<CostCalculatorScreen> {
  var predValue= " ";
  TextEditingController tAreaController = TextEditingController();
  TextEditingController bAreaController = TextEditingController();
  TextEditingController floorController = TextEditingController();
  TextEditingController carParkingController = TextEditingController();
  Future<void> checkInput(String tAreaController, String bAreaController, String floorController, String carParkingController) async {
    if (tAreaController.isEmpty || bAreaController.isEmpty || floorController.isEmpty || carParkingController.isEmpty) {
      return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Please enter a valid number'),
                ],
              ),
            ),
            actions: <Widget>[
              ElevatedButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    else{
      predData(tAreaController, bAreaController, floorController, carParkingController);
    }
  }

  Future<void> predData(String tAreaText, String bAreaText, String floorText, String carText) async{
    double tArea = double.parse(tAreaText);
    double bArea = double.parse(bAreaText);
    double floor = double.parse(floorText);
    double car = double.parse(carText);
    final interpreter = await Interpreter.fromAsset('tf_lite_model.tflite');
    var input = [
      [tArea,floor,bArea,car]
    ];
    var output = List.filled(1,0).reshape([1,1]);
    interpreter.run(input,output);
    this.setState(() {
      predValue = output[0][0].toString();
    });
    print('$predValue');
    showPredictedValueDialog();

  }
  Future<void> showPredictedValueDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Cost Estimator'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('The predicted value is Rupees $predValue'),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('Predict Again'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CostCalculatorScreen()));
              },
            ),
          ],
        );
      },
    );
  }


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
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const SignInScreen()));
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
                  reusableTextField("Enter Total Area(Sqft) ", Icons.location_city_outlined, false, tAreaController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Built-up Area", Icons.area_chart_outlined, false, bAreaController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter number of floors", Icons.home_outlined, false, floorController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter number of car parkings", Icons.car_rental, false, carParkingController),
                  const SizedBox(
                    height: 20,
                  ),
                  SubmitButton(context, () {
                    checkInput(tAreaController.text, bAreaController.text, floorController.text, carParkingController.text);
                  })
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
              child:Text('Cost Estimator',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold, color: Colors.black))
          ),
        )
    );
  }
}


