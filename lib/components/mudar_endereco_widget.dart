import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'mudar_endereco_model.dart';
export 'mudar_endereco_model.dart';

class MudarEnderecoWidget extends StatefulWidget {
  const MudarEnderecoWidget({super.key});

  @override
  State<MudarEnderecoWidget> createState() => _MudarEnderecoWidgetState();
}

class _MudarEnderecoWidgetState extends State<MudarEnderecoWidget> {
  late MudarEnderecoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MudarEnderecoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
