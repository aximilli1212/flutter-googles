import 'package:budget_app/models/category_model.dart';
import 'package:budget_app/models/expense_model.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/data/data.dart';
import 'package:budget_app/widgets/bar_chart.dart';
import 'package:budget_app/widgets/build_category.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
//    return MaterialApp(
      return Scaffold(
        backgroundColor: Colors.white,
          body: CustomScrollView(
          slivers: <Widget>[
             SliverAppBar(
               forceElevated: true,
               floating: true,
               expandedHeight: 100.0,
               leading: IconButton(
                 icon: Icon(Icons.settings),
                 iconSize: 30.0,
                 onPressed: (){},
               ),
               flexibleSpace: FlexibleSpaceBar(
                 centerTitle: true,
                 title: Text('Simple Budget'),
               ),
               actions: <Widget>[
                 IconButton(
                   icon: Icon(Icons.add),
                   iconSize: 30.0,
                   onPressed: (){},
                 )
               ],
             ),
            SliverList(
              delegate: SliverChildBuilderDelegate((BuildContext context, int index){
                if(index == 0){
                  return FullBarView();
                }else{
                  final Category category = categories[index - 1];
                  double totalAmountSpent = 0;
                  category.expenses.forEach((Expense expense){
                    totalAmountSpent +=expense.cost;
                  });

                  return BuildCategory(category: category, totalAmountSpent: totalAmountSpent);
                }
              }, childCount: 1 + categories.length),

            )
          ],
      ),
    );
  }
}

class FullBarView extends StatelessWidget {
  const FullBarView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0,2),
            blurRadius: 6.0
          )
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: BarChart(spending: weeklySpending),
    );
  }
}
