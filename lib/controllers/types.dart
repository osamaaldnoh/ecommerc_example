import 'package:flutter/cupertino.dart';

import '../const/icons_const.dart';

class Types with ChangeNotifier
{
  List icondata =[
    IconsConst.category,
    IconsConst.product,
    IconsConst.request,
    IconsConst.client,
  ];

  List name =
  [
    'Category',
    'Product',
    'Request',
    'Client',
  ];
}