define i64 @Microsoft__Quantum__Testing__QIR__TestAccessors__body() {
entry:
  %0 = load i2, i2* @PauliX
  %1 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ i2, i64 }* getelementptr ({ i2, i64 }, { i2, i64 }* null, i32 1) to i64))
  %2 = bitcast %Tuple* %1 to { i2, i64 }*
  %3 = getelementptr { i2, i64 }, { i2, i64 }* %2, i64 0, i32 0
  %4 = getelementptr { i2, i64 }, { i2, i64 }* %2, i64 0, i32 1
  store i2 %0, i2* %3
  store i64 1, i64* %4
  %x = call { { i2, i64 }*, double }* @Microsoft__Quantum__Testing__QIR__TestType__body({ i2, i64 }* %2, double 2.000000e+00)
  %5 = getelementptr { { i2, i64 }*, double }, { { i2, i64 }*, double }* %x, i64 0, i32 0
  %6 = load { i2, i64 }*, { i2, i64 }** %5
  %7 = getelementptr { i2, i64 }, { i2, i64 }* %6, i64 0, i32 1
  %y = load i64, i64* %7
  %8 = bitcast { i2, i64 }* %2 to %Tuple*
  call void @__quantum__rt__tuple_unreference(%Tuple* %8)
  %9 = getelementptr { { i2, i64 }*, double }, { { i2, i64 }*, double }* %x, i64 0, i32 0
  %10 = load { i2, i64 }*, { i2, i64 }** %9
  %11 = bitcast { i2, i64 }* %10 to %Tuple*
  call void @__quantum__rt__tuple_unreference(%Tuple* %11)
  %12 = bitcast { { i2, i64 }*, double }* %x to %Tuple*
  call void @__quantum__rt__tuple_unreference(%Tuple* %12)
  ret i64 %y
}

define { { i2, i64 }*, double }* @Microsoft__Quantum__Testing__QIR__TestType__body({ i2, i64 }* %arg__1, double %D) {
entry:
  %0 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ { i2, i64 }*, double }* getelementptr ({ { i2, i64 }*, double }, { { i2, i64 }*, double }* null, i32 1) to i64))
  %1 = bitcast %Tuple* %0 to { { i2, i64 }*, double }*
  %2 = getelementptr { { i2, i64 }*, double }, { { i2, i64 }*, double }* %1, i64 0, i32 0
  %3 = getelementptr { { i2, i64 }*, double }, { { i2, i64 }*, double }* %1, i64 0, i32 1
  store { i2, i64 }* %arg__1, { i2, i64 }** %2
  %4 = bitcast { i2, i64 }* %arg__1 to %Tuple*
  call void @__quantum__rt__tuple_reference(%Tuple* %4)
  store double %D, double* %3
  ret { { i2, i64 }*, double }* %1
}
