part of 'patient_register_bloc.dart';

//
abstract class PatientRegisterEvent extends Equatable {
  const PatientRegisterEvent();
  @override
  List<Object> get props => [];
}

class PatientRegisterButtonPressed extends PatientRegisterEvent {
  final String HOSPITAL_NO;
  final BuildContext myContext;
  final String SSN;
  final String TELEPHONE1;
  final String password;

  const PatientRegisterButtonPressed({
    required this.HOSPITAL_NO,
    required this.SSN,
    required this.myContext,
    required this.TELEPHONE1,
    required this.password,
  });

  @override
  List<Object> get props => [HOSPITAL_NO, SSN, TELEPHONE1,myContext];

  @override
  String toString() =>
      'LoginButtonPressed { HOSPITAL_NO: $HOSPITAL_NO, SSN: $SSN, TELEPHONE1: $TELEPHONE1 ,password:$password,myContext:$myContext }';
}
