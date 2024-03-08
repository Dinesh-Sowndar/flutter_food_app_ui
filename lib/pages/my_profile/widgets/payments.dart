import 'package:flutter/material.dart';
import 'package:food_app/pages/my_profile/widgets/card_tile.dart';
import 'package:food_app/widgets/add_button.dart';

class Payments extends StatelessWidget {
  const Payments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "My Cards",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 180.0,
                  width: 300.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/debit_card.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                const AddButton()
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Add new Cards",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            CardTile(
              img: 'assets/images/google.png',
              type: 'Google Pay',
              icon: Icon(Icons.radio_button_checked, color: Colors.amber[400]),
            ),
            const CardTile(
              img: 'assets/images/mc.png',
              type: 'Credit Card',
              icon: Icon(Icons.radio_button_unchecked, color: Colors.grey),
            ),
            const CardTile(
              img: 'assets/images/apple.png',
              type: 'Apple Pay',
              icon: Icon(Icons.radio_button_unchecked, color: Colors.grey),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            "Add New",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width, 50),
            primary: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
