import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (val) {
              //   amountInput = val;
              // },
            ),
            ElevatedButton(
              child: Text('Add Transaction'),
              onPressed: () {
                // print(titleInput);
                // print(amountInput);
                // print(titleController.text);
                // print(amountController.text);
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
