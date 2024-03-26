import 'package:flutter/material.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:google_fonts/google_fonts.dart';

import '../flutter_flow/flutter_flow_theme.dart';

class DefaultPickerView extends StatefulWidget {
  final void Function(CountryCode)? onCountryCodeSelected;
  final String ddinit;

  const DefaultPickerView({Key? key, this.onCountryCodeSelected, required this.ddinit}) : super(key: key);

  @override
  State<DefaultPickerView> createState() => _DefaultPickerViewState();
}

class _DefaultPickerViewState extends State<DefaultPickerView> {
  late final FlCountryCodePicker countryPicker;

  @override
  void initState() {
    super.initState();
    countryPicker = FlCountryCodePicker(
         title: Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
           child: Text("Selecione algo ou Pesquise",   style: TextStyle(

             fontSize: 32,
           )),),
         searchBarDecoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(8))),),


         countryTextStyle: const  TextStyle(
           fontSize: 16,




         ),


         dialCodeTextStyle: const TextStyle(color: Colors.green, fontSize: 16),
       );
  }

  @override
  Widget build(BuildContext context) {
    final countryCode = CountryCode.fromDialCode(widget.ddinit);
    return GestureDetector(
      onTap: () async {
        final code = await countryPicker.showPicker(
          context: context,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,

          scrollToDeviceLocale: true,
        );
        print(code);
        if (code != null) {
          widget.onCountryCodeSelected!(code);
        }
      },
      child: IntrinsicWidth(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: FlutterFlowTheme.of(context).customColor1, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                countryCode!.flagUri,
                width: 30.0,
                fit: BoxFit.cover,
                package: countryCode.flagImagePackage,
              ),
              const SizedBox(width: 8),
              Text(
                countryCode.dialCode,
                style: TextStyle(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
