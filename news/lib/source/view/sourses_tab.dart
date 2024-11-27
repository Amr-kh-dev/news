import 'package:flutter/material.dart';

import 'package:news/source/data/model/source.dart';
import 'package:news/news/view/widgets/news_list.dart';
import 'package:news/source/view/tab_item.dart';

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
                if (index == selectedsource) return;
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
