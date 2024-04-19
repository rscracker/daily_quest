import 'dart:io';

import 'package:daily_quest/app/data/todo/model/todo_model.dart';
import 'package:daily_quest/app/modules/home/view_model/home_view_model.dart';
import 'package:daily_quest/app/modules/main/views/custom_check_box.dart';
import 'package:daily_quest/app/utils/utils.dart';
import 'package:daily_quest/app/widgets/base_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends BaseView<HomeViewModel> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Center(child: Icon(Icons.edit)),
    );
  }

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(children: [
          _myInfo(),
          _summary(),
          _Todos(
              todos: List.generate(
                  6,
                  (index) => TodoModel(
                      docId: '1',
                      todoName: 'Test',
                      createdAt: DateTime.now(),
                      scheduledDate: DateTime.now(),
                      taskDuration: 0))),
        ]),
      ),
    );
  }

  Widget _myInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          controller.nickname,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          'Rank 2',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget _summary() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.lightBlue.shade100,
      ),
      height: 200,
      width: double.infinity,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '할 일 요약',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _SummaryItem(category: '이번 달', complete: 30, total: 100),
            _SummaryItem(category: '이번 주', complete: 30, total: 100),
            _SummaryItem(category: '오늘', complete: 30, total: 100),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '포인트',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '2,000DQ',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  final String category;
  final int complete;
  final int total;

  const _SummaryItem(
      {required this.category,
      required this.complete,
      required this.total,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            category,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '${complete.toString()}/${total.toString()} (${(complete / total * 100).toInt().toString()}%)',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _Todos extends StatelessWidget {
  final List<TodoModel> todos;
  const _Todos({required this.todos, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: todos.map((e) => _todoItem(e)).toList(),
    );
  }

  Widget _todoItem(TodoModel todo) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.blue.shade200),
      height: 65,
      width: double.infinity,
      child: Row(
        children: [
          CustomCheckBox(isChecked: true),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                todo.todoName,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                todo.getFormattedDate(),
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ],
          )
        ],
      ),
    );
  }
}
