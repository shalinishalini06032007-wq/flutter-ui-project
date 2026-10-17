import 'package:flutter/material.dart';
import 'package:flutter_application_2/add_money.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    
  List <Widget> pages = [
Padding(
  padding: const EdgeInsets.all(16),
  child: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Good mornig,terry",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Icon(Icons.notification_add),
          ],
        ),
        Text('Welcome to neobank',style:TextStyle(fontSize: 18,color: Colors.grey),),   
        SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              height: 180,
              width: 360,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Your balance",style: TextStyle(fontSize: 20,color: Colors.grey),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("₹3200.00",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,)),
                    Icon(Icons.visibility_off)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>AddMoney()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(9),
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.black,borderRadius: BorderRadius.circular(16)
                        ),
                        child: Text("Add money",textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ), 
              ],
            ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Your Cards',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('+Add New',style: TextStyle(fontSize: 18),),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(itemCount: 3,scrollDirection: Axis.horizontal, itemBuilder: (context,data){
            return Container(
            margin: EdgeInsets.all(10),
            width: 300,
            height: 250,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),image: DecorationImage(image: 
            NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9p5pFKJWZDkzajbSU2_6ldtBR34A3VSFAFkmLCVqeHw&s=10'),fit: BoxFit.fill)),
            );
          }),
        ),
        SizedBox( height: 10,),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            padding: EdgeInsets.all(12),
            height: 150,
            width: 360,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
            child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Transaction',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi7erNJWv9sS3Zw-d2YdtwuO1MGoD2P6hhjBuF47CmtxrrBg8CVJNSZYZ1&s=10'),radius: 22,),
                        SizedBox(width: 10,),
                        Text('Starbucks Coffee',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(width: 80,),
                        Text('-₹500',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('October19,9:00pm'),
                        Container(
                          padding: EdgeInsets.all(4),
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(color: Colors.lightGreen,borderRadius: BorderRadius.circular(12)),
                          child: Text('₹1.95',textAlign: TextAlign.center,),
                        )
                      ],
                    )
                  ],
                ),               
          ),
        ),
      ],
    ),
  ),
),
Padding(
  padding: const EdgeInsets.all(12),
  child: SingleChildScrollView(
    child: Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
                },
                child: Icon(Icons.arrow_forward_ios)),
            ),
            Text("Transaction",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
              child: Icon(Icons.search),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 30,
              width: 90,
              padding: EdgeInsets.symmetric(vertical: 0.9,horizontal: 10),
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("period"),
                  Icon(Icons.arrow_drop_down)
                ],
              )
            ),
            
            Container(
              height: 30,
              width: 180,
              padding: EdgeInsets.symmetric(vertical: 0.9,horizontal: 10),
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Debit Card....4568",style: TextStyle(color: Colors.white),),
                  Icon(Icons.cancel,color: Colors.white,)
                ],
              ),
            ),
             Container(
              height: 30,
              width: 80,
              padding: EdgeInsets.symmetric(vertical: 0.9,horizontal: 10),
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sum"),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 410,
          width: 360,
          padding:  EdgeInsets.all(12),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Date",style: TextStyle(fontSize: 15,color:Colors.grey ),),
                  Text("Edit",style: TextStyle(fontSize: 15,color:Colors.grey ),)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text("October 17,Thu",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("-278.30",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),) 
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12),image: DecorationImage(image: NetworkImage('https://media.designrush.com/inspiration_images/653819/conversions/1-mobile.jpg'),fit: BoxFit.cover)),                 
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Starbucks Coffee",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("9:00",style: TextStyle(fontSize: 18,color: Colors.grey),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text("-12.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Container(
                            height: 25,
                            width: 60,
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                            decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.circular(12)),
                            child: Text("1.56",textAlign: TextAlign.center,),
                          )
                        ],
                      ),
                    ],
                  ),
                 
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Divider(color: Colors.grey,),
              ),
               SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12),image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6RHYozFaM0oP9hPaYznR3DgE070l0Q0kdPbZP4vbPtN0o0DXHhtN0G3Q&s=10'),fit: BoxFit.cover)),                 
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dunkin donuts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("9:00",style: TextStyle(fontSize: 18,color: Colors.grey),),
    

                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("-12.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Container(
                            height: 25,
                            width: 60,
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                            decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.circular(12)),
                            child: Text("1.56",textAlign: TextAlign.center,),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
               Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Divider(color: Colors.grey,),
              ),
              SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12),image: DecorationImage(image: NetworkImage('https://images.seeklogo.com/logo-png/28/1/amazon-logo-png_seeklogo-286206.png'),fit: BoxFit.cover)),                 
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Amazon",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("9:00",style: TextStyle(fontSize: 18,color: Colors.grey),),
    
                      
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("-12.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Container(
                            height: 25,
                            width: 60,
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                            decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.circular(12)),
                            child: Text("1.56",textAlign: TextAlign.center,),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
               Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Divider(color: Colors.grey,),
              ),
               SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12),image: DecorationImage(image: NetworkImage('https://cdn.mos.cms.futurecdn.net/AxH8zPoAMccDHmsebjjgvP.jpg'),fit: BoxFit.cover)),                 
                  ),
                  
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Pizza Hut",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("9:00",style: TextStyle(fontSize: 18,color: Colors.grey),),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("-12.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Container(
                            height: 25,
                            width: 60,
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                            decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.circular(12)),
                            child: Text("1.56",textAlign: TextAlign.center,),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
             
             
              
            ],
          ),
        ),
         SizedBox(
          height: 30,
        ),
        Container(
          height: 410,
          width: 360,
          padding:  EdgeInsets.all(12),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Date",style: TextStyle(fontSize: 15,color:Colors.grey ),),
                  Text("Edit",style: TextStyle(fontSize: 15,color:Colors.grey ),)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text("October 17,Thu",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("-278.30",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),) 
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12),image: DecorationImage(image: NetworkImage('https://media.designrush.com/inspiration_images/653819/conversions/1-mobile.jpg'),fit: BoxFit.cover)),                 
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Starbucks Coffee",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("9:00",style: TextStyle(fontSize: 18,color: Colors.grey),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text("-12.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Container(
                            height: 25,
                            width: 60,
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                            decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.circular(12)),
                            child: Text("1.56",textAlign: TextAlign.center,),
                          )
                        ],
                      ),
                    ],
                  ),
                 
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Divider(color: Colors.grey,),
              ),
               SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12),image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6RHYozFaM0oP9hPaYznR3DgE070l0Q0kdPbZP4vbPtN0o0DXHhtN0G3Q&s=10'),fit: BoxFit.cover)),                 
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dunkin donuts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("9:00",style: TextStyle(fontSize: 18,color: Colors.grey),),
    

                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("-12.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Container(
                            height: 25,
                            width: 60,
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                            decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.circular(12)),
                            child: Text("1.56",textAlign: TextAlign.center,),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
               Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Divider(color: Colors.grey,),
              ),
              SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12),image: DecorationImage(image: NetworkImage('https://images.seeklogo.com/logo-png/28/1/amazon-logo-png_seeklogo-286206.png'),fit: BoxFit.cover)),                 
                  ),
                  Column(
                    
                    children: [
                      Text("Amazon",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("9:00",style: TextStyle(fontSize: 18,color: Colors.grey),),
    
                      
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("-12.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Container(
                            height: 25,
                            width: 60,
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                            decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.circular(12)),
                            child: Text("1.56",textAlign: TextAlign.center,),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
               Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Divider(color: Colors.grey,),
              ),
               SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12),image: DecorationImage(image: NetworkImage('https://cdn.mos.cms.futurecdn.net/AxH8zPoAMccDHmsebjjgvP.jpg'),fit: BoxFit.cover)),                 
                  ),
                  
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Pizza Hut",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("9:00",style: TextStyle(fontSize: 18,color: Colors.grey),),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("-12.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Container(
                            height: 25,
                            width: 60,
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                            decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.circular(12)),
                            child: Text("1.56",textAlign: TextAlign.center,),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ), 
            ],
          ),
        ),
      ],
    ),
  ),
),
Padding(
  padding: const EdgeInsets.all(12),
  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ],
      ),
      SizedBox(
        height: 40,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://variety.com/wp-content/uploads/2026/07/P1047A04.jpg?w=1000&h=667&crop=1'),radius: 70,),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
                  padding: EdgeInsets.all(0.8),
                  child: Icon(Icons.edit),
                ))
            ],
            
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          padding: EdgeInsets.all(14),
          height: 400,
          
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(14)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Personal Info",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("Edit",style: TextStyle(fontSize: 18,),),
                 
                  
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(Icons.person,size: 40,),
                  SizedBox(
                    width: 10,
                  ),
                 Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name",style: TextStyle(fontSize: 12,color: Colors.grey),),
                  Text("Terry Melton",style: TextStyle(fontSize: 18),)
                ],
              )
                ],
              ),
              SizedBox(
                height: 30,
              ),
               Row(
                children: [
                  Icon(Icons.email,size: 40,),
                  SizedBox(
                    width: 10,
                  ),
                 Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email",style: TextStyle(fontSize: 12,color: Colors.grey),),
                  Text("melton26@gmail.com",style: TextStyle(fontSize: 18),)
                ],
              )
                ],
              ),
              SizedBox(
                height: 30,
              ),
               Row(
                children: [
                  Icon(Icons.phone,size: 40,),
                  SizedBox(
                    width: 10,
                  ),
                 Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Phone number",style: TextStyle(fontSize: 12,color: Colors.grey),),
                  Text("+91 0987654321",style: TextStyle(fontSize: 18),)
                ],
              )
                ],
              ),
              SizedBox(
                height: 30,
              ),
               Row(
                children: [
                  Icon(Icons.home,size: 40,),
                  SizedBox(
                    width: 10,
                  ),
                 Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Adress",style: TextStyle(fontSize: 12,color: Colors.grey),),
                  Text("No:23 north mada street",style: TextStyle(fontSize: 18),)
                ],
              )
                ],
              ),
              
              

            ],
          ),
        ),
      )
    ],
  ),
)

  ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 217, 217),
      body: SafeArea(
        child: pages[currentIndex]),
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index){
        setState(() {
          currentIndex=index;
        });
      },
      
      items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.transfer_within_a_station),label: "Transfer"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
      ]),
    );
  }
}