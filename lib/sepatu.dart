import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:laundry_mawar/home_page.dart';

class SepatuPage extends StatefulWidget {
  const SepatuPage({Key? key}) : super(key: key);

  @override
  State<SepatuPage> createState() => _SepatuPageState();
}

class _SepatuPageState extends State<SepatuPage> {
  final TextEditingController _jumlah = TextEditingController();
  String _harga = "0", _jenisSepatu = "Sneaker";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sepatu"),
        backgroundColor: Colors.red[800],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              value: _jenisSepatu,
              isExpanded: true,
              onChanged: (String? newValue) {
                setState(() {
                  _jenisSepatu = newValue!;
                  _jumlah.text = "0";
                  _harga = "0";
                });
              },
              items: <String>['Sneaker', 'Boots']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            TextField(
              controller: _jumlah,
              decoration:
                  const InputDecoration(labelText: "Jumlah Pasang Sepatu"),
              onChanged: (text) {
                if (text.isNotEmpty) {
                  setState(() {
                    _jumlah.text = text;
                    if (_jenisSepatu == "Sneaker") {
                      _harga = "${int.parse(text) * 12000}";
                    } else {
                      _harga = "${int.parse(text) * 10000}";
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
                    Get.snackbar("Informasi", "Premium Wash telah DiPesan");
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
