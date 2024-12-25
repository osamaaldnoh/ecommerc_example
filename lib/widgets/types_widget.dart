import 'package:ecommerc_example/const/constcolor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/types.dart';
import '../screen/add_category.dart';

class TypesWidget extends StatelessWidget {
   TypesWidget({required this.icons,required this.nameTypes,Key? key}) : super(key: key);

  IconData icons;
  final String nameTypes;
  @override
  Widget build(BuildContext context)
  {
    final typeData = Provider.of<Types>(context);
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () => Navigator.pushNamed(context, AddCategory.routeName,
      arguments: nameTypes,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15),

        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            CircleAvatar(
              backgroundColor: ConstColors.textTitleColor,
              radius: 50,
              child: Icon(icons,size: 45,),
            ),
            SizedBox(height: 25,),
            Flexible(
              child: Text(nameTypes,style: TextStyle(
                color: ConstColors.textTitleColor,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontStyle: FontStyle.italic
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
