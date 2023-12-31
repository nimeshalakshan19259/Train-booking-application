import 'dart:async';

import 'package:booking/controllers/location_con.dart';
import 'package:booking/controllers/shared_pref.dart';
import 'package:booking/pages/profile.dart';
import 'package:booking/pages/select_location.dart';
import 'package:booking/utils/constants.dart';
import 'package:booking/utils/customslider.dart';
import 'package:booking/utils/dummy.dart';
import 'package:booking/utils/event_uti.dart';
import 'package:booking/utils/menu_items.dart';
import 'package:booking/utils/movie.dart';
import 'package:booking/utils/mythemes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/auth_con.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String city = cities[0];
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  void initState() {
    SharedPref.getLocation()
        .then((value) => LocationController.instance.setCity(value));
    super.initState();
  }

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: MyTheme.statusBar));
    String? picUrl = AuthController.instance.user!.photoURL;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: MyTheme.statusBar,
            leading: Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: GestureDetector(
                onTap: () {

                },

              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AuthController.instance.user!.displayName ?? "Name",
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const SelectionLocationScreen());
                    },
                    child: Row(
                      children: [
                        Obx(
                          () => Text(
                            LocationController.instance.city.value,
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                inherit: true,
                                fontSize: 14),
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down,
                            color: Colors.white.withOpacity(0.7)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.2,
                  width: size.width,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5)
                    ],
                  ),
                  child: PageView.builder(
                    itemCount: 3,
                    itemBuilder: (_, i) {
                      return CustomSlider(
                        index: i,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20),
                  child: Text(
                    "TICKETS",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8)),
                  ),
                ),
                const MyMenuItem(),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10),
                  child: Text(
                    "CHOOSE YOUR TRAIN SEAT",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8)),
                  ),
                ),
                const MoviesItems(),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nearby Train stations".toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "View All",
                          style: TextStyle(color: MyTheme.splash),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10, right: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/plays/pass.png",
                        color: Colors.black.withOpacity(0.8),
                        height: 18,
                        width: 18,
                      ),
                      const SizedBox(
                        width: 5,
                      ),

                    ],
                  ),
                ),
                //EventItems(
                // events: events,
                // ),

                // EventItems(
                //  events: plays,
//),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
