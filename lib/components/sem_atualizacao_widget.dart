import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sem_atualizacao_model.dart';
export 'sem_atualizacao_model.dart';

class SemAtualizacaoWidget extends StatefulWidget {
  const SemAtualizacaoWidget({super.key});

  @override
  State<SemAtualizacaoWidget> createState() => _SemAtualizacaoWidgetState();
}

class _SemAtualizacaoWidgetState extends State<SemAtualizacaoWidget> {
  late SemAtualizacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SemAtualizacaoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Ops! Parece que ainda não temos nada por aqui. Que tal dar uma espiada mais tarde? 🚚📦',
      textAlign: TextAlign.center,
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Inter',
            color: Colors.white,
            fontSize: 22.0,
            letterSpacing: 0.0,
          ),
    );
  }
}
