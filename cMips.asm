#types
.macro byte %var_name
.data
.align 0
%var_name: .byte 0 .text
.end_macro

.macro int %var_name
.data
.align 0
%var_name: .word 0
.text
.end_macro

.macro unsigned %var_name
int %var_name
.end_macro

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

# IO
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

.macro return_0
li $v0,10
syscall
.end_macro

# operations
.macro int_add(%res,%lhs,%rhs)
lw $t0,%lhs
lw $t1,%rhs
add $t2,$t0,$t1
sw $t2,%res
.end_macro

.macro int_addi(%res,%lhs,%ime)
lw $t0,%lhs
addi $t1,$t0,%ime
sw $t1,%res
.end_macro

.macro int_addu(%res,%lhs,%rhs)
lw $t0,%lhs
lw $t1,%rhs
addu $t2,$t0,$t1
sw $t2,%res
.end_macro

.macro int_addiu(%res,%lhs,%ime)
lw $t0,%lhs
addiu $t1,$t0,%ime
sw $t1,%res
.end_macro

.macro int_sub(%res,%lhs,%rhs)
lw $t0,%lhs
lw $t1,%rhs
sub $t2,$t0,$t1
sw $t2,%res
.end_macro

