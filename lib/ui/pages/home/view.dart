import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pln_test/domain/entities/todo.dart';
import 'package:pln_test/infrastructures/base_view.dart';
import 'package:pln_test/infrastructures/misc/dummy.dart';
import 'package:pln_test/infrastructures/misc/extension.dart';
import 'package:pln_test/infrastructures/misc/pages.dart';
import 'package:pln_test/infrastructures/misc/utils.dart';
import 'package:pln_test/theme.dart';
import 'package:pln_test/ui/pages/home/controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseViewBuilder(
      controller: HomeController(),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: PLNTheme.lightScheme().tertiary,
                        radius: 30,
                        child: Text(
                          (controller.user?.name ?? '. .')
                              .getInitials()
                              .toUpperCase(),
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello!",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            (controller.user?.name ?? '..').toCapitalize(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: PLNTheme.lightScheme().tertiary,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Your today's task\nalmost done!",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: CircularPercentIndicator(
                              radius: 40.0,
                              lineWidth: 10.0,
                              percent: (controller.todoUncheck.length /
                                      controller.todos.length *
                                      100) /
                                  100,
                              center: Text(
                                "${controller.todos.isNotEmpty ? (controller.todoUncheck.length / controller.todos.length * 100).truncate() : 0}%",
                                style: TextStyle(
                                    color: PLNTheme.lightScheme().surface,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              progressColor: PLNTheme.lightScheme().surface,
                              curve: Curves.bounceIn,
                              circularStrokeCap: CircularStrokeCap.round,
                              animation: true,
                              reverse: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _type(controller, 'all'),
                        for (var item in listPriority.reversed) ...[
                          SizedBox(
                            width: 10,
                          ),
                          _type(controller, item),
                        ]
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: controller.loadingTodos
                        ? Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 4,
                              color: PLNTheme.lightScheme().tertiary,
                            ),
                          )
                        : controller.todosView.isEmpty
                            ? Center(
                                child: Text('Tidak Ada Data'),
                              )
                            : SingleChildScrollView(
                                controller: controller.scrollController,
                                child: ListView.builder(
                                  itemCount: controller.todosView.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return _todo(controller,
                                        controller.todosView[index]);
                                  },
                                ),
                              ),
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, Pages.addTodo);
            },
            child: Icon(Icons.add_task),
          ),
        );
      },
    );
  }

  Widget _type(HomeController controller, String value) {
    return GestureDetector(
      onTap: () {
        controller.setFilter(value);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
            color: controller.filter == value
                ? PLNTheme.lightScheme().tertiary
                : PLNTheme.lightScheme().outlineVariant,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          '${value.toCapitalize()}${controller.filter == value ? ' (${controller.todosView.length})' : ''}',
          style: TextStyle(
            color: PLNTheme.lightScheme().surface,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _todo(HomeController controller, Todo data) {
    Color color = data.type == 'low'
        ? Colors.blue
        : data.type == 'medium'
            ? Colors.orange
            : data.type == 'high'
                ? Colors.redAccent
                : Colors.red;
    Color bgColor = data.type == 'low'
        ? Colors.lightBlue
        : data.type == 'medium'
            ? Colors.yellow
            : data.type == 'high'
                ? Colors.orange
                : Colors.redAccent;
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: PLNTheme.lightScheme().primaryContainer.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title.toCapitalFirst(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: PLNTheme.lightScheme().tertiary,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: bgColor.withValues(alpha: 0.2),
                    ),
                    child: Text(
                      data.type.toCapitalize(),
                      style: TextStyle(
                        fontSize: 10,
                        color: color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled,
                        size: 16,
                        color: PLNTheme.lightScheme().tertiary,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        Utils.getRandomTime(),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: PLNTheme.lightScheme().tertiary,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    controller.deleteTodo(data.id);
                  },
                  icon: Icon(
                    Icons.delete,
                    size: 24,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () {
                    controller.checkTodo(data);
                  },
                  icon: Icon(
                    data.completed
                        ? Icons.check_box
                        : Icons.indeterminate_check_box,
                    size: 24,
                    color: data.completed
                        ? PLNTheme.lightScheme().tertiary
                        : PLNTheme.lightScheme().outlineVariant,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
