import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:olx_clone/routes/addDetails/slider.dart';

class AddDetails extends StatefulWidget {
  const AddDetails(
      {Key? key,
      required this.des,
      required this.price,
      required this.imageUrl,
      required this.slides})
      : super(key: key);
  final String des;
  final String price;
  final String imageUrl;
  final List slides;
  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  @override
  Widget build(BuildContext context) {
    print(widget.price);
    print(widget.des);
    print(widget.imageUrl);
    return MaterialApp(
        home: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(

              // systemOverlayStyle:  const SystemUiOverlayStyle(
              //     statusBarColor: Colors.black,systemNavigationBarColor: Colors.black),
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                iconSize: 30,
              ),
              title: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share),
                    color: Colors.black,
                  )))),
      body: Column(children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Slideshow(
                          imageURL: widget.slides,
                        )));
          },

          child: Container(
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: PageView.builder(
                itemCount: widget.slides.length,
                // pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      widget.slides[pagePosition],
                      fit: BoxFit.fitWidth,
                      width: MediaQuery.of(context).size.width,
                    ),
                  );
                }),
          ),
        ),
      ]),
    ));
  }
}
