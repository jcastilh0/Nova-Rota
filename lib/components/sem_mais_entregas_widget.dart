import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sem_mais_entregas_model.dart';
export 'sem_mais_entregas_model.dart';

class SemMaisEntregasWidget extends StatefulWidget {
  const SemMaisEntregasWidget({super.key});

  @override
  State<SemMaisEntregasWidget> createState() => _SemMaisEntregasWidgetState();
}

class _SemMaisEntregasWidgetState extends State<SemMaisEntregasWidget> {
  late SemMaisEntregasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SemMaisEntregasModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Nenhuma entrega pendente para hoje!',
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
