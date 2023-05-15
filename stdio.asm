.macro scanf_int(%var_name)
li $v0,5
syscall
sw $v0,%var_name
.end_macro

.macro scanf_char(%var_name)
li $v0,12
syscall
sw $v0,%var_name
.end_macro

.macro scanf_string(%var_name,%max_length)
li $v0,8
la $a0,%var_name
li $a1,%max_length
syscall
.end_macro

.macro scanf_float(%var_name)
li $v0,6
syscall
swc1 $f0,%var_name
.end_macro

.macro scanf_double(%var_name)
li $v0,7
syscall
sd $f0,%var_name
.end_macro

.macro print_int(%var_name)
lw $a0,%var_name
li $v0,1
syscall
.end_macro

.macro print_float(%var_name)
lwc1 %f12,%var_name
li $v0,6
syscall
.end_macro

.macro print_double(%var_name)
lwc1 %f12,%var_name
li $v0,7
syscall
.end_macro

.macro int_main
.text
.end_macro

.macro return0
li $v0,10
syscall
.end_macro
