import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:pln_test/infrastructures/base_view.dart';
import 'package:pln_test/infrastructures/misc/dummy.dart';
import 'package:pln_test/infrastructures/misc/extension.dart';
import 'package:pln_test/theme.dart';
import 'package:pln_test/ui/pages/todo/controller.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseViewBuilder(
      controller: TodoController(),
      builder: (context, controller) {
        return Scaffold(
          body: Center(
            child: Container(
              width: 350,
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios_new),
                          ),
                        ),
                      ),
                      Text(
                        "Task",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(child: Container())
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownMenu(
                    width: 350,
                    dropdownMenuEntries:
                        UnmodifiableListView<DropdownMenuEntry<String>>(
                      listPriority.map<DropdownMenuEntry<String>>(
                          (String name) => DropdownMenuEntry<String>(
                              value: name, label: name.toCapitalFirst())),
                    ),
                    hintText: 'Task Type',
                    inputDecorationTheme: InputDecorationTheme(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.all(16),
                      hintStyle: const TextStyle(fontSize: 14),
                    ),
                    initialSelection: controller.selectedType,
                    onSelected: (value) {
                      controller.setType(value);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: controller.titleController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(16),
                      hintText: 'Enter Title',
                      hintStyle: const TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black,
                              strokeAlign: BorderSide.strokeAlignInside)),
                    ),
                    minLines: 4,
                    maxLines: 6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      controller.setTime();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black54)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            controller.timePicked != null
                                ? controller.timePicked ?? ''
                                : 'Pick Date',
                            style: TextStyle(fontSize: 14),
                          ),
                          Icon(
                            Icons.access_time_filled,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.addTodo();
                    },
                    child: Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: PLNTheme.lightScheme().tertiary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Add Task",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
