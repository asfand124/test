import 'package:flutter/material.dart';

class Postman extends StatefulWidget {
  const Postman({super.key});

  @override
  State<Postman> createState() => _PostmanState();
}

class _PostmanState extends State<Postman> {
  List<dynamic> Products=[
     {
        "id": 1,
        "title": "Concrete",
        "price": 755,
        "description": "The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients",
        "images": [
            "https://i.imgur.com/wUBxCQh.jpeg",
            "https://i.imgur.com/9aM8pz3.jpeg",
            "https://i.imgur.com/ZDMM36B.jpeg"
        ],
        "creationAt": "2023-10-31T11:06:33.000Z",
        "updatedAt": "2023-10-31T11:08:15.000Z",
        "category": {
            "id": 2,
            "name": "Electronics",
            "image": "https://i.imgur.com/RLnJJyQ.jpeg",
            "creationAt": "2023-10-31T11:06:33.000Z",
            "updatedAt": "2023-10-31T11:06:33.000Z"
        }
    },
      {
        "id": 1,
        "title": " Bacon",
        "price": 755,
        "description": "The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients",
        "images": [
            "https://i.imgur.com/wUBxCQh.jpeg",
            "https://i.imgur.com/9aM8pz3.jpeg",
            "https://i.imgur.com/ZDMM36B.jpeg"
        ],
        "creationAt": "2023-10-31T11:06:33.000Z",
        "updatedAt": "2023-10-31T11:08:15.000Z",
        "category": {
            "id": 2,
            "name": "Electronics",
            "image": "https://i.imgur.com/RLnJJyQ.jpeg",
            "creationAt": "2023-10-31T11:06:33.000Z",
            "updatedAt": "2023-10-31T11:06:33.000Z"
        }
    },
      {
        "id": 1,
        "title": "Generic ",
        "price": 755,
        "description": "The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients",
        "images": [
            "https://i.imgur.com/wUBxCQh.jpeg",
            "https://i.imgur.com/9aM8pz3.jpeg",
            "https://i.imgur.com/ZDMM36B.jpeg"
        ],
        "creationAt": "2023-10-31T11:06:33.000Z",
        "updatedAt": "2023-10-31T11:08:15.000Z",
        "category": {
            "id": 2,
            "name": "Electronics",
            "image": "https://i.imgur.com/RLnJJyQ.jpeg",
            "creationAt": "2023-10-31T11:06:33.000Z",
            "updatedAt": "2023-10-31T11:06:33.000Z"
        }
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(children: [
    Container(height: 400,width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(255, 160, 37, 37),),
    child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20,),
        SizedBox(
        height: 150,width: 200,
        child:
        Image.network(Products[0]['images'][0]),

      ),
         Text(Products[0]['id'].toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              SizedBox(height: 0,),
              Text(Products[0]['title'],style: TextStyle(fontSize: 20,),),             
              Text(Products[0]['description'],style: TextStyle(fontSize: 20,),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Products[0]['price'].toString(),style: TextStyle(fontSize: 20,),),
                  SizedBox(width: 0,),
                  ElevatedButton(onPressed: (){}, child: Text('buy now')),
                ],
              ),
            
              
      ],
    ),
    ),
             
        ],),
      ],),
    );
  }
}