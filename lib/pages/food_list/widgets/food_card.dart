import 'package:flutter/material.dart';
import 'package:food_app/model/food_model.dart';

class FoodCard extends StatelessWidget {
  final FoodModel foodData;

  const FoodCard({super.key, required this.foodData});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Colors.white,
        
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: 15.0,
            spreadRadius: 0.5,
            offset: const Offset(
              3.0,
              3.0,
            ),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[


            ClipRRect(
                borderRadius:  const BorderRadius.all(Radius.circular(12)),
              child: Container(
                // color: Colors.grey[300],
                height: 120,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(foodData.image,fit: BoxFit.contain,),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              foodData.name,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                foodData.description,
                style: TextStyle(fontSize: 11, color: Colors.grey[500]),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/cal.png",
                  height: 14,
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  "${foodData.cal} Calories",
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 11,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                const Text(
                  "\$",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.amber),
                ),
                Text(
                  foodData.price,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
