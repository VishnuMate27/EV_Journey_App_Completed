import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class ChargingSScreen extends StatefulWidget {
  const ChargingSScreen({Key? key}) : super(key: key);

  @override
  ChargingSScreenState createState() => ChargingSScreenState();
}

class ChargingSScreenState extends State<ChargingSScreen> {
// text fields' controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  int? count = 0;
  double? dprice = 600;
  final CollectionReference _products =
      FirebaseFirestore.instance.collection('products');
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
        backgroundColor: Colors.cyan,
        title: Center(
          child: Text('Hotel & Charging Station'),
        ),
      ),
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
