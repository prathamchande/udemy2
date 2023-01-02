import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(this.addTx);
  void submitData(String val) {
    final enterTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enterTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    addTx(
      // titleController.text,
      // double.parse(amountController.text),
      enterTitle,
      enteredAmount,
    );
  }

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
              onSubmitted: (_) => submitData,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              //   keyboardType: TextInputType.numberWithOptions(decimal: true), //for ios
              keyboardType: TextInputType.number,
              // onSubmitted: submitData,
              onSubmitted: (_) => submitData,

              // onChanged: (val) {
              //   amountInput = val;
              // },
            ),
            ElevatedButton(
              child: Text('Add Transaction'),

              // onPressed: () => submitData('ss'),
              onPressed: () {
                submitData('e');
                // print(titleInput);
                // print(amountInput);
                // print(titleController.text);
                // print(amountController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
