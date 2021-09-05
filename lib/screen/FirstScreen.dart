import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mountain_ui/model/place_model.dart';
import 'package:flutter_mountain_ui/screen/detail_screen.dart';

class FirstScreen extends StatelessWidget {
  List<PlaceModel> place = [
    PlaceModel(
      id: 1,
      title: 'Nugget Falls Trail',
      reviews: 35,
      difficulty: 'Easy',
      elevation: 450,
      distance: 10.1,
      price: 100,
      description:
          'In early 1969 Leslie West, formerly of the Long Island R&B band The Vagrants, put together a band, Leslie West Mountain, with Norman Landsberg (keyboards, bass) and Ken Janick (drums) and began playing gigs and recording demos.',
      image: 'pic1.jpg',
    ),
    PlaceModel(
      id: 2,
      title: 'Appalachian Trail',
      reviews: 150,
      difficulty: 'Difficult',
      elevation: 200,
      distance: 5.5,
      price: 120,
      description:
          'In early 1969 Leslie West, formerly of the Long Island R&B band The Vagrants, put together a band, Leslie West Mountain, with Norman Landsberg (keyboards, bass) and Ken Janick (drums) and began playing gigs and recording demos.',
      image: 'pic2.jpg',
    ),
    PlaceModel(
      id: 3,
      title: 'Green Trail',
      reviews: 124,
      difficulty: 'Normal',
      elevation: 350,
      distance: 9.0,
      price: 220,
      description:
          'In early 1969 Leslie West, formerly of the Long Island R&B band The Vagrants, put together a band, Leslie West Mountain, with Norman Landsberg (keyboards, bass) and Ken Janick (drums) and began playing gigs and recording demos.',
      image: 'pic3.jpg',
    ),
    PlaceModel(
      id: 4,
      title: 'White Hills',
      reviews: 20,
      difficulty: 'Easy',
      elevation: 420,
      distance: 6.5,
      price: 170,
      description:
          'In early 1969 Leslie West, formerly of the Long Island R&B band The Vagrants, put together a band, Leslie West Mountain, with Norman Landsberg (keyboards, bass) and Ken Janick (drums) and began playing gigs and recording demos.',
      image: 'pic4.jpg',
    ),
    PlaceModel(
      id: 5,
      title: 'Green Place',
      reviews: 98,
      difficulty: 'Easy',
      elevation: 200,
      distance: 1.5,
      price: 140,
      description:
          'In early 1969 Leslie West, formerly of the Long Island R&B band The Vagrants, put together a band, Leslie West Mountain, with Norman Landsberg (keyboards, bass) and Ken Janick (drums) and began playing gigs and recording demos.',
      image: 'pic5.jpg',
    ),
    PlaceModel(
      id: 6,
      title: 'Brown Forest',
      reviews: 10,
      difficulty: 'Normal',
      elevation: 120,
      distance: 12.5,
      price: 70,
      description:
          'In early 1969 Leslie West, formerly of the Long Island R&B band The Vagrants, put together a band, Leslie West Mountain, with Norman Landsberg (keyboards, bass) and Ken Janick (drums) and began playing gigs and recording demos.',
      image: 'pic6.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.green[700],
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Hi, Mehrab',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey[900],
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.person,
                            size: 20,
                            color: Colors.grey[900],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                // height: 150,
                width: double.infinity,
                margin: EdgeInsets.only(right: 140, left: 10, bottom: 20),
                child: Text(
                  'Discover Trails',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey[900],
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[900],
                      ),
                      child: Icon(
                        Icons.done_outline,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20, left: 15, top: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          TextWidget(text: 'For You'),
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.grey[900],
                          ),
                        ],
                      ),
                      TextWidget(text: 'Popular'),
                      TextWidget(text: 'Easy'),
                      TextWidget(text: 'Risk'),
                      TextWidget(text: 'Moderate'),
                      TextWidget(text: 'Camp'),
                      TextWidget(text: 'Rainy'),
                      TextWidget(text: 'Cloudy'),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 200,
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 25,
                  ),
                  itemCount: place.length,
                  itemBuilder: (context, index) => FirstScreen_item(
                    place: place,
                    index: index,
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

class FirstScreen_item extends StatelessWidget {
  const FirstScreen_item({required this.place, required this.index});

  final List<PlaceModel> place;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: Colors.transparent,
      elevation: 20,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      placeModel: place[index],
                    ),
                  ),
                );
              },
              child: Image.asset(
                place[index].image,
                height: 250,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 140,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
                color: Colors.white38,
              ),
              child: Column(
                children: [
                  Text(
                    place[index].title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '\$' + place[index].price.round().toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;

  const TextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey[900],
          fontSize: 14,
        ),
      ),
    );
  }
}
