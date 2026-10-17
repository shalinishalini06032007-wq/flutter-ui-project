import 'package:flutter/material.dart';

class AddMoney extends StatelessWidget {
  const AddMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 217, 217),
    appBar: AppBar(
      title: Text("Add Money",style: TextStyle(fontWeight: FontWeight.bold),),
    ),
    body: Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Select Card",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),)
            ],
          ),
          Expanded(
            child: ListView.builder(itemCount: 3,scrollDirection: Axis.horizontal, itemBuilder: (context,data){
              return Container(
                width: 200,
                height: 300,
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.black12, image: DecorationImage(image: NetworkImage('https://images.ctfassets.net/ejg6grzpbbxj/78A06I1Bks5UZFOwDSS7hw/7fd799e9f97e599805c15cdc1a4dc85e/hero-image-lp-debit_3x.png?fm=webp&w=1600&q=85'),fit:BoxFit.fill)),
              );
            }),
          ),
          Row(
            
            children: [
              Text("Add money to Neobank",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(height: 20,),
           Expanded(
             child: Container(
                padding: EdgeInsets.all(14),
               
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(14)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.move_to_inbox),
                    SizedBox(
                      width:10,
                    ),
                    Text("Move your direct deposite",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward_sharp)
                  ],
                )
              ),
           ),
          
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
                        padding: EdgeInsets.all(14),
                        height: 100,
                        
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(14)),
                        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.transfer_within_a_station),
              SizedBox(
                width:10,
              ),
              Text("Transer from other bank",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 30,),
              Icon(Icons.arrow_forward_sharp)
            ],
                        )
                      ),
          ),
           SizedBox(
            height: 15,
          ),
           
          Expanded(
            child: Container(
                          padding: EdgeInsets.all(14),
                          height: 100,
                          
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(14)),
                          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.apple),
              SizedBox(
                width:10,
              ),
              Text("Apple pay",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 190,),
              Icon(Icons.arrow_forward_sharp)
            ],
                          )
                        ),
          ),
           SizedBox(
            height: 15,
          ),
           
          Expanded(
            child: Container(
                        padding: EdgeInsets.all(14),
                        height: 100,
                        
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(14)),
                        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.credit_card),
              SizedBox(
                width:10,
              ),
              Text("Debit/Credit card",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 100,),
              Icon(Icons.arrow_forward_sharp)
            ],
                        )
                      ),
          ),
          
        ],
      ),
    ),
    );
  }
}