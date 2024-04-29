import 'package:cloud_firestore/cloud_firestore.dart';

class CollectionReferences {
  CollectionReference<Map<String, dynamic>> shopCollectionReference() {
    final collectionReference =
        FirebaseFirestore.instance.collection('shop_registration');
    return collectionReference;
  }
}
