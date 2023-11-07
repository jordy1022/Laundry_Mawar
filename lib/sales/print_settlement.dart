import 'package:flutter/material.dart';
import 'package:pos/components/navbar.dart';

class PrintSettle extends StatefulWidget {
  const PrintSettle({super.key});

  @override
  State<PrintSettle> createState() => _PrintSettle();
}

class _PrintSettle extends State<PrintSettle> {
  DateTime _date = DateTime.now();

  Future<Null> SelectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context, 
      initialDate: _date, 
      firstDate: DateTime(2000), 
      lastDate: DateTime(2100));
      if (picked != null && picked != _date){
        setState(() {
          _date = picked;
          print(_date.toString());
        });
      }
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(title: const Text("Print Settlement"),),
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
              child: const Text("Print Settlement",
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
              child:  Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   
                      const SizedBox(
                        height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.blue
                                ),
                                ),
                                child: GestureDetector(
                                  onTap: (){
                                    SelectDate(context);
                                  },
                                  child: const Icon(Icons.date_range),
                                ),
                            ),
                            // IconButton(
                            //   icon: Icon(Icons.date_range),
                              
                            //   onPressed: (){
                            //     SelectDate(context);
                            //   },
                              
                            //   ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                decoration: BoxDecoration(  
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.blue
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                         SelectDate(context);
                                      },
                                      child: const Icon(Icons.print)),
                                  
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Center(child: Text("Print",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),),
                                  ],
                                  
                                ),
                              ),
              
                              // Container(
                              //   width: MediaQuery.of(context).size.width,
                              // )
                        
                          ],
                          
                        )
                    ],
                    )
                  ],
                ),),
            )
          ],
        )),
    );
  }

  
}
  