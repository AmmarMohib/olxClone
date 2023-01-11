import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_radio.dart';
import 'package:olx_clone/routes/sell/offerings/Mobiles/accessories.dart';
import 'package:olx_clone/routes/sell/offerings/Mobiles/mobiles.dart';
import 'package:olx_clone/routes/sell/offerings/Vehicles/vehicles.dart';
import 'package:olx_clone/routes/sell/offerings/animals/animals.dart';
import 'package:olx_clone/routes/sell/offerings/bikes/bikes.dart';
import 'package:olx_clone/routes/sell/offerings/books,sports/bookssports.dart';
import 'package:olx_clone/routes/sell/offerings/bussiness/bussiness.dart';
import 'package:olx_clone/routes/sell/offerings/elect%20and%20home%20appl/elecanhome.dart';
import 'package:olx_clone/routes/sell/offerings/fashionanbeauty/fashion.dart';
import 'package:olx_clone/routes/sell/offerings/furniture/furniture.dart';
import 'package:olx_clone/routes/sell/offerings/jobs/jobs.dart';
import 'package:olx_clone/routes/sell/offerings/kids/kids.dart';
import 'package:olx_clone/routes/sell/offerings/prop%20for%20rent/propforrent.dart';
import 'package:olx_clone/routes/sell/offerings/prop%20for%20sale/propforsale.dart';
import 'package:olx_clone/routes/sell/offerings/services/services.dart';

class IncludeDetails extends StatefulWidget {
  final String category;
  const IncludeDetails({super.key, required this.category});

  @override
  State<IncludeDetails> createState() => _IncludeDetailsState();
}

