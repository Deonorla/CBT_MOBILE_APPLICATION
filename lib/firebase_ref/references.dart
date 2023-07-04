import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final userRf = fireStore.collection("users");
// once invoked it creates a collection named questionPaper in the firebase backend
final fireStore = FirebaseFirestore.instance;
final questionPaperRF = fireStore.collection('questionPapers');
DocumentReference questionRF({
  required String paperId,
  required String questionId,
}) =>
    questionPaperRF.doc(paperId).collection("questions").doc(questionId);
Reference get firebaseStorage => FirebaseStorage.instance.ref();
