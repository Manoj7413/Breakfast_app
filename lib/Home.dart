import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {

    List _obj=["SalmonNigiri","Blueberry","CanaiBread","HoneyCake","OrangeSnacks",'Cake',"Pie","Plate",'Salad'];
    List BreakfastName=["Salmon Nigiri","Blue Berry Cake","Canai Bread","Honey Pancakes","Orange Snacks",'Cake',"Pie","Plate",'Salad'];
    List Diet=['easy','hard','medium','average'];
    List duration=['10min','30min','20min','15min'];
    List calory=['145kcal','169kcal','155kcal','200kcal'];

    return Scaffold(
      endDrawer: Drawer(
        child: SideMenu(),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(),
            const Text('Breakfast',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //margin: EdgeInsets.only(top: 30,left: 20,right: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                    color: Colors.black26,
                    blurRadius: 40,
                    spreadRadius: 0.0
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Here",
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(15),
                    suffixIcon: IconButton(
                      onPressed: (){},
                      icon:Icon(Icons.search_rounded)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none
                    )
                  ),
                ),
              ),

              SizedBox(height: 12,),
              Container(
                alignment: Alignment.centerLeft,
                //margin: EdgeInsets.all(15),
                child: Text("Category",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),

              SizedBox(height: 12,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[ ...List.generate(_obj.length, (ind){
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              child: SvgPicture.asset("Assets/icons/$ind.svg"),
                              width:50,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                            Text(_obj[ind]),
                          ],
                        ),
                        margin: EdgeInsets.all(5),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: ind%2==0?Color(0xFFdfdfef):Color(0xFFe9dbef),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      );
                    })
                  ]
                ),
              ),

              SizedBox(height: 12,),
              Container(
                alignment: Alignment.centerLeft,
                //margin: EdgeInsets.all(15),
                child: Text("Recondation \n For Diet",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),

              SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[ ...List.generate(9, (ind) {
                      return Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(height: 7),
                            SvgPicture.asset("Assets/icons/${7-ind}.svg",height: 100),

                            SizedBox(height: 7),
                            Text(
                              BreakfastName[ind],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),

                            Text(Diet[ind%Diet.length]+" | "+duration[ind%duration.length]+" | "+calory[ind%calory.length]),

                            SizedBox(height: 10),
                            TextButton(
                              onPressed: (){},
                              child: Text(
                                "V i e w",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white54,
                                minimumSize: Size(70,40),
                              ),
                            ),

                            SizedBox(height: 7),

                          ],
                        ),
                        margin: EdgeInsets.all(5),
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          color: ind%2==0?Color(0xFFdfdfef):Color(0xFFe9dbef),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      );
                    })
        
                    ]
                ),
              ),

              SizedBox(height: 15),
              Container(
                alignment: Alignment.centerLeft,
                //margin: EdgeInsets.all(15),
                child: Text("Popular",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),

              SizedBox(height: 12),
              Column(
                  children:[ ...List.generate(7, (ind) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      width:1000,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset("Assets/icons/$ind.svg",height: 45,alignment: Alignment.centerRight),
                          Text(_obj[ind]),
                          IconButton(
                            onPressed: (){},
                            icon:Icon(Icons.double_arrow),
                            alignment: Alignment.centerLeft,
                          )
                        ],
                      ),
                    );
                  })
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget SideMenu() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          Text("baap hu"),
        ],

      ),
    );
  }
}

