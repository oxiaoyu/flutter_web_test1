import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  UserPage({Key key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlexibleSpaceBarDemo(),
    );
  }
}

class FlexibleSpaceBarDemo extends StatelessWidget {
  const FlexibleSpaceBarDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: [_buildSliverAppBar(), _buildSliverFixedExtentList()],
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 200,
      pinned: true,
      backgroundColor: Colors.blue,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text('O小雨'),
        collapseMode: CollapseMode.parallax,
        // titlePadding: EdgeInsets.only(top: 0),
        background: Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602427515569&di=d023f405e69b745eec2539d694477507&imgtype=0&src=http%3A%2F%2F13511.net%2Fd%2Ffile%2Fbigpic%2Fwz%2F191206%2F491497887.jpg',
            fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildSliverFixedExtentList() => SliverFixedExtentList(
        itemExtent: 60,
        delegate: SliverChildBuilderDelegate((_, int index) => Container(
              alignment: Alignment.center,
              child: Text('${index + 1}'),
            )),
      );
}
