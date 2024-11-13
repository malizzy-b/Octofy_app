import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'extrato_widget.dart' show ExtratoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExtratoModel extends FlutterFlowModel<ExtratoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for data widget.
  String? dataValue;
  FormFieldController<String>? dataValueController;
  // State field(s) for categoria widget.
  String? categoriaValue;
  FormFieldController<String>? categoriaValueController;
  // State field(s) for formaPagamento widget.
  String? formaPagamentoValue;
  FormFieldController<String>? formaPagamentoValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
