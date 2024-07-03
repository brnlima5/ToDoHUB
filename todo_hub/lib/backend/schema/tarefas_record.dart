import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarefasRecord extends FirestoreRecord {
  TarefasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeTarefa" field.
  String? _nomeTarefa;
  String get nomeTarefa => _nomeTarefa ?? '';
  bool hasNomeTarefa() => _nomeTarefa != null;

  // "descricaoTarefa" field.
  String? _descricaoTarefa;
  String get descricaoTarefa => _descricaoTarefa ?? '';
  bool hasDescricaoTarefa() => _descricaoTarefa != null;

  // "completa" field.
  int? _completa;
  int get completa => _completa ?? 0;
  bool hasCompleta() => _completa != null;

  // "prioridade" field.
  String? _prioridade;
  String get prioridade => _prioridade ?? '';
  bool hasPrioridade() => _prioridade != null;

  void _initializeFields() {
    _nomeTarefa = snapshotData['nomeTarefa'] as String?;
    _descricaoTarefa = snapshotData['descricaoTarefa'] as String?;
    _completa = castToType<int>(snapshotData['completa']);
    _prioridade = snapshotData['prioridade'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tarefas');

  static Stream<TarefasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TarefasRecord.fromSnapshot(s));

  static Future<TarefasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TarefasRecord.fromSnapshot(s));

  static TarefasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TarefasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TarefasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TarefasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TarefasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TarefasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTarefasRecordData({
  String? nomeTarefa,
  String? descricaoTarefa,
  int? completa,
  String? prioridade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeTarefa': nomeTarefa,
      'descricaoTarefa': descricaoTarefa,
      'completa': completa,
      'prioridade': prioridade,
    }.withoutNulls,
  );

  return firestoreData;
}

class TarefasRecordDocumentEquality implements Equality<TarefasRecord> {
  const TarefasRecordDocumentEquality();

  @override
  bool equals(TarefasRecord? e1, TarefasRecord? e2) {
    return e1?.nomeTarefa == e2?.nomeTarefa &&
        e1?.descricaoTarefa == e2?.descricaoTarefa &&
        e1?.completa == e2?.completa &&
        e1?.prioridade == e2?.prioridade;
  }

  @override
  int hash(TarefasRecord? e) => const ListEquality()
      .hash([e?.nomeTarefa, e?.descricaoTarefa, e?.completa, e?.prioridade]);

  @override
  bool isValidKey(Object? o) => o is TarefasRecord;
}
