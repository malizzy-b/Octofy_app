import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for Nascimento widget.
  FocusNode? nascimentoFocusNode;
  TextEditingController? nascimentoTextController;
  String? Function(BuildContext, String?)? nascimentoTextControllerValidator;
  // State field(s) for Sexo widget.
  String? sexoValue;
  FormFieldController<String>? sexoValueController;
  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // State field(s) for Corfimsenha widget.
  FocusNode? corfimsenhaFocusNode;
  TextEditingController? corfimsenhaTextController;
  late bool corfimsenhaVisibility;
  String? Function(BuildContext, String?)? corfimsenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
    corfimsenhaVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    nascimentoFocusNode?.dispose();
    nascimentoTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    corfimsenhaFocusNode?.dispose();
    corfimsenhaTextController?.dispose();
  }
}
