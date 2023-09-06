import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {

  var _enteredTitle = '';

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  // void _saveTitleInput(String inputValue){
  //   _enteredTitle = inputValue;
  // }


  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            maxLength: 50,
            controller: _titleController,
            // onChanged: _saveTitleInput,
            decoration: const InputDecoration(
              label: Text("Title")
            ),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixText: '\$ ',
                label: Text("Amount")
            ),
          ),
          Row(
            children: [
              TextButton(onPressed: (){}, child: Text("Cancel"),),
              ElevatedButton(onPressed: (){
                print(_titleController.text);
                print(_amountController.text);
              }, child: Text("Save Expense"), )
            ],
          )
        ],
      ),
    );
  }
}
