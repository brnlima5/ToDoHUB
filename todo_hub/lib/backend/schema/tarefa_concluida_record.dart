import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarefaConcluidaRecord extends FirestoreRecord {
  TarefaConcluidaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeTarefaOk" field.
  String? _nomeTarefaOk;
  String get nomeTarefaOk => _nomeTarefaOk ?? '';
  bool hasNomeTarefaOk() => _nomeTarefaOk != null;

  // "descricaoTarefaOk" field.
  String? _descricaoTarefaOk;
  String get descricaoTarefaOk => _descricaoTarefaOk ?? '';
  bool hasDescricaoTarefaOk() => _descricaoTarefaOk != null;

  // "prioridadeOk" field.
  String? _prioridadeOk;
  String get prioridadeOk => _prioridadeOk ?? '';
  bool hasPrioridadeOk() => _prioridadeOk != null;

  void _initializeFields() {
    _nomeTarefaOk = snapshotData['nomeTarefaOk'] as String?;
    _descricaoTarefaOk = snapshotData['descricaoTarefaOk'] as String?;
    _prioridadeOk = snapshotData['prioridadeOk'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TarefaConcluida');

  static Stream<TarefaConcluidaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TarefaConcluidaRecord.fromSnapshot(s));

  static Future<TarefaConcluidaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TarefaConcluidaRecord.fromSnapshot(s));

  static TarefaConcluidaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TarefaConcluidaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TarefaConcluidaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TarefaConcluidaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TarefaConcluidaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TarefaConcluidaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTarefaConcluidaRecordData({
  String? nomeTarefaOk,
  String? descricaoTarefaOk,
  String? prioridadeOk,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeTarefaOk': nomeTarefaOk,
      'descricaoTarefaOk': descricaoTarefaOk,
      'prioridadeOk': prioridadeOk,
    }.withoutNulls,
  );

  return firestoreData;
}

class TarefaConcluidaRecordDocumentEquality
    implements Equality<TarefaConcluidaRecord> {
  const TarefaConcluidaRecordDocumentEquality();

  @override
  bool equals(TarefaConcluidaRecord? e1, TarefaConcluidaRecord? e2) {
    return e1?.nomeTarefaOk == e2?.nomeTarefaOk &&
        e1?.descricaoTarefaOk == e2?.descricaoTarefaOk &&
        e1?.prioridadeOk == e2?.prioridadeOk;
  }

  @override
  int hash(TarefaConcluidaRecord? e) => const ListEquality()
      .hash([e?.nomeTarefaOk, e?.descricaoTarefaOk, e?.prioridadeOk]);

  @override
  bool isValidKey(Object? o) => o is TarefaConcluidaRecord;
}
