
import 'package:flutter/material.dart';


class StoreBlock extends StatelessWidget {
  const StoreBlock({Key? key, required this.textName, required this.imagePath}) : super(key: key);

  final String textName;
  final String imagePath;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(21),
        child: Container(
          height: 170,
          color: Colors.red,
          child: Stack(
            children: [
              SizedBox(
                  width: double.maxFinite,
                  child: Image.network(imagePath, fit: BoxFit.cover,)),
              Positioned(
                  bottom: 24,
                  left: 32,
                  child: Text(textName,
                    style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );

  }
}
