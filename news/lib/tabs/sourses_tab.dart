import 'package:flutter/material.dart';

import 'package:news/models/suroces_respons/source.dart';
import 'package:news/newes/news_list.dart';
import 'package:news/tabs/tab_item.dart';

class SourcesTab extends StatefulWidget {
  SourcesTab(
    this.sources, {
    super.key,
  });
  List<Source> sources;

  @override
  State<SourcesTab> createState() => _SourcesTabState();
}

class _SourcesTabState extends State<SourcesTab> {
  int selectedsource = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: widget.sources.length,
          child: TabBar(
              onTap: (index) {
                selectedsource = index;
                setState(() {});
              },
              isScrollable: true,
              dividerColor: Colors.transparent,
              indicatorColor: Colors.transparent,
              tabAlignment: TabAlignment.start,
              tabs: widget.sources
                  .map(
                    (Source) => TabItem(
                      SourceName: Source.name ?? ' ',
                      isSelected:
                          widget.sources.indexOf(Source) == selectedsource,
                    ),
                  )
                  .toList()),
        ),
        Expanded(child: NewsList(widget.sources[selectedsource].id!)),
      ],
    );
  }
}
