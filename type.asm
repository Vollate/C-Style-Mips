.macro byte %var_name
.data
.align 0
.byte 0
.text
.endmacro

.macro int %var_name
.data
.align 0
.word 0
.text
.endmacro

.macro unsigned %var_name
.data
.align 0
.word 0
.text
.endmacro

.macro float %var_name
.data
.align 0
.float 0.0
.text
.endmacro

.macro double %var_name
.data
.align 0
.double 0.0
.text
.endmacro