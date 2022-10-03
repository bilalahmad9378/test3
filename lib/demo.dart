import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';

class demo extends StatelessWidget {
  // var imagesList = [
  //   "https://i.pinimg.com/originals/cc/18/...",
  //   "https://cdn.pixabay.com/photo/2015/04...",
  //   "https://encrypted-tbn0.gstatic.com/im...",
  //   "https://cdn.pixabay.com/photo/2013/07...",
  //   "https://thumbs.dreamstime.com/b/pictu...",
  //   "https://images.pexels.com/photos/2063...",
  //   "https://i.pinimg.com/originals/4c/52/...",
  //   "https://coolhdwall.com/storage1/20210..."
  // ];
  TextEditingController name = TextEditingController();

  // String result = '';
  adddata(result) async {
    await FirebaseFirestore.instance.collection('Student').add({
      'name': result,
    });
  }

  void check() {
    print("Working...");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    var myProducts;
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Firebase'),
            ),
            body: Container(
              child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  //  itemCount: imagesList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          // child: FadeInImage.memoryNetwork(
                          //   placeholder: kTransparentImage,
                          //   image: imagesList[index],
                          //   fit: BoxFit.fill,
                          // ),
                        ),
                      ),
                    );
                  },
                  staggeredTileBuilder: (index) {
                    return StaggeredTile.count(1, index.isEven ? 1.2 : 1);
                  }),
            )));
  }
}
