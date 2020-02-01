import 'package:flutter/material.dart';

import '../models/plan.dart';
import '../widgets/planDesc.dart';
import '../models/dtos/CustomImage.dart';

class Plans extends StatelessWidget {
  List<Plan> plans = [
    new Plan(
      name: 'Water Wash',
      description: ['water pressure wash', 'clean dirt'],
      price: 200,
      discountedPrice: 150,
      image: new CustomImage(uri: 'assets/my-icons-collection/png/01-waterWash.png', width: 90, height: 80),
    ),
    new Plan(
      name: 'Foam Wash',
      description: [
        'water pressure wash',
        'clean dirt',
        'foaming using Car shampoo'
      ],
      price: 350,
      discountedPrice: 300,
      image: new CustomImage(uri: 'assets/my-icons-collection/png/02-foamWash.png', width: 90, height: 80),
    ),
    new Plan(
      name: 'Polish Wash',
      description: [
        'water pressure wash',
        'clean dirt',
        'foaming using Car shampoo',
        'polish on exterior body'
      ],
      price: 700,
      discountedPrice: 500,
      image: new CustomImage(uri: 'assets/my-icons-collection/png/03-polish.png', width: 90, height: 90),
    )
  ];

  List<Widget> descList(List<String> desc) {
    var notes = List<Widget>();
    for (var d in desc) {
      notes.add(PlanDescription(d));
    }
    return notes;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: plans.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Card(
            elevation: 20,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //PlanCard(iconColor: Colors.deepOrangeAccent, textColor: Colors.black,),
                  Image.asset(
                    plans[index].image.uri,
                    width: plans[index].image.width,
                    height: plans[index].image.height,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '${plans[index].name}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: descList(plans[index].description)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton(
                        textColor: Colors.white,
                        color: Color.fromRGBO(0, 172, 238, 100),
                        highlightColor: Colors.lightBlue[900],
                        onPressed: () {},
                        child: Text(
                          'BOOK',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      RaisedButton(
                        textColor: Colors.white,
                        color: Color.fromRGBO(0, 172, 238, 100),
                        highlightColor: Colors.lightBlue[900],
                        onPressed: () {},
                        child: Text(
                          'SUBSCRIBE',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
    //   child: Column(
    //     children: <Widget>[
    //       IconButton(
    //         icon: Icon(Icons.local_car_wash),
    //         iconSize: 100,
    //         color: Colors.brown,
    //         onPressed: () {},
    //       ),
    //       IconButton(
    //         icon: Icon(Icons.local_car_wash),
    //         iconSize: 100,
    //         color: Colors.yellowAccent[500],
    //         onPressed: () {},
    //       ),
    //       IconButton(
    //         icon: Icon(Icons.local_car_wash),
    //         iconSize: 100,
    //         color: Colors.redAccent[500],
    //         onPressed: () {},
    //       ),
    //     ],
    //   ),
    // );
  }
}
