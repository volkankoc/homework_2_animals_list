import 'dart:math';

import 'package:flutter/material.dart';
import 'package:homework_2_animals_list/config/app_string.dart';
import 'package:homework_2_animals_list/config/color_manager.dart';
import 'package:homework_2_animals_list/config/other_size.dart';
import 'package:homework_2_animals_list/data/animals.dart';
import 'package:homework_2_animals_list/utils/ui/components/custom_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: ListView.builder(
          itemCount: animal.length,
          itemBuilder: (context, index) {
            return _card(index);
          }),
    );
  }

  Card _card(int index) {
    return Card(
      child: ListTile(
        shape:RoundedRectangleBorder(
          side:const BorderSide(color: ColorManager.cardBorderColor, width: OtherSize.cardBorderWidth),
          borderRadius: BorderRadius.circular(OtherSize.cardBorderRadius),
        ),
        tileColor: ColorManager.tileForeColor,
        textColor: ColorManager.tileBackColor,
        title: CustomText(
          text: animal[index],
        ),
        trailing: CustomText(
          text: animalCount[index].toString(),
        ),
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  animal.add(animal[Random().nextInt(animal.length)]);
                  animalCount.add(Random().nextInt(100));
                });
              },
              icon: const Icon(Icons.add)),
        ],
        title: const CustomText(
          text: AppString.appName,
        ));
  }
}
