.macro byte %var_name
.data
.align 0
%var_name: .byte 0
.text
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


