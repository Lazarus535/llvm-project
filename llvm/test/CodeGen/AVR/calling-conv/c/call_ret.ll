
define i8 @ret_1() {
  ret i8 1
}

define i16 @ret_2() {
  ret i16 258
}

define i32 @ret_3() {
  ret i32 16909060
}

define i64 @ret_4() {
  ret i64 72623859790382856
}

define i64 @ret_5() {
  ret i64 16909060
}

define {i8, i16, i8} @ret_s1() {
  ret {i8, i16, i8} {i8 1, i16 772, i8 5}
}

define {i8, i32} @ret_s2() {
  ret {i8, i32} {i8 1, i32 16909060}
}

define i8 @ret_c1() {
  %1 = call {i8, i16, i8} @ret_s1()
  %2 = extractvalue {i8, i16, i8} %1, 0
  ret i8 %2
}

define i16 @ret_c2() {
  %1 = call {i8, i16, i8} @ret_s1()
  %2 = extractvalue {i8, i16, i8} %1, 1
  ret i16 %2
}

define i8 @ret_c3() {
  %1 = call {i8, i16, i8} @ret_s1()
  %2 = extractvalue {i8, i16, i8} %1, 2
  ret i8 %2
}

define i8 @ret_c4() {
  %1 = call {i8, i32} @ret_s2()
  %2 = extractvalue {i8, i32} %1, 0
  ret i8 %2
}

define i32 @ret_c5() {
  %1 = call {i8, i32} @ret_s2()
  %2 = extractvalue {i8, i32} %1, 1
  ret i32 %2
}
