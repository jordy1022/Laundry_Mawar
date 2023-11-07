import 'package:flutter/material.dart';
import 'package:pos/components/navbar.dart';
import 'package:pos/sales/void_services.dart';


class VoidSales extends StatefulWidget {
  const VoidSales({super.key});

  @override
  State<VoidSales> createState() => _VoidSalesState();
}

class _VoidSalesState extends State<VoidSales> {
 String? userSelected;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(title: const Text("Void Sales"),),
      body: Container(
        child: Column(
          children: [ 
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: const Text("Find Sales Order",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 82, 153, 2,),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8)
                )
              ),
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: const Color.fromARGB(255, 82, 153, 2)
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)
                )
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 20
              ),
                child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15),
                          ),
                          borderSide: BorderSide(color: Colors.black)
                        ),
                        hintText: 'Search',
                        contentPadding: 
                        const EdgeInsets.only(top: 4, left: 10),
                        hintStyle:  
                        const TextStyle(color: Colors.grey, fontSize: 14),
                        suffixIcon: IconButton(onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                            return VoidServices();
                          }));
                        },
                        icon: const Icon(Icons.search, color: Colors.grey),),
                        fillColor: Colors.white,
                        filled: true 
                      )
                    ),
                ),
            ])
          
        ));
    
  }

  
}
  