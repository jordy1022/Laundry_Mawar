import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:laundry_mawar/home_page.dart';

class DryCleaningPage extends StatefulWidget {
  const DryCleaningPage({Key? key}) : super(key: key);

  @override
  State<DryCleaningPage> createState() => _DryCleaningPageState();
}

class _DryCleaningPageState extends State<DryCleaningPage> {
  String _harga = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dry Cleaning"),
        backgroundColor: Colors.red[800],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration:
                  const InputDecoration(labelText: "Berat Pakaian (Kg)"),
              onChanged: (text) {
                if (text.isNotEmpty) {
                  setState(() {
                    _harga = "${int.parse(text) * 3000}";
                  });
                }
                if (text.isEmpty) {
                  setState(() {
                    _harga = "0";
                  });
                }
              },
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text("Total Harga"),
            Text(
              "Rp. $_harga",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.red[800],
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    Get.snackbar("Informasi", "Dry Cleaning telah DiPesan");
                    Get.to(() => const HomePage());
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.red[900]),
                  child: const Text(
                    "PESAN",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
