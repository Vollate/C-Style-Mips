.macro float %var_name
.data
.align 0
%var_name: .float 0.0
.text
.end_macro

.macro double %var_name
.data
.align 0
%var_name: .double 0.0
.text
.end_macro

