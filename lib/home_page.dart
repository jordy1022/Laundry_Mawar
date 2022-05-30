import 'package:flutter/material.dart';
import 'package:location/location.dart' as loc;
import 'package:get/get.dart';
import 'package:google_place/google_place.dart' as gp;
import 'package:laundry_mawar/cucibasah.dart';
import 'package:laundry_mawar/drycleaning.dart';
import 'package:laundry_mawar/sepatu.dart';
import 'package:laundry_mawar/profile.dart';
import 'package:laundry_mawar/helmet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   Future getNearbyLaundry() async {
    loc.Location location = loc.Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    locationData = await location.getLocation();

    var googlePlace = gp.GooglePlace("AIzaSyBCtzBnPcyAW4lMW8o_J6Ur4x-IQkvwuT8");
    var result = await googlePlace.search.getNearBySearch(
        gp.Location(lat: locationData.latitude, lng: locationData.longitude),
        2000,
        keyword: "laundry");

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: InkWell(
                        onTap: () {
                          Get.to(() => const ProfilePage());
                        },
                        child: Image.asset('assets/person.png')),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Selamat Datang",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.red[800])),
                        const Text("Achmad Najamudinanwar")
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Kategori",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[800]),
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const CuciBasahPage());
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          width: double.maxFinite,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/cucibasah.png',
                                scale: 8,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Cuci Basah",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[800],
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const DryCleaningPage());
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          width: double.maxFinite,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/drycleaning.png',
                                scale: 8,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Dry Cleaning",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[800],
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const SepatuPage());
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          width: double.maxFinite,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/shoes.png',
                                scale: 8,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Sepatu",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[800],
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const HelmetPage());
                      },
                      child: Card(
                        elevation: 10,
                        child: Container(
                          width: double.maxFinite,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/helmet.png',
                                scale: 8,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Helm",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[800],
                                    fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
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
                      child: Icon(Icons.info_outline, color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        flex: 5,
                        child: Text(
                          "Sebagian penyedia jasa pengiriman berpotensi tidak bisa beroperasi sementara waktu",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Laundry Terdekat",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[800]),
              ),
              const SizedBox(
                height: 20,
              ),
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
                      child: Icon(Icons.info_outline, color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        flex: 5,
                        child: Text(
                          "Sebagian penyedia jasa pengiriman berpotensi tidak bisa beroperasi sementara waktu",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
             const SizedBox(
                height: 20,
              ),
              FutureBuilder(
                  future: getNearbyLaundry(),
                  builder: (_, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                          child: Text("Fail to load data : ${snapshot.error}"));
                    } else if (snapshot.hasData) {
                      var data = snapshot.data as gp.NearBySearchResponse;
                      var results = data.results;
                      return ListView.builder(
                          itemCount: results!.length,
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            var obj = results[index];
                            return Card(
                              child:
                                  Text("${obj.name!}\nRating : ${obj.rating}"),
                            );
                          });
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
