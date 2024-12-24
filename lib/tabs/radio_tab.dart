import 'package:flutter/material.dart';
import 'package:islami_app/widgets/radio_container.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.transparent,
            dividerColor: Colors.transparent,
            controller: tabController,
            tabs: [_buildTab("Radio", 0), _buildTab("Reciters", 1)]),
        Expanded(
          child: TabBarView(controller: tabController, children: [
            ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return RadioContainer();
                }),
            ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return RadioContainer();
                }),
          ]),
        )
      ],
    );
  }

  Widget _buildTab(String title, int tabIndex) {
    final bool isSelected = tabController.index == tabIndex;
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isSelected
            ? const Color(0xffE2BE7F)
            : Color.fromRGBO(32, 32, 32, 0.7),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(title),
    );
  }
}
