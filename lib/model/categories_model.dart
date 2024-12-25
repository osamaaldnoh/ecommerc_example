import 'package:flutter/cupertino.dart';

class Categories
{
  late int cid;
  late String ctitle;
  // late String cDescriptions;
  // late String cimage;
  // late String cStatus;

  Categories({required this.cid,required this.ctitle});

}
class ControlsCategories with ChangeNotifier
{
  List<Categories> _categoriesList =[
    Categories(cid: 1, ctitle: 'Main'),
    Categories(cid: 2, ctitle: 'Osama'),

  ];

  List<Categories> get categoriesList
  {
    return [..._categoriesList];

  }

  void addCategories(String title)
  {
      _categoriesList
          .add(Categories(cid: _categoriesList.length, ctitle: title,));
      notifyListeners();

  }

}