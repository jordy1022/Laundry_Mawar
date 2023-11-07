import 'package:flutter/material.dart';
import 'package:pos/master/promotion.dart';
import 'package:pos/master/product_maintenance.dart';
import 'package:pos/sales/reprint_receipt.dart';
import 'package:pos/sales/sales_exchange.dart';
import 'package:pos/sales/void_sales.dart';
import 'package:pos/sales/print_settlement.dart';
import 'package:pos/login/login.dart';
import 'package:pos/logout/endshift.dart';
// import 'package:pos/sales/sales_order.dart';
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/league.png"), fit: BoxFit.fill)
          ), child: null,
          ),
          ExpansionTile(
            leading: const Icon(Icons.backpack),
            title: const Text("MASTER"),
            childrenPadding: const EdgeInsets.only(left: 60),
            children: [
              ListTile(
                title: const Text("Promotion Schedule"),
                onTap: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return const Promotion();
                }));
                },
              ),
              ListTile(
                title: const Text("Product"),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return const ProductMaintenance();
                  }));
                },
              )
            ],
          ),
          ExpansionTile(
            leading: const Icon(Icons.person),
            title: const Text("SALES"),
            childrenPadding: const EdgeInsets.only(left: 60),
            children: [
              ListTile(
                title: const Text("Reprint Receipt"),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return const ReprintReceipt();
                  }));
                },
              ),
              ListTile(
                title: const Text("Create Sales Order"),
                onTap: (){
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  //   return CreateSalesOrder(user: [],);
                  // }));
                },
              ),
              ListTile(
                title: const Text("Sales Exchange"),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return const SalesExchange();
                  }));
                },
              ),
              ListTile(
                title: const Text("Void Sales Order"),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return const VoidSales();
                  }));
                },
              ),
              ListTile(
                title: const Text("Print Settlement"),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return const PrintSettle();
                  }));
                },
              )


            ],
            
    ),
          ExpansionTile(
            leading: const Icon(Icons.logout),
            title: const Text("LOG OUT"),
            childrenPadding: const EdgeInsets.only(left: 60),
            children: [
              ListTile(
                title: const Text("Log Out"),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return  Login();
                  }));
                },
              ),
              ListTile(
                title: const Text("Change Shift"),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return EndShift();
                  }));
                },
              )
            ],
    )]),
    );
  }
}