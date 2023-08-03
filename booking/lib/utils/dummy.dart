import 'package:booking/model/adslider.dart';
import 'package:booking/model/train_model.dart';
import 'package:booking/model/crew_cast_model.dart';
import 'package:booking/model/event.dart';
import 'package:booking/model/menu.dart';
import 'package:booking/model/movie.dart';
import 'package:booking/model/offer_model.dart';
import 'package:booking/model/seat_layout.dart';
import 'package:booking/utils/mythemes.dart';

import '../utils/constants.dart';

List<AdSliderModel> sliderData = [
  AdSliderModel(
    url: "assets/25872575_train_boarding_06.jpg",
    redirectUrl: Constants.baseApiUrl,
  ),

];

List<MenuModel> menus = [
  MenuModel(name: "Tickets", asset: "assets/icons/train-ticket-svgrepo-com.svg"),
];

List<MovieModel> movies = [
  MovieModel(
    title: "ColomboFort-Badulla",
    time: "2h 10m",
    trainNumber: "ABA12345",
    description: "description",
    actors: ["actor a", "actor b"],
    like: 83,
    bannerUrl: "assets/movies/train002.png",
    name: "Chadwick",
    image: "assets/actors/chadwick.png",
    namee: "Letitia Wright",
    imagee: "assets/actors/LetitiaWright.png",
  ),
  MovieModel(
    title: "Kandy Express",
    time: "1h 10m",
    trainNumber: "BPC123454",
    description: "description",
    actors: ["actor a", "actor b"],
    like: 80,
    bannerUrl: "assets/movies/train002.png",
    name: "Chadwick",
    image: "assets/actors/chadwick.png",
    namee: "Letitia Wright",
    imagee: "assets/actors/LetitiaWright.png",
  ),
  MovieModel(
    title: "ColomboFort-Kandy",
    time: "30m",
    trainNumber: "CDC12345",
    description: "description",
    actors: ["actor a", "actor b"],
    like: 90,
    bannerUrl: "assets/movies/train002.png",
    name: "Chadwick",
    image: "assets/actors/chadwick.png",
    namee: "Letitia Wright",
    imagee: "assets/actors/LetitiaWright.png",
  ),
  MovieModel(
    title: "ColomboFort-Jaffna",
    time: "25m",
    trainNumber: "DSD12345",
    description: "description",
    actors: ["actor a", "actor b"],
    like: 84,
    bannerUrl: "assets/movies/train002.png",
    name: "Chadwick",
    image: "assets/actors/chadwick.png",
    namee: "Letitia Wright",
    imagee: "assets/actors/LetitiaWright.png",
  ),
];

List<EventModel> events = [
  EventModel(
    title: "Happy Halloween 2K19",
    description: "Music show",
    date: "date",
    bannerUrl: "assets/events/event1.png",
  ),
  EventModel(
    title: "Music DJ king monger Sert...",
    description: "Music show",
    date: "date",
    bannerUrl: "assets/events/event2.png",
  ),
  EventModel(
    title: "Summer sounds festiva..",
    description: "Comedy show",
    date: "date",
    bannerUrl: "assets/events/event3.png",
  ),
  EventModel(
    title: "Happy Halloween 2K19",
    description: "Music show",
    bannerUrl: "assets/events/event4.png",
    date: "date",
  ),
];

List<EventModel> plays = [
  EventModel(
    title: "Alex in wonderland",
    description: "Comedy Show",
    date: "date",
    bannerUrl: "assets/plays/play1.png",
  ),
  EventModel(
    title: "Marry poppins puffet show",
    description: "Music Show",
    date: "date",
    bannerUrl: "assets/plays/play2.png",
  ),
  EventModel(
    title: "Patrimandram special dewali",
    description: "Dibet Show",
    date: "date",
    bannerUrl: "assets/plays/play3.png",
  ),
  EventModel(
    title: "Happy Halloween 2K19",
    description: "Music Show",
    bannerUrl: "assets/plays/play4.png",
    date: "date",
  ),
];

List<String> screens = [
  "1st Class",
  "2nd Class",
];

List<String> cities = [
  "Badulla",
  "Colombo",
  "Jaffna",
  "Ella",
  "Kandy",
];
final seatLayout = SeatLayoutModel(
    rows: 8,
    cols: 8,
    seatTypes: [
      {"title": "Per Seat", "price": 580.0, "status": "Filling Fast"},
    ],
    theatreId: 123,
    gap: 2,
    gapColIndex: 4,
    isLastFilled: true,
    rowBreaks: [8]);
List<OfferModel> offers = [
  OfferModel(
    title: "",
    description: "",
    expiry: DateTime(2022, 4, 15, 12),
    startTime: DateTime(2022, 3, 15, 12),
    discount: 100,
    color: MyTheme.redTextColor,
    gradientColor: MyTheme.redGiftGradientColors,
  ),
  OfferModel(
    title: "",
    description: "",
    expiry: DateTime(2022, 4, 15, 12),
    startTime: DateTime(2022, 3, 15, 12),
    discount: 100,
    color: MyTheme.greenTextColor,
    gradientColor: MyTheme.greenGiftGradientColors,
    icon: "gift_green.svg",
  ),
];
List<String> facilityAsset = [
  "assets/icons/cancel.svg",
  "assets/icons/parking.svg",
  "assets/icons/cutlery.svg",
  "assets/icons/rocking_horse.svg",
];



List<TheatreModel> theatres = [
  TheatreModel(id: "1", name: "උඩරට මැණිකේ (Colombo Fort - Badulla)"),
  TheatreModel(id: "2", name: "Kandy Express"),
  TheatreModel(id: "3", name: "Colombo Fort - Kandy"),
  TheatreModel(id: "4", name: "යාල් දේවී (Colombo Fort - Jaffna)"),
];

final List<int> s = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
