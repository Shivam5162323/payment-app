import 'package:flutter/material.dart';
import '../model/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;

  TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            color: Colors.black,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.orange,
                        width: 3,

                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    '₹ ${transaction[index].amount.toStringAsFixed(2)}',  //2 dec places
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction[index].title,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      DateFormat.MEd().add_jm().format(transaction[index].date),
                      style: TextStyle(fontSize: 16, color: Colors.grey[400]!),
                    )
                  ],
                )
              ],
            ),
          );
        },
        itemCount: transaction.length,

      ),
    );
  }
}
