import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_de_opcoes_model.dart';
export 'menu_de_opcoes_model.dart';

class MenuDeOpcoesWidget extends StatefulWidget {
  const MenuDeOpcoesWidget({
    super.key,
    required this.refTarefa,
  });

  final DocumentReference? refTarefa;

  @override
  State<MenuDeOpcoesWidget> createState() => _MenuDeOpcoesWidgetState();
}

class _MenuDeOpcoesWidgetState extends State<MenuDeOpcoesWidget> {
  late MenuDeOpcoesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuDeOpcoesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.refTarefa!.delete();

        context.pushNamed('tarefas');
      },
      child: Container(
        width: double.infinity,
        height: 65.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Excluir Tarefa',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Outfit',
                    color: Color(0xFFB01515),
                    letterSpacing: 0.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
