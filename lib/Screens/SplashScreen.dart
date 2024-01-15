import 'package:flutter/material.dart';
import 'package:flutter_yoga/Home_screen.dart';
import 'package:flutter_yoga/Screens/Home.dart';
import 'package:flutter_yoga/model/model.dart';
import 'package:flutter_yoga/services/localdb.dart';
import 'package:flutter_yoga/services/yogadb.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future makeYogaEntry(Yoga yoga, String TableName) async {
    await YogaDatabase.instance.Insert(yoga, TableName);
  }

  Future makeYogaSumEntry(YogaSummary yogaSummary) async {
    await YogaDatabase.instance.InsertYogaSum(yogaSummary);
  }


  checkUp() async{
    await LocalDB.getFirstTime().then((value) async {

      if(value.toString() == "null" || value != false) {
        print("First Time Entering");
        await LocalDB.setStreak(0);
        await LocalDB.setLastDoneOn(DateTime.now().subtract(Duration(days:1)).toString());
        await LocalDB.setkcal(0);
        await LocalDB.setWorkOutTime(0);
        await LocalDB.setFirstTime(false);

        // CREATING ONE YOGA WORKOUT PACK
        makeYogaSumEntry(YogaSummary(YogaWorkOutName: YogaModel.YogaTable1, BackImg: "assets/01_Suryanamskar/main.jpg", TimeTaken: "6", TotalNoOfWork: "12", yogakey: 1));
        makeYogaEntry(Yoga(Seconds: true, YogaImgUrl: "assets/01_Suryanamskar/1.png", YogaTitle: "Pranamasana (Prayer pose)", SecondsOrTimes: '15', YogaKey_WorkOuts: 1), YogaModel.YogaTable1, );
        makeYogaEntry(Yoga(Seconds: true, YogaImgUrl: "assets/01_Suryanamskar/2.png", YogaTitle: "Hastauttanasana (Raised arms pose)", SecondsOrTimes: '30', YogaKey_WorkOuts: 1), YogaModel.YogaTable1, );
        makeYogaEntry(Yoga(Seconds: true, YogaImgUrl: "assets/01_Suryanamskar/3.png", YogaTitle: "Uttanasana (Standing forward bend)", SecondsOrTimes: '30', YogaKey_WorkOuts: 1), YogaModel.YogaTable1, );
        makeYogaEntry(Yoga(Seconds: true, YogaImgUrl: "assets/01_Suryanamskar/4.png", YogaTitle: "Ardha Uttanasana (half-standing forward bend)", SecondsOrTimes: '30', YogaKey_WorkOuts: 1), YogaModel.YogaTable1, );
        makeYogaEntry(Yoga(Seconds: true, YogaImgUrl: "assets/01_Suryanamskar/5.png", YogaTitle: "Exhale and return to the forward fold", SecondsOrTimes: '30', YogaKey_WorkOuts: 1), YogaModel.YogaTable1, );
        makeYogaEntry(Yoga(Seconds: true, YogaImgUrl: "assets/01_Suryanamskar/6.png", YogaTitle: "Get into a plank pose", SecondsOrTimes: '30', YogaKey_WorkOuts: 1), YogaModel.YogaTable1, );
        makeYogaEntry(Yoga(Seconds: true, YogaImgUrl: "assets/01_Suryanamskar/7.png", YogaTitle: "Lower yourself into a low pushup", SecondsOrTimes: '30', YogaKey_WorkOuts: 1), YogaModel.YogaTable1, );
        makeYogaEntry(Yoga(Seconds: true, YogaImgUrl: "assets/01_Suryanamskar/8.png", YogaTitle: "Urdhva Mukha Svanasana(Inhale and enter an upward dog pose)", SecondsOrTimes: '30', YogaKey_WorkOuts: 1), YogaModel.YogaTable1, );
        makeYogaEntry(Yoga(Seconds: true, YogaImgUrl: "assets/01_Suryanamskar/9.png", YogaTitle: "Adho Mukha Svanasana (downward dog pose)", SecondsOrTimes: '30', YogaKey_WorkOuts: 1), YogaModel.YogaTable1, );
        makeYogaEntry(Yoga(Seconds: true, YogaImgUrl: "assets/01_Suryanamskar/10.png", YogaTitle: "Move back into the standing forward bend", SecondsOrTimes: '30', YogaKey_WorkOuts: 1), YogaModel.YogaTable1, );
        makeYogaEntry(Yoga(Seconds: true, YogaImgUrl: "assets/01_Suryanamskar/11.png", YogaTitle: "Inhale and move back into the upward salute", SecondsOrTimes: '30', YogaKey_WorkOuts: 1), YogaModel.YogaTable1, );
        makeYogaEntry(Yoga(Seconds: true, YogaImgUrl: "assets/01_Suryanamskar/12.png", YogaTitle: "Exhale and return to the mountain pose", SecondsOrTimes: '15', YogaKey_WorkOuts: 1), YogaModel.YogaTable1, );



      }else{
        print("NOT A FIRST TIME");
      }
    });


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkUp();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
    //CHECK INSTALLATION,INSERT,READ,UPDATE,OPERATION STATUS

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo/yoga_trasparent.png"),
              Text("Welcome ",style: TextStyle(fontFamily: 'Merriweather',fontSize: 30),),
              Text("To Pavitra",style: TextStyle(fontFamily: 'Merriweather',fontSize: 30,color: Colors.blue),),
            ],
          )
        ),
      ),
    );
  }
}
