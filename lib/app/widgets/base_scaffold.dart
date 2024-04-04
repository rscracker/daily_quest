import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin BaseScaffold {
  PreferredSizeWidget? appBar(BuildContext context);

  Widget body(BuildContext context);

  Widget? floatingActionButton(BuildContext context) {
    return null;
  }

  bool extendBody() {
    return false;
  }

  Widget? bottomSheet() {
    return null;
  }

  Widget? bottomNavigationBar() {
    return null;
  }

  Widget? drawer() {
    return null;
  }

  Widget baseScaffold(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      floatingActionButton: floatingActionButton(context),
      body: pageContent(context),
      bottomSheet: bottomSheet(),
      bottomNavigationBar: bottomNavigationBar(),
      drawer: drawer(),
      extendBody: extendBody(),
    );
  }

  Widget pageContent(BuildContext context) {
    return SafeArea(
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'NotoSansKR',
        ),
        child: body(context),
      ),
    );
  }
}
