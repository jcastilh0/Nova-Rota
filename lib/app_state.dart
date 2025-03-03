import 'package:flutter/material.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _ListON = false;
  bool get ListON => _ListON;
  set ListON(bool value) {
    _ListON = value;
  }

  bool _ButtonOn = false;
  bool get ButtonOn => _ButtonOn;
  set ButtonOn(bool value) {
    _ButtonOn = value;
  }
}
