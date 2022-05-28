import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.red[800],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/person.png',
                scale: 5,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Achmad Najamudinanwar",
              style: TextStyle(fontSize: 25),
            ),
            const Text("Alamat : Jl. Letjen S. Parman No. 1"),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "History",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.red[800]),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Colors.red[800],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Flexible(
                    flex: 1,
                    child:
                        Icon(Icons.water_damage_outlined, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 5,
                    child: Text(
                      "22-04-2022 Cuci Kering",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Colors.red[800],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Flexible(
                    flex: 1,
                    child:
                        Icon(Icons.water_damage_outlined, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 5,
                    child: Text(
                      "26-04-2022 Cuci Basah",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Colors.red[800],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Flexible(
                    flex: 1,
                    child:
                        Icon(Icons.water_damage_outlined, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 5,
                    child: Text(
                      "29-04-2022 Cuci Basah",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Colors.red[800],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Flexible(
                    flex: 1,
                    child:
                        Icon(Icons.water_damage_outlined, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 5,
                    child: Text(
                      "01-05-2022 Setrika",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Colors.red[800],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Flexible(
                    flex: 1,
                    child:
                        Icon(Icons.water_damage_outlined, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 5,
                    child: Text(
                      "05-04-2022 Cuci Kering",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Colors.red[800],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Flexible(
                    flex: 1,
                    child:
                        Icon(Icons.water_damage_outlined, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 5,
                    child: Text(
                      "11-04-2022 Cuci BasahÍ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
