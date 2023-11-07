import 'package:flutter/material.dart';
import 'package:pos/components/navbar.dart';
import 'package:flutter/services.dart';
import 'package:pos/main.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  runApp(MyApp());
}


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
  Mail(number: 'Rounding Setting : 100'  , total: 'Cash Register : 001'         , preview: 'Area Open Space',  isUnread: false),
  Mail(number: 'Multiuser Mode : true'   , total: 'Sales Organization : BS00'   , preview: ''               , isUnread: false),
  Mail(number: 'Passkey Level : 0'       , total: 'Site Code : LG26'            , preview: ''               , isUnread: false),
  Mail(number: ''                        , total: 'Site Name : Open Space'      , preview: ''               , isUnread: false),
  Mail(number: ''                        , total: 'Storage Location : 0001'     , preview: ''               , isUnread: false),
  Mail(number: ''                        , total: 'Company : PT.Berca Sportindo', preview: ''               , isUnread: false),

];



class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _home();
}

class _home extends State<home> {
 


  @override
  Widget build(BuildContext context) {
   return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(title: const Text("PT Berca Sportindo"),),
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: Center(
                child: const Text("Landing Home Page",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 82, 153, 2,),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(58),
                  topRight: Radius.circular(58)
                )
              ),
            ),
          
            Expanded(
              child: Container(
                 width:MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color.fromARGB(255, 82, 153, 2)
                  ),
                  borderRadius : const BorderRadius.only(
                    bottomLeft : Radius.circular(58),
                    bottomRight: Radius.circular(58),
                    
                  ),
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 10
                ),
                
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: DataTable(
                                        columns: const[ 
                                         DataColumn(
                                          label: Text(
                                            "Application Setting", 
                                            style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            ),
                                            )), 
                                         DataColumn(
                                          label: Text(
                                            "Registration",
                                            style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            ),
                                            )),
                                         DataColumn(
                                          label: Text(
                                            "Address", 
                                            style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            ),
                                            )),
                                       
                                        ],
                                        rows: mails.map((e) => DataRow(cells: [
                                          DataCell(Text(e.number)),
                                          DataCell(Text(e.total)),
                                          DataCell(Text(e.preview),),
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
  
