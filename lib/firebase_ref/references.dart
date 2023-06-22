import 'package:cloud_firestore/cloud_firestore.dart';

// once invoked it creates a collection named questionPaper in the firebase backend
final fireStore = FirebaseFirestore.instance;
final questionPaperRF = fireStore.collection('questionPapers');
DocumentReference questionRF({
  required String paperId,
  required String questionId,
}) =>
    questionPaperRF.doc(paperId).collection("questions").doc(questionId);
