import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/commons/custom_radio.dart';
import 'package:olx_clone/routes/sell/offerings/Mobiles/accessories.dart';
import 'package:olx_clone/routes/sell/offerings/Mobiles/mobiles.dart';
import 'package:olx_clone/routes/sell/offerings/Vehicles/vehicles.dart';
import 'package:olx_clone/routes/sell/offerings/bikes/bikes.dart';
import 'package:olx_clone/routes/sell/offerings/bussiness/bussiness.dart';
import 'package:olx_clone/routes/sell/offerings/elect%20and%20home%20appl/elecanhome.dart';
import 'package:olx_clone/routes/sell/offerings/prop%20for%20rent/propforrent.dart';
import 'package:olx_clone/routes/sell/offerings/prop%20for%20sale/propforsale.dart';

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
      return Mobiles(
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
    } else {
      return BussinessDetails(category: widget.category);
    }
  }
}
