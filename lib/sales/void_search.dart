import 'package:flutter/material.dart';
import 'package:pos/components/navbar.dart';



class Mail {
  Mail({
    required this.no,
    required this.code,
    required this.name,
    required this.total,
    required this.isUnread,
  });

  String no;
  String code;
  String name;
  String total;
  bool isUnread;
}

List<Mail> mails = [
  Mail(no: '1', code: '	202039626LAN095', name: 'Firefly W, 9.5', total: '	227,477',  isUnread: false),
  Mail(no: '2', code: 'LGC22SSB4230	', name: 'LEAGUE SHOPPING BAG', total: '4,550',  isUnread: false),
  Mail(no: '3', code: '202039241N085', name: '	FIREFLASH W, 8.5', total: '272,973',  isUnread: false),

];



class VoidSearch extends StatefulWidget {
  const VoidSearch({super.key});

  @override
  State<VoidSearch> createState() => _VoidSearch();
}

class _VoidSearch extends State<VoidSearch> {
 


  @override
  Widget build(BuildContext context) {
   return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(title: const Text("Sales Exchange"),),
      body: Container(
        child: Column(
          children: [
        // buildListView(_scrollController),
        // buildBTT(_scrollController, backToTop),
        // buildText(isLastIndex),
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
              child:  Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    
                    const SizedBox(
                      height: 10,
                    ),

                   TextField(
                  
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
                        
                        },
                        icon: const Icon(Icons.search, color: Colors.grey),),
                        fillColor: Colors.white,
                        filled: true 
                      )
                    ),
                  ],
                  

                ),),
            ),
            Expanded(
              child: Container(
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
                
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: DataTable(
                                        columns: const[ 
                                         DataColumn(
                                          label: Text(
                                            "NO", 
                                            style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            ),
                                            )), 
                                         DataColumn(
                                          label: Text(
                                            "Code",
                                            style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            ),
                                            )),
                                         DataColumn(
                                          label: Text(
                                            "Name", 
                                            style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            ),
                                            )),
                                          DataColumn(
                                          label: Text(
                                            "Total",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                            ))
                                       
                                        ],
                                        rows: mails.map((e) => DataRow(cells: [
                                          DataCell(Text(e.no)),
                                          DataCell(Text(e.code)),
                                          DataCell(Text(e.name)),
                                          DataCell(Text(e.total))
                                        ])).toList()
                                        ),
                  ),
              ),
            )
          ],
        )),
    );
  }

  
}
  
