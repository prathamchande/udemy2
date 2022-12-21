import 'package:flutter/material.dart';
import 'package:udemy2/widgets/user_transaction.dart';
import 'models/transaction.dart';
import 'package:intl/intl.dart';
import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // final List<Transaction> transactions = [
  //   // Transaction(
  //   //   id: 't1',
  //   //   title: 'new shoe',
  //   //   amount: 60,
  //   //   date: DateTime.now(),
  //   // ),
  //   // Transaction(
  //   //   id: 't2',
  //   //   title: 'wekkly cloth',
  //   //   amount: 50,
  //   //   date: DateTime.now(),
  //   // ),
  // ];

  // late String titleInput;
  // late String amountInput;

  // final titleController = TextEditingController();
  // final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //crossAxisAlignment: CrossAxisAlignment.baseline,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.blue,
              // ),
              elevation: 5,
              // child: Container(
              //   //width: 100,
              //   width: double.infinity,
              child: Text('chart'),
            ),
          ),

          UserTransactions(),
          // Card(
          //   elevation: 20,
          //   child: Container(
          //     padding: EdgeInsets.all(10),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.end,
          //       children: [
          //         TextField(
          //           decoration: InputDecoration(labelText: 'Title'),
          //           controller: titleController,
          //           // onChanged: (val) {
          //           //   titleInput = val;
          //           // },
          //         ),
          //         TextField(
          //           decoration: InputDecoration(labelText: 'Amount'),
          //           controller: amountController,
          //           // onChanged: (val) {
          //           //   amountInput = val;
          //           // },
          //         ),
          //         ElevatedButton(
          //           child: Text('Add Transaction'),
          //           onPressed: () {
          //             // print(titleInput);
          //             // print(amountInput);
          //             print(titleController.text);
          //             print(amountController.text);
          //           },
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          //widget here
          // NewTransaction(),

          // const Card(
          //   color: Colors.red,
          //   // ),
          //   elevation: 5,
          //   // child: Container(
          //   //   //width: 100,
          //   //   width: double.infinity,
          //   child: Text('chart'),
          // ),
          // const Card(
          //   child: Text('chart2'),
          // ),
          // Column(children: <Widget>[
          //   Card(),
          //   Card(),
          // ],

          // Column(
          //   children: transactions.map((tx) {
          //     return Card(
          //       child: Row(
          //         children: <Widget>[
          //           Container(
          //             margin: EdgeInsets.symmetric(
          //               vertical: 10,
          //               horizontal: 15,
          //             ),
          //             padding: EdgeInsets.all(10),
          //             decoration: BoxDecoration(
          //                 border: Border.all(
          //               color: Colors.purple,
          //               width: 2,
          //             )),
          //             //amount
          //             child: Text(
          //               // 'A:' + tx.amount.toString(),
          //               //'${tx.amount}',
          //               '\$${tx.amount}',
          //               style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 20,
          //                 color: Colors.purple,
          //               ),
          //             ),
          //           ),
          //           Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: <Widget>[
          //               Text(
          //                 tx.title,
          //                 style: TextStyle(
          //                   fontWeight: FontWeight.bold,
          //                   fontSize: 16,
          //                   color: Colors.black,
          //                 ),
          //               ),
          //               Text(
          //                 // DateFormat('dd-MM-yyyy').format(tx.date),
          //                 DateFormat.yMMMEd().format(tx.date),
          //                 style: TextStyle(
          //                   fontWeight: FontWeight.bold,
          //                   fontSize: 14,
          //                   color: Colors.grey,
          //                 ),
          //               ),
          //             ],
          //           )
          //         ],
          //       ),
          //     );
          //   }).toList(),
          // ),

          //widget here
          // TransactionList(),
        ],
      ),
    );
  }
}