class _IncludeDetailsState extends State<IncludeDetails> {
  // List<RadioModel> sampleData = <RadioModel>[];
  int _value = 1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.category);
    if (widget.category == "charging cables" ||
        widget.category == "converters" ||
        widget.category == "chargers" ||
        widget.category == "screens" ||
        widget.category == "screen protectors" ||
        widget.category == "mobile stands" ||
        widget.category == "ring lights" ||
        widget.category == "selfie sticks" ||
        widget.category == "power banks" ||
        widget.category == "headphones" ||
        widget.category == "earphones" ||
        widget.category == "covers & cases" ||
        widget.category == "externel memory" ||
        widget.category == "other accessories") {
      return AccessoriesDetails(
        category: widget.category,
      );
    } else if (widget.category == "tablets" ||
        widget.category == "smart watches" ||
        widget.category == "mobile phones") {
      return MobilesDetails(
        category: widget.category,
      );
    } else if (widget.category == "cars" ||
        widget.category == "cars accessories" ||
        widget.category == "spare parts car" ||
        widget.category == "buses, vans & trucks" ||
        widget.category == "rickshaw & chingchi" ||
        widget.category == "tractors & trailers" ||
        widget.category == "cars on installments" ||
        widget.category == "boats" ||
        widget.category == "others vehicles") {
      return VehiclesDetails(category: widget.category);
    } else if (widget.category == "land & plots" ||
        widget.category == "houses" ||
        widget.category == "apartments & flats" ||
        widget.category == "shops - offices - commercial space" ||
        widget.category == "portions & floors") {
      return PropforsaleDetails(category: widget.category);
    } else if (widget.category == "roommates & paying guests" ||
        widget.category == "rooms" ||
        widget.category == "vacation rentals - guest houses") {
      return PropforrentDetails(
        category: widget.category,
      );
    } else if (widget.category == "computers & accessories" ||
        widget.category == "tv - video - audio" ||
        widget.category == "cameras & accessories" ||
        widget.category == "games & entertainment" ||
        widget.category == "other home appliances" ||
        widget.category == "generators, ups & power solutions" ||
        widget.category == "kitchen appliances" ||
        widget.category == "ac & coolers" ||
        widget.category == "fridge & freezers" ||
        widget.category == "washing machine & dryers") {
      return ElectanHomeDetails(category: widget.category);
    } else if (widget.category == "bikes & motorcycles" ||
        widget.category == "spare parts bike" ||
        widget.category == "bicycles" ||
        widget.category == "atv & quads" ||
        widget.category == "scooty & scooters") {
      return BikesDetails(category: widget.category);
    } else if (widget.category == "bussiness for sale" ||
        widget.category == "food & resturants" ||
        widget.category == "trade & industrial" ||
        widget.category == "construction & heavy machinery" ||
        widget.category == "agriculture" ||
        widget.category == "other bussiness & industry" ||
        widget.category == "medical & pharma") {
      return BussinessDetails(category: widget.category);
    } else if (widget.category == "tuitions & academies" ||
        widget.category == "travel & visa" ||
        widget.category == "car rental" ||
        widget.category == "maids" ||
        widget.category == "other domestic help" ||
        widget.category == "cooks" ||
        widget.category == "babysitters" ||
        widget.category == "nursing staff" ||
        widget.category == "drivers & taxi" ||
        widget.category == "web development" ||
        widget.category == "mobile development" ||
        widget.category == "other services" ||
        widget.category == "electronics & computer repair" ||
        widget.category == "event services" ||
        widget.category == "health & beauty" ||
        widget.category == "movers & packers" ||
        widget.category == "other repair services" ||
        widget.category == "painters" ||
        widget.category == "electricians" ||
        widget.category == "carpenters" ||
        widget.category == "pest control" ||
        widget.category == "plumbers" ||
        widget.category == "water tank cleaning" ||
        widget.category == "ac services" ||
        widget.category == "deep cleaning" ||
        widget.category == "geyser services" ||
        widget.category == "catering & restaurant" ||
        widget.category == "farm & fresh food") {
      return ServicesDetails(category: widget.category);
    } else if (widget.category == "online jobs" ||
        widget.category == "marketing jobs" ||
        widget.category == "advertising & pr jobs" ||
        widget.category == "education jobs" ||
        widget.category == "customer services jobs" ||
        widget.category == "sales jobs" ||
        widget.category == "it & networking jobs" ||
        widget.category == "hotels & tourism jobs" ||
        widget.category == "clerical & administration jobs" ||
        widget.category == "human resources jobs" ||
        widget.category == "accounting & finance jobs" ||
        widget.category == "manufacturing" ||
        widget.category == "medical jobs" ||
        widget.category == "domestic staff jobs" ||
        widget.category == "part - time jobs" ||
        widget.category == "other jobs") {
      return JobsDetails(
        category: widget.category,
      );
    } else if (widget.category == "fish & aquariumns" ||
        widget.category == "birds" ||
        widget.category == "hens & aquariums" ||
        widget.category == "cats" ||
        widget.category == "dogs" ||
        widget.category == "livestock" ||
        widget.category == "horses" ||
        widget.category == "pet food & accessories") {
      return AnimalDetails(category: widget.category);
    } else if (widget.category == "sofa & chairs" ||
        widget.category == "beds & wardrobes" ||
        widget.category == "home decoration" ||
        widget.category == "tables & dining" ||
        widget.category == "garden & outdoor" ||
        widget.category == "painting & mirrors" ||
        widget.category == "rugs & carpets" ||
        widget.category == "curtains & blinds" ||
        widget.category == "office furniture" ||
        widget.category == "other household items") {
      return FurnitureDetails(category: widget.category);
    } else if (widget.category == "clothes" ||
        widget.category == "footwear" ||
        widget.category == "jewellery" ||
        widget.category == "make up" ||
        widget.category == "skin & hair" ||
        widget.category == "watches" ||
        widget.category == "wedding" ||
        widget.category == "lawn & pret" ||
        widget.category == "couture" ||
        widget.category == "other fashion") {
      return FashionDetails(category: widget.category);
    } else if (widget.category == "books & magazines" ||
        widget.category == "musical instruments" ||
        widget.category == "sports equipment" ||
        widget.category == "gym & fitness" ||
        widget.category == "other hobbies") {
      return BooksDetails(category: widget.category);
    } else if (widget.category == "kids furniture" ||
        widget.category == "toys" ||
        widget.category == "prams & walkers" ||
        widget.category == "swings & slides" ||
        widget.category == "kids bikes" ||
        widget.category == "kids accessories") {
      return KidsDetails(category: widget.category);
    } else {
      return Text("no category selected");
    }
  }
}
