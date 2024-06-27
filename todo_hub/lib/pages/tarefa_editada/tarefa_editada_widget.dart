import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tarefa_editada_model.dart';
export 'tarefa_editada_model.dart';

class TarefaEditadaWidget extends StatefulWidget {
  const TarefaEditadaWidget({super.key});

  @override
  State<TarefaEditadaWidget> createState() => _TarefaEditadaWidgetState();
}

class _TarefaEditadaWidgetState extends State<TarefaEditadaWidget>
    with TickerProviderStateMixin {
  late TarefaEditadaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TarefaEditadaModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0, 1.396),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(0, 1.396),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'dividerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(0, 1.396),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 350.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.222, 0),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: Color(0xFFF1F4F8),
          automaticallyImplyLeading: false,
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 770.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              1.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Color(0xFFE5E7EB),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 12.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 44.0, 0.0, 0.0),
                                child: Container(
                                  width: 120.0,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x4C39D2C0),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0x4C39D2C0),
                                      width: 4.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 140.0,
                                      height: 140.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF39D2C0),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Color(0x4C39D2C0),
                                          width: 4.0,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.check_rounded,
                                        color: Colors.white,
                                        size: 64.0,
                                      ),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation']!),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Text(
                                'Tarefa Editada!',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF15161E),
                                      fontSize: 36.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation']!),
                            ),
                            Divider(
                              height: 44.0,
                              thickness: 2.0,
                              color: Color(0xFFE5E7EB),
                            ).animateOnPageLoad(
                                animationsMap['dividerOnPageLoadAnimation']!),
                            FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('tarefas');
                              },
                              text: 'Ir para tarefas',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 48.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF6F61EF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Figtree',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['buttonOnPageLoadAnimation']!),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
