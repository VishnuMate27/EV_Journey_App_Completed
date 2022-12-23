import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IncrementScreen extends StatefulWidget {
  const IncrementScreen({Key? key}) : super(key: key);

  @override
  State<IncrementScreen> createState() => IncrementScreenState();
}

class IncrementScreenState extends State<IncrementScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  int? count = 0;
  double? dprice = 600;
  final CollectionReference _products =
      FirebaseFirestore.instance.collection('products');

  create([DocumentSnapshot? documentSnapshot]) async {
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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Increment Screen"),
      ),
      body: Column(
        children: <Widget>[
          const Text(
            'Pay with Razorpay',
          ),
          ElevatedButton(
            onPressed: () {
              Razorpay razorpay = Razorpay();
              var options = {
                'key': 'rzp_test_LcrLU6NNpAyhJK',
                'amount': 549,
                'name': 'Plan your EV Journey',
                'description': 'Booking Payment',
                'retry': {'enabled': true, 'max_count': 1},
                'send_sms_hash': true,
                'prefill': {
                  'contact': '8888888888',
                  'email': 'test@razorpay.com'
                },
                'external': {
                  'wallets': ['paytm']
                }
              };
              razorpay.on(
                  Razorpay.EVENT_PAYMENT_ERROR, handlePaymentErrorResponse);
              razorpay.on(
                  Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccessResponse);
              razorpay.on(
                  Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWalletSelected);
              razorpay.open(options);
            },
            child: const Text("Pay with Razorpay"),
          ),
        ],
      ),
    );
  }

  void handlePaymentErrorResponse(PaymentFailureResponse response) {
    /*
    * PaymentFailureResponse contains three values:
    * 1. Error Code
    * 2. Error Description
    * 3. Metadata
    * */
    showAlertDialog(context, "Payment Failed",
        "Code: ${response.code}\nDescription: ${response.message}\nMetadata:${response.error.toString()}");
  }

  void handlePaymentSuccessResponse(PaymentSuccessResponse response) {
    /*
    * Payment Success Response contains three values:
    * 1. Order ID
    * 2. Payment ID
    * 3. Signature
    * */
    showAlertDialog(
        context, "Payment Successful", "Payment ID: ${response.paymentId}");
  }

  void handleExternalWalletSelected(ExternalWalletResponse response) {
    showAlertDialog(
        context, "External Wallet Selected", "${response.walletName}");
  }

  void showAlertDialog(BuildContext context, String title, String message) {
    // set up the buttons
    Widget continueButton = ElevatedButton(
      child: const Text("Continue"),
      onPressed: () {},
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      // backgroundColor: Colors.green,
      icon: Icon(FontAwesomeIcons.check),
      title: Text(title),
      content: Text(message),
      actions: [
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

// TextField(
//   keyboardType: const TextInputType.numberWithOptions(decimal: true),
//   controller: _priceController,
//   decoration: const InputDecoration(
//     labelText: 'Price',
//   ),
// ),
// ElevatedButton(
//   child: Text("Book Slot"),
//   onPressed: () async {
//     double? dprice = 600;
//     Navigator.pushNamed(context, 'b');
//     create();
//     final String name = "EV_Owner_" + count.toString();
//     final double? price = dprice;
//     double.tryParse(_priceController.text);
//     if (price != null) {
//       await _products.add({"name": name, "price": price});
//       _nameController.text = '';
//       _priceController.text = '';
//       Navigator.of(context).pop();
//     }
//     setState(() {
//       if (count != null) count = count! + 1;
//     });
//   },
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
//           return Column(
//             children: [
//               Text(documentSnapshot['name']),
//               Card(
//                 margin: const EdgeInsets.all(10),
//                 child: ListTile(
//                   title: Text(documentSnapshot['name']),
//                   subtitle: Text(documentSnapshot['price'].toString()),
//                   trailing: SizedBox(
//                     width: 100,
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       );
//     }
//     return const Center(
//       child: CircularProgressIndicator(),
//     );
//   },
// ),
