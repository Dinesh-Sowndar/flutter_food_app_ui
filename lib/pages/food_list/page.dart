import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_app/model/food_model.dart';
import 'package:food_app/pages/food_details/page.dart';
import 'package:food_app/pages/food_list/widgets/filter.dart';
import 'package:food_app/pages/food_list/widgets/food_card.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  List<FoodModel> foods = [
    FoodModel(
      name: "Idli",
      description: "With spicy Chutney",
      cal: "65",
      price: "30.00",
      image: "assets/images/idli.jpeg",
    ),
    FoodModel(
      name: "Idiyappam",
      description: "With spicy Motton curry",
      cal: "75",
      price: "50.00",
      image: "assets/images/idiyapam.jpeg",
    ),
    FoodModel(
      name: "Ven Pongal",
      description: "With Sambar and Chutney",
      cal: "85",
      price: "40.00",
      image: "assets/images/pongal.png",
    ),
    FoodModel(
      name: "Dosa",
      description: "With spicy Chutney",
      cal: "65",
      price: "60.00",
      image: "assets/images/dosa.png",
    ),
    FoodModel(
      name: "Full Meals",
      description: "With five Side-Dish",
      cal: "128",
      price: "110.00",
      image: "assets/images/meals.png",
    ),
    FoodModel(
      name: "Paniyaram",
      description: "With spicy Chutneyy",
      cal: "43",
      price: "35.00",
      image: "assets/images/paniyaram.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 15,
              ),
              const Text(
                "South Indian Foods",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Filter(),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  children: [
                    const Center(
                      child: Text(
                        "Found 80 results",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    for (var i = 0; i < foods.length; i++)
                      InkWell(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FoodDetailPage(
                                          foodData: foods[i],
                                        )),
                              ),
                          child: FoodCard(foodData: foods[i]))
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
