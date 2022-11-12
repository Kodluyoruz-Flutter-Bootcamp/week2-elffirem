import 'package:bootcamp_hw_2/add_record/add_record_model.dart';
import 'package:bootcamp_hw_2/add_record/add_record_viewmodel.dart';
import 'package:bootcamp_hw_2/list_records/list_records_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddRecordView extends StatefulWidget {
  const AddRecordView({super.key});

  @override
  State<AddRecordView> createState() => _AddRecordViewState();
}

class _AddRecordViewState extends State<AddRecordView> {
  final getxcnt = Get.put(AddRecordViewmodel());
  TextEditingController controller = TextEditingController();
  AddRecordModel model = AddRecordModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: model.hint,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: model.borderWidth ?? 3,
                      color: model.color ?? Colors.greenAccent),
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () => AddRecordViewmodel.instance.onPressed(
                  context: context,
                  name: controller.text.trim(),
                  controller: controller),
              child: const Text("Save")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListRecordsView(),
                    ));
              },
              child: const Text("Go to display list"))
        ],
      ),
    );
  }
}
