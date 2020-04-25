import 'package:flutter/material.dart';


class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff757575),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular (40.0))
        ),
        child: Center(
          child: Text(
              'I am brave, i am bruised.'
          ),
        ),
      ),
    );
  }
}