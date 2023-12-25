import 'package:flutter/material.dart';

class Fagma1 extends StatefulWidget {
  const Fagma1({super.key});

  @override
  State<Fagma1> createState() => _Fagma1State();
}


class _Fagma1State extends State<Fagma1> {
  List boardingscreendata =[
{
 
  
  'title':'care your family',
  'description':'the process only for education new',
},
{

  
  'title':'care your family',
  'description':'the process only for education new',
},
{
 
  'title':'care your family',
  'description':'the process only for education new',
},

  ];
  Color whitecolor =Colors.deepPurpleAccent;
  Color othercolor =Color.fromARGB(240, 14, 13, 13);
  PageController pageController =PageController();
  
  continuemethod(){}
  int currentpage =0;
  onPageChanged(int index){
    setState(() {
      currentpage =index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:whitecolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [ElevatedButton(onPressed: continuemethod, style: ElevatedButton.styleFrom(
       backgroundColor: Colors.transparent,elevation: 0,
      ), child: Text('skip',style: TextStyle(color:othercolor),)),
        
        ],
      ),
      
    body: Stack(children: [
      PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: pageController,
        itemCount: boardingscreendata.length,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index){
          return Column(
            children: [
             Container(height: 300,width: 300,color: Colors.black,),
              Text(boardingscreendata[index]['title'],style: TextStyle(fontSize: 20,color: othercolor),),
              SizedBox(height: 20,),
              Text(boardingscreendata[index]['description'],style: TextStyle(fontSize: 20,color: othercolor),),
            ],
          );
        },
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           (currentpage ==(boardingscreendata.length -1)) ?
           ElevatedButton(onPressed: continuemethod , child: Text('CONTINUE'),
           ):
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  
                List <Widget>.generate(
                boardingscreendata.length,
                (index){
                  return AnimatedContainer(duration: const Duration(
                    milliseconds: 200,
                  ),
                  height: 10 ,width: (index==currentpage)?15:10,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: 
                  (index==currentpage)?Colors.deepOrange:Colors.grey),
                  );
                }
               )
            
           ),
        ],),
      ),
      
    ],),
    );
  }
}