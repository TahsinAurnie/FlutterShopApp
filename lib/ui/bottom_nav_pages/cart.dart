import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app7/widgets/fetchProducts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: fetchData("users-cart-items"),
        //         StreamBuilder(
        //   stream: FirebaseFirestore.instance
        //       .collection("users-cart-items")
        //       .doc(FirebaseAuth.instance.currentUser!.email)
        //       .collection("items")
        //       .snapshots(),
        //   builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        //     if (snapshot.hasError) {
        //       return const Center(
        //         child: Text("Something is wrong"),
        //       );
        //     }

        //     return ListView.builder(
        //         itemCount: snapshot.data == null ? 0 : snapshot.data!.docs.length,
        //         itemBuilder: (_, index) {
        //           DocumentSnapshot _documentSnapshot = snapshot.data!.docs[index];

        //           return Card(
        //             elevation: 5,
        //             child: ListTile(
        //               leading: Column(
        //                 children: [
        //                   SizedBox(height: 10.sp),
        //                   Text(_documentSnapshot['name']),
        //                   Text("Qty:" "${_documentSnapshot['quantity']}"),
        //                   Text(
        //                       "Total: \$.${_documentSnapshot['quantity'] * _documentSnapshot['rate']}"
        //                           .toString())
        //                 ],
        //               ),
        //               //Text(_documentSnapshot['name']),
        //               title: Column(
        //                 children: [
        //                   Text(
        //                     "\$ ${_documentSnapshot['price']}",
        //                     style: const TextStyle(
        //                         fontWeight: FontWeight.bold, color: Colors.red),
        //                   ),
        //                   Text(
        //                     "\$ ${_documentSnapshot['rate']}",
        //                     style: const TextStyle(
        //                         fontWeight: FontWeight.bold, color: Colors.red),
        //                   ),
        //                 ],
        //               ),

        //               trailing: GestureDetector(
        //                 child: const CircleAvatar(
        //                   child: Icon(Icons.remove_circle),
        //                 ),
        //                 onTap: () {
        //                   FirebaseFirestore.instance
        //                       .collection("users-cart-items")
        //                       .doc(FirebaseAuth.instance.currentUser!.email)
        //                       .collection("items")
        //                       .doc(_documentSnapshot.id)
        //                       .delete();
        //                 },
        //               ),
        //             ),
        //           );
        //         });
        //   },
        //)
      ),
    );
  }
}
