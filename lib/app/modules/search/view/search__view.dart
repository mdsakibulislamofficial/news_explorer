import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(hintText: "Search...",focusedBorder:OutlineInputBorder(
borderSide: const BorderSide(color: Color.fromARGB(255, 216, 206, 206), width: 1.0),
borderRadius: BorderRadius. circular(35.0),
),),
        
      ),
    );
  }
}
