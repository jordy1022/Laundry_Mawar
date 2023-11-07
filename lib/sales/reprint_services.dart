import 'package:flutter/material.dart';
import 'package:pos/components/navbar.dart';



class Mail {
  Mail({
    required this.number,
    required this.total,
    required this.preview,
    required this.isUnread,
  });

  String number;
  String total;
  String preview;
  bool isUnread;
}

List<Mail> mails = [
  Mail(number: 'LG14O001230614001'  , total: '505000', preview: 'preview',  isUnread: false),
  Mail(number: 'LG14O001230614002'   , total: '305000', preview: 'preview', isUnread: false),
  Mail(number: 'LG14O001230614003'        , total: '455000', preview: 'preview', isUnread: false),
  Mail(number: 'LG14O001230614004', total: '216750', preview: 'preview',  isUnread: false),
  Mail(number: 'LG14O001230614005', total: '430000', preview: 'preview', isUnread: false),
  Mail(number: 'LG14O001230614006'      , total: '255000', preview: 'preview', isUnread: false),
  Mail(number: 'LG14O001230614007'   , total: '255000', preview: 'preview',  isUnread: false),
  Mail(number: 'LG14O001230614008' , total: '404000', preview: 'preview',   isUnread: false),
  Mail(number: 'LG14O001230614009', total: '212500', preview: 'preview',  isUnread: false),
  Mail(number: 'LG14O001230614010', total: '216750', preview: 'preview', isUnread: false),
  Mail(number: 'LG14O001230614011'      , total: '505000', preview: 'preview', isUnread: false),
  Mail(number: 'LG14O001230614012'   , total: '305000', preview: 'preview',  isUnread: false),
  Mail(number: 'LG14O001230614013' , total: '455000', preview: 'preview',   isUnread: false),
  Mail(number: 'LG14O001230614009', total: '216750', preview: 'preview',  isUnread: false),
  Mail(number: 'LG14O001230614010', total: '430000', preview: 'preview', isUnread: false),
  Mail(number: 'LG14O001230614011'      , total: '255000', preview: 'preview', isUnread: false),
  Mail(number: 'LG14O001230614012'   , total: '404000', preview: 'preview',  isUnread: false),
  Mail(number: 'LG14O001230614013' , total: '212500', preview: 'preview',   isUnread: false),
];



class ReprintServices extends StatefulWidget {
  const ReprintServices({super.key});

  @override
  State<ReprintServices> createState() => _ReprintServices();
}

class _ReprintServices extends State<ReprintServices> {
 
 

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(title: const Text("Void Exchange"),),
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
                                            "Document Number", 
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
                                            )),
                                         DataColumn(
                                          label: Text(
                                            "Preview", 
                                            style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            ),
                                            )),
                                       
                                        ],
                                        rows: mails.map((e) => DataRow(cells: [
                                          DataCell(Text(e.number)),
                                          DataCell(Text(e.total)),
                                          DataCell(Text(e.preview),onTap: () {
                                            
                                          },),
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
  
