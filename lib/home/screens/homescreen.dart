import 'package:api_app/models/card_items.dart';
import 'package:api_app/models/icon_items.dart';
import 'package:api_app/widgets/custom_cardwidget.dart';
import 'package:api_app/widgets/custom_category.dart';
import 'package:api_app/widgets/custom_iconwidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  final List<String> imgList = [
    'https://www.incimages.com/uploaded_files/image/1024x576/getty_487300925_9705859704500120_66418.jpg',
    'https://cdn1.byjus.com/wp-content/uploads/2018/10/NCERT-Books-for-Class-10.jpg',
    'https://www.thecreativepenn.com/wp-content/uploads/2016/01/turn-your-book-into-a-multimedia-course.jpg',
    'http://static1.squarespace.com/static/5ac78bfea2772c5ffa1cc8a5/t/5eb4187a8a1cef378523f0a0/1588861052953/book-launch-blueprint+copy.png?format=1500w',
    'https://www.thecreativepenn.com/wp-content/uploads/2018/08/How-to-get-book-reviews-1024x576.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1FzJstv0hfs1enrhq70bM6OAtlnKXIpuuS5eIh1L6PGPNDk3KlAfZmsx5cXhTZNTyAE4&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmk-9ZkdkNcyX2JwO-KMqZ8qGzhKq01sMffA&usqp=CAU',
    'https://videohive.img.customer.envatousercontent.com/files/261029556/comic%20book%20template%20preview.jpg?auto=compress%2Cformat&fit=crop&crop=top&max-h=8000&max-w=590&s=387ad7a7cc31b6d61cc26a10cfe3ed86',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              width: double.infinity,
              height: 150,
              child: CarouselSlider(
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  aspectRatio: 2.0,
                  viewportFraction: 1,
                  initialPage: 1,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: imgList
                    .map(
                      (item) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: NetworkImage(item), fit: BoxFit.cover),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.green.shade900)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4),
                    ),
                  ),
                );
              }).toList(),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 10, top: 25.0, right: 10, bottom: 18.0),
              padding: const EdgeInsets.only(top: 8.0),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    color: Colors.grey.withOpacity(0.3),
                    offset: const Offset(0.1, 0.1),
                    spreadRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: itemsicon.map((e) {
                  return CustomIconWidget(
                    images: e.images,
                    text: e.text,
                    onPress: e.onPress,
                  );
                }).toList(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: CustomCategory(
                label: 'Recommended',
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                children: carditem.map((e) {
                  return const CustomCardWidget();
                }).toList(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: CustomCategory(
                label: 'Most Viewed',
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                children: carditem.map((e) {
                  return const CustomCardWidget();
                }).toList(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: CustomCategory(
                label: 'Lastest Book',
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                children: carditem.map((e) {
                  return const CustomCardWidget();
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
