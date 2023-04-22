import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/theme/color.dart';
import 'package:food_app/utils/data.dart';
import 'package:food_app/widgets/category_item.dart';
import 'package:food_app/widgets/custom_textbox.dart';
import 'package:food_app/widgets/feature_item.dart';
import 'package:food_app/widgets/notification_box.dart';
import 'package:food_app/widgets/popular_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.clear_all_rounded,
                size: 28,
              ),
            ),
          ),
          NotificationBox(
            number: 1,
          )
        ],
      ),
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Hello Sangvaleap!",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Find Your Meals",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _buildSearch(),
          const SizedBox(
            height: 25,
          ),
          _buildAdsImage(),
          const SizedBox(
            height: 25,
          ),
          _buildCategories(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 14, color: darker),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          _buildPopulars(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Featured",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: _buildFeatured(),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  _buildSearch() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: CustomTextBox(
        hint: "Search",
        prefix: Icon(Icons.search, color: darker),
        suffix: Icon(
          Icons.filter_list_outlined,
          color: primary,
        ),
      ),
    );
  }

  _buildAdsImage() {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
          ),
        ),
      ),
    );
  }

  _buildCategories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(bottom: 5, left: 15),
      child: Row(
        children: [
          CategoryItem(
            data: {
              "name": "All",
              "icon": FontAwesomeIcons.th,
            },
            seleted: true,
          ),
          ...List.generate(
            categories.length,
            (index) => CategoryItem(data: categories[index]),
          )
        ],
      ),
    );
  }

  _buildPopulars() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 15),
      child: Row(
        children: List.generate(
          populars.length,
          (index) => PopularItem(
            data: populars[index],
          ),
        ),
      ),
    );
  }

  _buildFeatured() {
    return Column(
      children: List.generate(
        featured.length,
        (index) => FeaturedItem(data: featured[index]),
      ),
    );
  }
}
