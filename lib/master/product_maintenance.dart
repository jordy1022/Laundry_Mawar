import 'package:flutter/material.dart';
import 'package:pos/components/navbar.dart';

class ProductMaintenance extends StatelessWidget {
  const ProductMaintenance({super.key});
  
  get context => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(title: const Text("Product Maintenance"),),
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              child: const Text("Promotion Schedule",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 82, 153, 2)
              ),
            )
          ],
        )),
    );
  }
  Future<void> _selectDate() async {
    await showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(2000), 
      lastDate: DateTime(2100));
  }
}