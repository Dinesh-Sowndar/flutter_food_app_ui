import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                hintText: "Search Food",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      10.0), 
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors
                          .grey[300]!), 
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
                hintStyle: const TextStyle(
                  fontSize: 14,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 22,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            width: 48.00,
            height: 48.00,
            decoration: BoxDecoration(
              color: Colors.amber[400],
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: const Icon(
              Icons.filter_list,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
