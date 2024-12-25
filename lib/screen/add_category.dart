import 'package:ecommerc_example/const/constcolor.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCategory extends StatelessWidget {
  static const routeName = 'AddCategory';
  const AddCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {

    final nameofNew = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: ConstColors.backgroundColor,
      appBar: AppBar(
          title: Text(
            'New $nameofNew',
            style: TextStyle(
              color: ConstColors.backgroundColor,
            ),
          ),
          backgroundColor: ConstColors.textTitleColor),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: 30,
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                'Add New $nameofNew',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: ConstColors.textTitleColor,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              DropdownButton<String>(
                hint: Text('data'),

                items: [
                  DropdownMenuItem(
                    child: Text('Osama'),
                    value: 'Osama',
                  ),
                  DropdownMenuItem(
                    child: Text('Osama'),
                    value: 'Osama',
                  ),
                ],
                onChanged: (_)
                {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
