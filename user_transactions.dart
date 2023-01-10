import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../model/transaction.dart';

class UserTransactions extends StatefulWidget{
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransactions>{


  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Shoes',
      amount: 699.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Grocery',
      amount: 250.50,
      date: DateTime.now(),
    ),
  ];


  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());


    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context){
    return  Column(
      children: [
        Newtransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}