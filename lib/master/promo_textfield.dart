import 'package:flutter/material.dart';
import 'package:pos/components/navbar.dart';


class Mail {
  Mail({
    required this.name,
    required this.start,
    required this.end,
    required this.promo,
    required this.isUnread,
  });

  String name;
  String start;
  String end;
  String promo;
  bool isUnread;
}

List<Mail> mails = [
  Mail(name: 'OP21 Diskon Karyawan 30%'  , start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'OP21DK30P - OP21 Diskon Karyawan 30%'     , isUnread: false),
  Mail(name: 'OP22 Additional 5% OPCO'   , start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'OP22ADD5P - OP22 Additional 5% OPCO'      , isUnread: false),
  Mail(name: 'CP23 Free Calender'        , start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'CP23 - CP23 Free Calender'                , isUnread: false),
  Mail(name: 'VC23 Disc Vcr 100K On 600K', start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'VC23100AT600 - VC23 Disc Vcr 100K On 600K', isUnread: false),
  Mail(name: 'VC23 Disc Vcr 100K On 500K', start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'VC23100AT500 - VC23 Disc Vcr 100K On 500K', isUnread: false),
  Mail(name: 'LRB Get Discount 20%'      , start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'LRBGD20P - LRB Get Disc 20%'              , isUnread: false),
  Mail(name: 'LRB Member Get 20% Disc'   , start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'LRBMGD20P - LRB Get Disc 20%'             , isUnread: false),
  Mail(name: 'OP23 New Arrival for OPCO' , start: '2023-08-01 00:00', end: '2024-01-08 00:00', promo: 'OP23NAD30PN - OP23 New Arrival Get 30%'   , isUnread: false),
  Mail(name: 'OP21 Diskon Karyawan 30%'  , start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'OP21DK30P - OP21 Diskon Karyawan 30%'     , isUnread: false),
  Mail(name: 'OP22 Additional 5% OPCO'   , start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'OP22ADD5P - OP22 Additional 5% OPCO'      , isUnread: false),
  Mail(name: 'CP23 Free Calender'        , start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'CP23 - CP23 Free Calender'                , isUnread: false),
  Mail(name: 'VC23 Disc Vcr 100K On 600K', start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'VC23100AT600 - VC23 Disc Vcr 100K On 600K', isUnread: false),
  Mail(name: 'VC23 Disc Vcr 100K On 500K', start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'VC23100AT500 - VC23 Disc Vcr 100K On 500K', isUnread: false),
  Mail(name: 'LRB Get Discount 20%'      , start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'LRBGD20P - LRB Get Disc 20%'              , isUnread: false),
  Mail(name: 'LRB Member Get 20% Disc'   , start: '2023-07-19 00:00', end: '2024-01-08 00:00', promo: 'LRBMGD20P - LRB Get Disc 20%'             , isUnread: false),
  Mail(name: 'OP23 New Arrival for OPCO' , start: '2023-08-01 00:00', end: '2024-01-08 00:00', promo: 'OP23NAD30PN - OP23 New Arrival Get 30%'   , isUnread: false),
];



class PromoText extends StatefulWidget {
  const PromoText({super.key});

  @override
  State<PromoText> createState() => _PromoText();
}

class _PromoText extends State<PromoText> {
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
      appBar: AppBar(title: const Text("Promotion Schedule"),),
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
              child: const Text("Promotion Schedule",
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
                      const Text("Available Promo At",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black
                      ),
                      ),
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
                                  child: const Icon(Icons.date_range))
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
                                child: const Icon(Icons.search)), 
                          
                               
                              
              
                              // Container(
                              //   width: MediaQuery.of(context).size.width,
                              // )
                        
                          ],
                        )
                    ],
                    )
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
                                          "Name", 
                                          style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          ),
                                          )), 
                                       DataColumn(
                                        label: Text(
                                          "Start",
                                          style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          ),
                                          )),
                                       DataColumn(
                                        label: Text(
                                          "End", 
                                          style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          ),
                                          )),
                                       DataColumn(
                                        label: Text(
                                          "Promo", 
                                          style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          ),
                                          )),
                                      ],
                                      rows: mails.map((e) => DataRow(cells: [
                                        DataCell(Text(e.name)),
                                        DataCell(Text(e.start)),
                                        DataCell(Text(e.end)),
                                        DataCell(Text(e.promo),onTap: () {
                                          
                                        },),
                                      ])).toList()
                                      )),
              ),
            )
          ],
        )),
    );
  }

  
}
  
