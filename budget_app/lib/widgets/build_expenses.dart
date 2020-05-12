import 'package:flutter/material.dart';
import 'package:budget_app/models/expense_model.dart';

class BuildExpenses extends StatelessWidget {

  final List<Expense> expensesList;

  BuildExpenses({this.expensesList});

  List<Widget> buildList  = [];



  @override
  Widget build(BuildContext context) {

    expensesList.forEach((Expense expense){
       buildList.add(Container(
          alignment: Alignment.center,
         margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
         height: 80.0,
         width: double.infinity,
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(10.0),
           boxShadow: [
             BoxShadow(
               color: Colors.black12,
               offset: Offset(0,2),
               blurRadius: 6.0
             )
           ]
         ),
         child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Text(expense.name,
             style: TextStyle(
               color: Colors.red,
               fontWeight: FontWeight.w600,
               fontSize: 20.0
             ),
             ),
             Text('-\$${expense.cost.toStringAsFixed(2)}',
             style: TextStyle(
               color: Colors.red,
               fontWeight: FontWeight.w600,
               fontSize: 20.0
             ),
             ),
           ],
         ),
       ));
    });

    return Column(
      children: buildList,
    );
  }
}
