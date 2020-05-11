import 'package:flutter/material.dart';
import 'package:budget_app/models/category_model.dart';

class BuildCategory extends StatelessWidget {


  BuildCategory({this.category,this.totalAmountSpent});
  final Category category;
  final double totalAmountSpent;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
      height: 100.0,
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
      child: Column(
               children: <Widget>[
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Text(category.name, style: TextStyle(
                       fontSize: 20.0,
                       fontWeight: FontWeight.w600,
                     ),
                     ),
                     Text('\$${(category.maxAmount - totalAmountSpent).toStringAsFixed(2)} / \$${category.maxAmount}',
                     style: TextStyle(
                       fontSize: 18.0,
                       fontWeight: FontWeight.w600,
                     ),)
                   ],
                 ),
                 SizedBox(height: 10.0),
                 LayoutBuilder(
                   builder: (BuildContext context, BoxConstraints constraints) {
                     final double maxBarWidth = constraints.maxWidth;
                     final double percent = (category.maxAmount - totalAmountSpent) / category.maxAmount;
                     double barWidth = percent * maxBarWidth;

                     if(barWidth < 0){
                       barWidth = 0;
                     }

                     return Stack(
                       children: <Widget>[
                         Container(
                           height: 20.0,
                           decoration: BoxDecoration(
                             color: Colors.grey[200],
                             borderRadius: BorderRadius.circular(15.0)  ,
                           ),
                         ),
                         Container(
                           height: 20.0,
                           width: barWidth,
                           decoration: BoxDecoration(
                             color: getColor(context, percent),
                             borderRadius: BorderRadius.circular(15.0)  ,
                           ),
                         )
                       ],
                     );
                   },
                 )

               ],
      ),
    );
  }
}
