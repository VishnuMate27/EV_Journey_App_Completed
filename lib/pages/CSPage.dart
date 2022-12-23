import 'package:firebase_crud/widgets/bottom_navigation.dart';
import 'package:firebase_crud/widgets/journeydetails.dart';
import 'package:firebase_crud/widgets/journeydetails2.dart';
import 'package:firebase_crud/widgets/slidebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_crud/pages/plan_your_journey.dart';
import 'package:firebase_crud/pages/ChargingSScreen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CSPage extends StatefulWidget {
  const CSPage({Key? key}) : super(key: key);

  @override
  State<CSPage> createState() => _CSPageState();
}

class _CSPageState extends State<CSPage> {
  final CollectionReference _products =
      FirebaseFirestore.instance.collection('products');
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  int? count = 0;
  double? dprice = 600;

  create([DocumentSnapshot? documentSnapshot]) {
    (BuildContext ctx) {
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              controller: _priceController,
              decoration: const InputDecoration(
                labelText: 'Price',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Create'),
              onPressed: () async {
                // int? count = 0;
                final String name = "EV_Owner_" + count.toString();
                final double? price = dprice;
                double.tryParse(_priceController.text);
                if (price != null) {
                  await _products.add({"name": name, "price": price});
                  _nameController.text = '';
                  _priceController.text = '';
                  Navigator.of(context).pop();
                }
                ;
                setState(() {
                  if (count != null) count = count! + 1;
                });
              },
            )
          ],
        ),
      );
    };
  }

  Future<void> update([DocumentSnapshot? documentSnapshot]) async {
    if (documentSnapshot != null) {
      _nameController.text = documentSnapshot['name'];
      _priceController.text = documentSnapshot['price'].toString();
    }

    (BuildContext ctx) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              controller: _priceController,
              decoration: const InputDecoration(
                labelText: 'Price',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Update'),
              onPressed: () async {
                final String name = _nameController.text;
                final double? price = double.tryParse(_priceController.text);
                if (price != null) {
                  await _products
                      .doc(documentSnapshot!.id)
                      .update({"name": name, "price": price});
                  _nameController.text = '';
                  _priceController.text = '';
                  Navigator.of(context).pop();
                }
              },
            )
          ],
        ),
      );
    };
  }

  Future<void> delete(String productId) async {
    await _products.doc(productId).delete();

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('You have successfully deleted a product')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Hotel/Charging Station"),
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       SizedBox(
      //         height: 20,
      //       ),
      //       Center(
      //         child: Card(
      //           child: Container(
      //             height: 200,
      //             width: 340,
      //             decoration: BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage("assets/images/Advertisement.png"),
      //                   fit: BoxFit.cover),
      //               borderRadius: BorderRadius.circular(7),
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 15,
      //       ),
      //       Row(
      //         children: [
      //           SizedBox(
      //             width: 22,
      //           ),
      //           Text(
      //             'Upcoming Bookings',
      //             style: TextStyle(
      //               fontSize: 21,
      //               fontWeight: FontWeight.w700,
      //               height: 1.6625,
      //               color: Color(0xff17ADB3),
      //             ),
      //           ),
      //         ],
      //       ),
      //       SizedBox(height: 15),
      //
      //     ],
      //   ),
      // ),
      // body: StreamBuilder(
      //   stream: _products.snapshots(),
      //   builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
      //     if (streamSnapshot.hasData) {
      //       return ListView.builder(
      //         itemCount: streamSnapshot.data!.docs.length,
      //         itemBuilder: (context, index) {
      //           final DocumentSnapshot documentSnapshot =
      //               streamSnapshot.data!.docs[index];
      //           return Container(
      //             width: double.infinity,
      //             height: 78,
      //             decoration: BoxDecoration(
      //               color: Color(0xff17adb3),
      //               borderRadius: BorderRadius.circular(9),
      //             ),
      //             child: Card(
      //               color: Color(0xff17adb3),
      //               child: ListTile(
      //                 title: Text(
      //                   documentSnapshot['name'],
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 20,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //                 subtitle: Text(
      //                   "Tata Nexon",
      //                   style:
      //                       TextStyle(color: Color(0x7fffffff), fontSize: 16),
      //                 ),
      //                 trailing: Column(
      //                   children: [
      //                     SizedBox(
      //                       height: 25,
      //                     ),
      //                     Text(
      //                       "Reserved *CCS2",
      //                       style: TextStyle(
      //                           color: Color(0x7fffffff), fontSize: 16),
      //                     )
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           );
      //         },
      //       );
      //     }
      //
      //     return const Center(
      //       child: CircularProgressIndicator(),
      //     );
      //   },
      // ),
      body: StreamBuilder(
        stream: _products.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return ListView.builder(
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot =
                    streamSnapshot.data!.docs[index];
                return Container(
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(documentSnapshot['name']),
                      subtitle: Text(documentSnapshot['price'].toString()),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () => update(documentSnapshot)),
                            IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () => delete(documentSnapshot.id)),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
// Container(
// child: Card(
// margin: const EdgeInsets.all(10),
// child: ListTile(
// title: Text(documentSnapshot['name']),
// subtitle: Text(documentSnapshot['price'].toString()),
// trailing: SizedBox(
// width: 100,
// child: Row(
// children: [
// IconButton(
// icon: const Icon(Icons.edit),
// onPressed: () => update(documentSnapshot)),
// IconButton(
// icon: const Icon(Icons.delete),
// onPressed: () => delete(documentSnapshot.id)),
// ],
// ),
// ),
// ),
// ),
// );
