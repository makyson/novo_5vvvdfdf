import 'package:estados_municipios/estados_municipios.dart';

import '../flutter_flow/form_field_controller.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_motorista_widget.dart' show CadastroMotoristaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroMotoristaModel extends FlutterFlowModel<CadastroMotoristaWidget> {
  ///  State fields for stateful widgets in this page.


  String DD = '+55';
  final estadosMunicipiosController = EstadosMunicipiosController();
  String? selectedState;
  List<String> municipalities = [];

  String? dropDownValue;
  FormFieldController<String>? EstadoValueController;
  FormFieldController<String>? CidadeValueController;


  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  final textFieldMask2 = MaskTextInputFormatter(mask: '(##) #########');
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório';
    }
    if (val.length < 14) {
      return 'O Número deve conter 11 dígitos.';
    }
    if (val.length > 14) {
      return 'O Número deve conter 11 dígitos.';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  final textFieldMask3 = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório';
    }

    if (val.length < 14) {
      return 'O CPF deve conter 11 dígitos.';
    }
    if (val.length > 14) {
      return 'O CPF deve conter 11 dígitos.';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  final textFieldMask5 = MaskTextInputFormatter(mask: '##.###-###');
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  String? _textController6Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (CreateMotorista)] action in Button widget.
  ApiCallResponse? resposta;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    textController3Validator = _textController3Validator;
    textController4Validator = _textController4Validator;
    textController6Validator = _textController6Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
