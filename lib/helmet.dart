import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:laundry_mawar/home_page.dart';

class HelmetPage extends StatefulWidget {
  const HelmetPage({Key? key}) : super(key: key);

  @override
  State<HelmetPage> createState() => _HelmetPageState();
}

class _HelmetPageState extends State<HelmetPage> {
  final TextEditingController _jumlah = TextEditingController();
  String _harga = "0", _jenisHelm = "Full Face";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Helm"),
        backgroundColor: Colors.red[800],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              value: _jenisHelm,
              isExpanded: true,
              onChanged: (String? newValue) {
                setState(() {
                  _jenisHelm = newValue!;
                  _jumlah.text = "0";
                  _harga = "0";
                });
              },
              items: <String>['Full Face', 'Half Face']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Jumlah Helm"),
              onChanged: (text) {
                if (text.isNotEmpty) {
                  setState(() {
                    if (_jenisHelm == "Full Face") {
                      _harga = "${int.parse(text) * 8000}";
                    } else {
                      _harga = "${int.parse(text) * 6000}";
                    }
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
                    Get.snackbar("Informasi", "Setrika telah DiPesan");
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
