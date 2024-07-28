import 'package:flutter/material.dart';

class RemoveView extends StatefulWidget {
  final List<Map<String, dynamic>> restoList;
  final List<Map<String, dynamic>> menuList;

  RemoveView({required this.restoList, required this.menuList});

  @override
  _RemoveViewState createState() => _RemoveViewState();
}

class _RemoveViewState extends State<RemoveView> {
  void _deleteResto(int index) {
    setState(() {
      widget.restoList.removeAt(index);
    });
  }

  void _deleteMenu(int index) {
    setState(() {
      widget.menuList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Remove",           style: TextStyle(
            fontFamily: "Inter",
            fontSize: 22,
            fontWeight: FontWeight.w800,
            color: Colors.black,
            
          ),),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: "Resto"),
                Tab(text: "Menu"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Tab Resto
                  widget.restoList.isEmpty
                      ? Center(child: Text("Tidak ada resto yang tersedia."))
                      : ListView.builder(
                          itemCount: widget.restoList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(widget.restoList[index]['name']),
                              subtitle: Text(widget.restoList[index]['description']),
                              trailing: IconButton(
                                icon: Icon(Icons.delete, color: Colors.red),
                                onPressed: () => _deleteResto(index),
                              ),
                            );
                          },
                        ),
                  // Tab Menu
                  widget.menuList.isEmpty
                      ? Center(child: Text("Tidak ada menu yang tersedia."))
                      : ListView.builder(
                          itemCount: widget.menuList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(widget.menuList[index]['name']),
                              subtitle: Text(widget.menuList[index]['description']),
                              trailing: IconButton(
                                icon: Icon(Icons.delete, color: Colors.red),
                                onPressed: () => _deleteMenu(index),
                              ),
                            );
                          },
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}