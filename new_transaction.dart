import 'package:flutter/material.dart';

class Newtransaction extends StatelessWidget {
  final Function addTx ;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  Newtransaction(this.addTx);

  void submitData(){
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);


    if(enteredTitle.isEmpty || enteredAmount <=0){
      return;
    }
    addTx(
        enteredTitle,
      enteredAmount,
    );

  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (value) {
              //   titleInput = value;
              // },
              controller: titleController,
              onSubmitted: (_)=>submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (value) => amountInput = value,
              keyboardType: TextInputType.number,
              onSubmitted: (_)=>submitData(),
              controller: amountController,
            ),
            TextButton(
              child: Text('Add Transaction'),
              style: ButtonStyle(
                foregroundColor:
                MaterialStateProperty.all<Color>(Colors.red),

              ),
              onPressed: submitData,
            )
          ],
        ),
      ),
      elevation: 5,
    );
  }
}