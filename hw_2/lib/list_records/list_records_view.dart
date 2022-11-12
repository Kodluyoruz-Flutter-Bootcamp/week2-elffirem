import 'package:bootcamp_hw_2/add_record/add_record_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListRecordsView extends StatefulWidget {
  const ListRecordsView({super.key});

  @override
  State<ListRecordsView> createState() => _ListRecordsViewState();
}

class _ListRecordsViewState extends State<ListRecordsView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: AddRecordViewmodel.instance.recordList.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(
            AddRecordViewmodel.instance.recordList[index],
            style: const TextStyle(color: Colors.red, fontSize: 24),
          ));
        },
      ),
    );
  }
}
