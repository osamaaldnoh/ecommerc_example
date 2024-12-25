import 'package:ecommerc_example/const/constcolor.dart';
import 'package:ecommerc_example/const/icons_const.dart';
import 'package:ecommerc_example/widgets/types_widget.dart';
import 'package:flutter/material.dart';

import '../controllers/types.dart';

class TypeAddminScreen extends StatelessWidget {
  static const routeName = 'TypeAddminScreen';
  TypeAddminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Types typesdata = Types();

    return Scaffold(
      backgroundColor: Color(0xFFCEDDEE),
      appBar: AppBar(
        title: Text('Add New',style: TextStyle(
          color: ConstColors.backgroundColor
        )),
        centerTitle: true,
        backgroundColor: ConstColors.buttonColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: GridView.builder(
          itemCount: typesdata.icondata.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 350,
          ),
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TypesWidget(
                icons: typesdata.icondata[index],
                nameTypes: typesdata.name[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
