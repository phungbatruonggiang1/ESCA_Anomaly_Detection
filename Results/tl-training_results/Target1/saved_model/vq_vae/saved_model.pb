№ї
•ц
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
Ь
ArgMin

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

ј
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
М
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint€€€€€€€€€"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28зи
}
embeddings_vqvaeVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*!
shared_nameembeddings_vqvae
v
$embeddings_vqvae/Read/ReadVariableOpReadVariableOpembeddings_vqvae*
_output_shapes
:	@А*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
Ц
vae/encoder/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namevae/encoder/conv2d/kernel
П
-vae/encoder/conv2d/kernel/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d/kernel*&
_output_shapes
: *
dtype0
Ж
vae/encoder/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namevae/encoder/conv2d/bias

+vae/encoder/conv2d/bias/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d/bias*
_output_shapes
: *
dtype0
Ъ
vae/encoder/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*,
shared_namevae/encoder/conv2d_1/kernel
У
/vae/encoder/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
К
vae/encoder/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namevae/encoder/conv2d_1/bias
Г
-vae/encoder/conv2d_1/bias/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d_1/bias*
_output_shapes
:@*
dtype0
Ъ
vae/encoder/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*,
shared_namevae/encoder/conv2d_2/kernel
У
/vae/encoder/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d_2/kernel*&
_output_shapes
:@@*
dtype0
К
vae/encoder/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namevae/encoder/conv2d_2/bias
Г
-vae/encoder/conv2d_2/bias/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d_2/bias*
_output_shapes
:@*
dtype0
™
#vae/decoder/conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*4
shared_name%#vae/decoder/conv2d_transpose/kernel
£
7vae/decoder/conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOp#vae/decoder/conv2d_transpose/kernel*&
_output_shapes
: @*
dtype0
Ъ
!vae/decoder/conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!vae/decoder/conv2d_transpose/bias
У
5vae/decoder/conv2d_transpose/bias/Read/ReadVariableOpReadVariableOp!vae/decoder/conv2d_transpose/bias*
_output_shapes
: *
dtype0
Ѓ
%vae/decoder/conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*6
shared_name'%vae/decoder/conv2d_transpose_1/kernel
І
9vae/decoder/conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOp%vae/decoder/conv2d_transpose_1/kernel*&
_output_shapes
:@@*
dtype0
Ю
#vae/decoder/conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#vae/decoder/conv2d_transpose_1/bias
Ч
7vae/decoder/conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOp#vae/decoder/conv2d_transpose_1/bias*
_output_shapes
:@*
dtype0
Ѓ
%vae/decoder/conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%vae/decoder/conv2d_transpose_2/kernel
І
9vae/decoder/conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOp%vae/decoder/conv2d_transpose_2/kernel*&
_output_shapes
: *
dtype0
Ю
#vae/decoder/conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#vae/decoder/conv2d_transpose_2/bias
Ч
7vae/decoder/conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOp#vae/decoder/conv2d_transpose_2/bias*
_output_shapes
:*
dtype0
Л
Adam/embeddings_vqvae/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*(
shared_nameAdam/embeddings_vqvae/m
Д
+Adam/embeddings_vqvae/m/Read/ReadVariableOpReadVariableOpAdam/embeddings_vqvae/m*
_output_shapes
:	@А*
dtype0
§
 Adam/vae/encoder/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/vae/encoder/conv2d/kernel/m
Э
4Adam/vae/encoder/conv2d/kernel/m/Read/ReadVariableOpReadVariableOp Adam/vae/encoder/conv2d/kernel/m*&
_output_shapes
: *
dtype0
Ф
Adam/vae/encoder/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/vae/encoder/conv2d/bias/m
Н
2Adam/vae/encoder/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/vae/encoder/conv2d/bias/m*
_output_shapes
: *
dtype0
®
"Adam/vae/encoder/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*3
shared_name$"Adam/vae/encoder/conv2d_1/kernel/m
°
6Adam/vae/encoder/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/vae/encoder/conv2d_1/kernel/m*&
_output_shapes
: @*
dtype0
Ш
 Adam/vae/encoder/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/vae/encoder/conv2d_1/bias/m
С
4Adam/vae/encoder/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOp Adam/vae/encoder/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
®
"Adam/vae/encoder/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*3
shared_name$"Adam/vae/encoder/conv2d_2/kernel/m
°
6Adam/vae/encoder/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/vae/encoder/conv2d_2/kernel/m*&
_output_shapes
:@@*
dtype0
Ш
 Adam/vae/encoder/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/vae/encoder/conv2d_2/bias/m
С
4Adam/vae/encoder/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOp Adam/vae/encoder/conv2d_2/bias/m*
_output_shapes
:@*
dtype0
Є
*Adam/vae/decoder/conv2d_transpose/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*;
shared_name,*Adam/vae/decoder/conv2d_transpose/kernel/m
±
>Adam/vae/decoder/conv2d_transpose/kernel/m/Read/ReadVariableOpReadVariableOp*Adam/vae/decoder/conv2d_transpose/kernel/m*&
_output_shapes
: @*
dtype0
®
(Adam/vae/decoder/conv2d_transpose/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(Adam/vae/decoder/conv2d_transpose/bias/m
°
<Adam/vae/decoder/conv2d_transpose/bias/m/Read/ReadVariableOpReadVariableOp(Adam/vae/decoder/conv2d_transpose/bias/m*
_output_shapes
: *
dtype0
Љ
,Adam/vae/decoder/conv2d_transpose_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*=
shared_name.,Adam/vae/decoder/conv2d_transpose_1/kernel/m
µ
@Adam/vae/decoder/conv2d_transpose_1/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/vae/decoder/conv2d_transpose_1/kernel/m*&
_output_shapes
:@@*
dtype0
ђ
*Adam/vae/decoder/conv2d_transpose_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/vae/decoder/conv2d_transpose_1/bias/m
•
>Adam/vae/decoder/conv2d_transpose_1/bias/m/Read/ReadVariableOpReadVariableOp*Adam/vae/decoder/conv2d_transpose_1/bias/m*
_output_shapes
:@*
dtype0
Љ
,Adam/vae/decoder/conv2d_transpose_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/vae/decoder/conv2d_transpose_2/kernel/m
µ
@Adam/vae/decoder/conv2d_transpose_2/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/vae/decoder/conv2d_transpose_2/kernel/m*&
_output_shapes
: *
dtype0
ђ
*Adam/vae/decoder/conv2d_transpose_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/vae/decoder/conv2d_transpose_2/bias/m
•
>Adam/vae/decoder/conv2d_transpose_2/bias/m/Read/ReadVariableOpReadVariableOp*Adam/vae/decoder/conv2d_transpose_2/bias/m*
_output_shapes
:*
dtype0
Л
Adam/embeddings_vqvae/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А*(
shared_nameAdam/embeddings_vqvae/v
Д
+Adam/embeddings_vqvae/v/Read/ReadVariableOpReadVariableOpAdam/embeddings_vqvae/v*
_output_shapes
:	@А*
dtype0
§
 Adam/vae/encoder/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/vae/encoder/conv2d/kernel/v
Э
4Adam/vae/encoder/conv2d/kernel/v/Read/ReadVariableOpReadVariableOp Adam/vae/encoder/conv2d/kernel/v*&
_output_shapes
: *
dtype0
Ф
Adam/vae/encoder/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/vae/encoder/conv2d/bias/v
Н
2Adam/vae/encoder/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/vae/encoder/conv2d/bias/v*
_output_shapes
: *
dtype0
®
"Adam/vae/encoder/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*3
shared_name$"Adam/vae/encoder/conv2d_1/kernel/v
°
6Adam/vae/encoder/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/vae/encoder/conv2d_1/kernel/v*&
_output_shapes
: @*
dtype0
Ш
 Adam/vae/encoder/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/vae/encoder/conv2d_1/bias/v
С
4Adam/vae/encoder/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOp Adam/vae/encoder/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
®
"Adam/vae/encoder/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*3
shared_name$"Adam/vae/encoder/conv2d_2/kernel/v
°
6Adam/vae/encoder/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/vae/encoder/conv2d_2/kernel/v*&
_output_shapes
:@@*
dtype0
Ш
 Adam/vae/encoder/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/vae/encoder/conv2d_2/bias/v
С
4Adam/vae/encoder/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOp Adam/vae/encoder/conv2d_2/bias/v*
_output_shapes
:@*
dtype0
Є
*Adam/vae/decoder/conv2d_transpose/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*;
shared_name,*Adam/vae/decoder/conv2d_transpose/kernel/v
±
>Adam/vae/decoder/conv2d_transpose/kernel/v/Read/ReadVariableOpReadVariableOp*Adam/vae/decoder/conv2d_transpose/kernel/v*&
_output_shapes
: @*
dtype0
®
(Adam/vae/decoder/conv2d_transpose/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(Adam/vae/decoder/conv2d_transpose/bias/v
°
<Adam/vae/decoder/conv2d_transpose/bias/v/Read/ReadVariableOpReadVariableOp(Adam/vae/decoder/conv2d_transpose/bias/v*
_output_shapes
: *
dtype0
Љ
,Adam/vae/decoder/conv2d_transpose_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*=
shared_name.,Adam/vae/decoder/conv2d_transpose_1/kernel/v
µ
@Adam/vae/decoder/conv2d_transpose_1/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/vae/decoder/conv2d_transpose_1/kernel/v*&
_output_shapes
:@@*
dtype0
ђ
*Adam/vae/decoder/conv2d_transpose_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/vae/decoder/conv2d_transpose_1/bias/v
•
>Adam/vae/decoder/conv2d_transpose_1/bias/v/Read/ReadVariableOpReadVariableOp*Adam/vae/decoder/conv2d_transpose_1/bias/v*
_output_shapes
:@*
dtype0
Љ
,Adam/vae/decoder/conv2d_transpose_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/vae/decoder/conv2d_transpose_2/kernel/v
µ
@Adam/vae/decoder/conv2d_transpose_2/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/vae/decoder/conv2d_transpose_2/kernel/v*&
_output_shapes
: *
dtype0
ђ
*Adam/vae/decoder/conv2d_transpose_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/vae/decoder/conv2d_transpose_2/bias/v
•
>Adam/vae/decoder/conv2d_transpose_2/bias/v/Read/ReadVariableOpReadVariableOp*Adam/vae/decoder/conv2d_transpose_2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ТJ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЌI
value√IBјI BєI
–
encoder
vector_quantizer
decoder
	optimizer
loss

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
Ч

layer_dict

latent_dim
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
З

embeddings
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Щ

layer_dict
output_layer
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
ƒ
 iter

!beta_1

"beta_2
	#decay
$learning_ratemЕ%mЖ&mЗ'mИ(mЙ)mК*mЛ+mМ,mН-mО.mП/mР0mСvТ%vУ&vФ'vХ(vЦ)vЧ*vШ+vЩ,vЪ-vЫ.vЬ/vЭ0vЮ
 
 
 
^
%0
&1
'2
(3
)4
*5
6
+7
,8
-9
.10
/11
012
^
%0
&1
'2
(3
)4
*5
6
+7
,8
-9
.10
/11
012
 
≠
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
	trainable_variables

regularization_losses

6layer_1
7layer_2
Н

)kernel
*bias
#8_self_saveable_object_factories
9	variables
:trainable_variables
;regularization_losses
<	keras_api
 
*
%0
&1
'2
(3
)4
*5
*
%0
&1
'2
(3
)4
*5
 
≠
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEembeddings_vqvae6vector_quantizer/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
 
≠
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses

Glayer_1
Hlayer_2
Н

/kernel
0bias
#I_self_saveable_object_factories
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
 
*
+0
,1
-2
.3
/4
05
*
+0
,1
-2
.3
/4
05
 
≠
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEvae/encoder/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEvae/encoder/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEvae/encoder/conv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEvae/encoder/conv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEvae/encoder/conv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEvae/encoder/conv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#vae/decoder/conv2d_transpose/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!vae/decoder/conv2d_transpose/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%vae/decoder/conv2d_transpose_1/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#vae/decoder/conv2d_transpose_1/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%vae/decoder/conv2d_transpose_2/kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#vae/decoder/conv2d_transpose_2/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
 
 
 
Н

%kernel
&bias
#S_self_saveable_object_factories
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
Н

'kernel
(bias
#X_self_saveable_object_factories
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
 

)0
*1

)0
*1
 
≠
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
9	variables
:trainable_variables
;regularization_losses
 

60
71
2
 
 
 
 
 
 
 
 
Н

+kernel
,bias
#b_self_saveable_object_factories
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
Н

-kernel
.bias
#g_self_saveable_object_factories
h	variables
itrainable_variables
jregularization_losses
k	keras_api
 

/0
01

/0
01
 
≠
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
J	variables
Ktrainable_variables
Lregularization_losses
 

G0
H1
2
 
 
 
 

%0
&1

%0
&1
 
≠
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
 

'0
(1

'0
(1
 
≠
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
 
 
 
 
 
 

+0
,1

+0
,1
 
≠
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
c	variables
dtrainable_variables
eregularization_losses
 

-0
.1

-0
.1
 
≤
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
h	variables
itrainable_variables
jregularization_losses
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
}
VARIABLE_VALUEAdam/embeddings_vqvae/mRvector_quantizer/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/vae/encoder/conv2d/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/vae/encoder/conv2d/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/vae/encoder/conv2d_1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/vae/encoder/conv2d_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/vae/encoder/conv2d_2/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/vae/encoder/conv2d_2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE*Adam/vae/decoder/conv2d_transpose/kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUE(Adam/vae/decoder/conv2d_transpose/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/vae/decoder/conv2d_transpose_1/kernel/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUE*Adam/vae/decoder/conv2d_transpose_1/bias/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUE,Adam/vae/decoder/conv2d_transpose_2/kernel/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUE*Adam/vae/decoder/conv2d_transpose_2/bias/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/embeddings_vqvae/vRvector_quantizer/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/vae/encoder/conv2d/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/vae/encoder/conv2d/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/vae/encoder/conv2d_1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/vae/encoder/conv2d_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/vae/encoder/conv2d_2/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/vae/encoder/conv2d_2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE*Adam/vae/decoder/conv2d_transpose/kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUE(Adam/vae/decoder/conv2d_transpose/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/vae/decoder/conv2d_transpose_1/kernel/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUE*Adam/vae/decoder/conv2d_transpose_1/bias/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUE,Adam/vae/decoder/conv2d_transpose_2/kernel/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUE*Adam/vae/decoder/conv2d_transpose_2/bias/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
И
serving_default_inputPlaceholder*/
_output_shapes
:€€€€€€€€€  *
dtype0*$
shape:€€€€€€€€€  
у
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputvae/encoder/conv2d/kernelvae/encoder/conv2d/biasvae/encoder/conv2d_1/kernelvae/encoder/conv2d_1/biasvae/encoder/conv2d_2/kernelvae/encoder/conv2d_2/biasembeddings_vqvae%vae/decoder/conv2d_transpose_1/kernel#vae/decoder/conv2d_transpose_1/bias#vae/decoder/conv2d_transpose/kernel!vae/decoder/conv2d_transpose/bias%vae/decoder/conv2d_transpose_2/kernel#vae/decoder/conv2d_transpose_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  */
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

  @E8В *-
f(R&
$__inference_signature_wrapper_201396
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
€
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$embeddings_vqvae/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-vae/encoder/conv2d/kernel/Read/ReadVariableOp+vae/encoder/conv2d/bias/Read/ReadVariableOp/vae/encoder/conv2d_1/kernel/Read/ReadVariableOp-vae/encoder/conv2d_1/bias/Read/ReadVariableOp/vae/encoder/conv2d_2/kernel/Read/ReadVariableOp-vae/encoder/conv2d_2/bias/Read/ReadVariableOp7vae/decoder/conv2d_transpose/kernel/Read/ReadVariableOp5vae/decoder/conv2d_transpose/bias/Read/ReadVariableOp9vae/decoder/conv2d_transpose_1/kernel/Read/ReadVariableOp7vae/decoder/conv2d_transpose_1/bias/Read/ReadVariableOp9vae/decoder/conv2d_transpose_2/kernel/Read/ReadVariableOp7vae/decoder/conv2d_transpose_2/bias/Read/ReadVariableOp+Adam/embeddings_vqvae/m/Read/ReadVariableOp4Adam/vae/encoder/conv2d/kernel/m/Read/ReadVariableOp2Adam/vae/encoder/conv2d/bias/m/Read/ReadVariableOp6Adam/vae/encoder/conv2d_1/kernel/m/Read/ReadVariableOp4Adam/vae/encoder/conv2d_1/bias/m/Read/ReadVariableOp6Adam/vae/encoder/conv2d_2/kernel/m/Read/ReadVariableOp4Adam/vae/encoder/conv2d_2/bias/m/Read/ReadVariableOp>Adam/vae/decoder/conv2d_transpose/kernel/m/Read/ReadVariableOp<Adam/vae/decoder/conv2d_transpose/bias/m/Read/ReadVariableOp@Adam/vae/decoder/conv2d_transpose_1/kernel/m/Read/ReadVariableOp>Adam/vae/decoder/conv2d_transpose_1/bias/m/Read/ReadVariableOp@Adam/vae/decoder/conv2d_transpose_2/kernel/m/Read/ReadVariableOp>Adam/vae/decoder/conv2d_transpose_2/bias/m/Read/ReadVariableOp+Adam/embeddings_vqvae/v/Read/ReadVariableOp4Adam/vae/encoder/conv2d/kernel/v/Read/ReadVariableOp2Adam/vae/encoder/conv2d/bias/v/Read/ReadVariableOp6Adam/vae/encoder/conv2d_1/kernel/v/Read/ReadVariableOp4Adam/vae/encoder/conv2d_1/bias/v/Read/ReadVariableOp6Adam/vae/encoder/conv2d_2/kernel/v/Read/ReadVariableOp4Adam/vae/encoder/conv2d_2/bias/v/Read/ReadVariableOp>Adam/vae/decoder/conv2d_transpose/kernel/v/Read/ReadVariableOp<Adam/vae/decoder/conv2d_transpose/bias/v/Read/ReadVariableOp@Adam/vae/decoder/conv2d_transpose_1/kernel/v/Read/ReadVariableOp>Adam/vae/decoder/conv2d_transpose_1/bias/v/Read/ReadVariableOp@Adam/vae/decoder/conv2d_transpose_2/kernel/v/Read/ReadVariableOp>Adam/vae/decoder/conv2d_transpose_2/bias/v/Read/ReadVariableOpConst*9
Tin2
02.	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  @E8В *(
f#R!
__inference__traced_save_201989
К
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembeddings_vqvae	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratevae/encoder/conv2d/kernelvae/encoder/conv2d/biasvae/encoder/conv2d_1/kernelvae/encoder/conv2d_1/biasvae/encoder/conv2d_2/kernelvae/encoder/conv2d_2/bias#vae/decoder/conv2d_transpose/kernel!vae/decoder/conv2d_transpose/bias%vae/decoder/conv2d_transpose_1/kernel#vae/decoder/conv2d_transpose_1/bias%vae/decoder/conv2d_transpose_2/kernel#vae/decoder/conv2d_transpose_2/biasAdam/embeddings_vqvae/m Adam/vae/encoder/conv2d/kernel/mAdam/vae/encoder/conv2d/bias/m"Adam/vae/encoder/conv2d_1/kernel/m Adam/vae/encoder/conv2d_1/bias/m"Adam/vae/encoder/conv2d_2/kernel/m Adam/vae/encoder/conv2d_2/bias/m*Adam/vae/decoder/conv2d_transpose/kernel/m(Adam/vae/decoder/conv2d_transpose/bias/m,Adam/vae/decoder/conv2d_transpose_1/kernel/m*Adam/vae/decoder/conv2d_transpose_1/bias/m,Adam/vae/decoder/conv2d_transpose_2/kernel/m*Adam/vae/decoder/conv2d_transpose_2/bias/mAdam/embeddings_vqvae/v Adam/vae/encoder/conv2d/kernel/vAdam/vae/encoder/conv2d/bias/v"Adam/vae/encoder/conv2d_1/kernel/v Adam/vae/encoder/conv2d_1/bias/v"Adam/vae/encoder/conv2d_2/kernel/v Adam/vae/encoder/conv2d_2/bias/v*Adam/vae/decoder/conv2d_transpose/kernel/v(Adam/vae/decoder/conv2d_transpose/bias/v,Adam/vae/decoder/conv2d_transpose_1/kernel/v*Adam/vae/decoder/conv2d_transpose_1/bias/v,Adam/vae/decoder/conv2d_transpose_2/kernel/v*Adam/vae/decoder/conv2d_transpose_2/bias/v*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  @E8В *+
f&R$
"__inference__traced_restore_202131ЧЙ
б
Г
)__inference_restored_function_body_201291	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@А#
	unknown_6:@@
	unknown_7:@#
	unknown_8: @
	unknown_9: $

unknown_10: 

unknown_11:
identity

identity_1ИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*1
_output_shapes
:€€€€€€€€€  : */
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

  @E8В *F
fAR?
=__inference_vae_layer_call_and_return_conditional_losses_1538w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  `

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€  : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:€€€€€€€€€  

_user_specified_nameinput
ЙЈ
б 
"__inference__traced_restore_202131
file_prefix4
!assignvariableop_embeddings_vqvae:	@А&
assignvariableop_1_adam_iter:	 (
assignvariableop_2_adam_beta_1: (
assignvariableop_3_adam_beta_2: '
assignvariableop_4_adam_decay: /
%assignvariableop_5_adam_learning_rate: F
,assignvariableop_6_vae_encoder_conv2d_kernel: 8
*assignvariableop_7_vae_encoder_conv2d_bias: H
.assignvariableop_8_vae_encoder_conv2d_1_kernel: @:
,assignvariableop_9_vae_encoder_conv2d_1_bias:@I
/assignvariableop_10_vae_encoder_conv2d_2_kernel:@@;
-assignvariableop_11_vae_encoder_conv2d_2_bias:@Q
7assignvariableop_12_vae_decoder_conv2d_transpose_kernel: @C
5assignvariableop_13_vae_decoder_conv2d_transpose_bias: S
9assignvariableop_14_vae_decoder_conv2d_transpose_1_kernel:@@E
7assignvariableop_15_vae_decoder_conv2d_transpose_1_bias:@S
9assignvariableop_16_vae_decoder_conv2d_transpose_2_kernel: E
7assignvariableop_17_vae_decoder_conv2d_transpose_2_bias:>
+assignvariableop_18_adam_embeddings_vqvae_m:	@АN
4assignvariableop_19_adam_vae_encoder_conv2d_kernel_m: @
2assignvariableop_20_adam_vae_encoder_conv2d_bias_m: P
6assignvariableop_21_adam_vae_encoder_conv2d_1_kernel_m: @B
4assignvariableop_22_adam_vae_encoder_conv2d_1_bias_m:@P
6assignvariableop_23_adam_vae_encoder_conv2d_2_kernel_m:@@B
4assignvariableop_24_adam_vae_encoder_conv2d_2_bias_m:@X
>assignvariableop_25_adam_vae_decoder_conv2d_transpose_kernel_m: @J
<assignvariableop_26_adam_vae_decoder_conv2d_transpose_bias_m: Z
@assignvariableop_27_adam_vae_decoder_conv2d_transpose_1_kernel_m:@@L
>assignvariableop_28_adam_vae_decoder_conv2d_transpose_1_bias_m:@Z
@assignvariableop_29_adam_vae_decoder_conv2d_transpose_2_kernel_m: L
>assignvariableop_30_adam_vae_decoder_conv2d_transpose_2_bias_m:>
+assignvariableop_31_adam_embeddings_vqvae_v:	@АN
4assignvariableop_32_adam_vae_encoder_conv2d_kernel_v: @
2assignvariableop_33_adam_vae_encoder_conv2d_bias_v: P
6assignvariableop_34_adam_vae_encoder_conv2d_1_kernel_v: @B
4assignvariableop_35_adam_vae_encoder_conv2d_1_bias_v:@P
6assignvariableop_36_adam_vae_encoder_conv2d_2_kernel_v:@@B
4assignvariableop_37_adam_vae_encoder_conv2d_2_bias_v:@X
>assignvariableop_38_adam_vae_decoder_conv2d_transpose_kernel_v: @J
<assignvariableop_39_adam_vae_decoder_conv2d_transpose_bias_v: Z
@assignvariableop_40_adam_vae_decoder_conv2d_transpose_1_kernel_v:@@L
>assignvariableop_41_adam_vae_decoder_conv2d_transpose_1_bias_v:@Z
@assignvariableop_42_adam_vae_decoder_conv2d_transpose_2_kernel_v: L
>assignvariableop_43_adam_vae_decoder_conv2d_transpose_2_bias_v:
identity_45ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ы
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*Ѕ
valueЈBі-B6vector_quantizer/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEBRvector_quantizer/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRvector_quantizer/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH 
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B В
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0* 
_output_shapesЈ
і:::::::::::::::::::::::::::::::::::::::::::::*;
dtypes1
/2-	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOpAssignVariableOp!assignvariableop_embeddings_vqvaeIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_iterIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_2Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_decayIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_5AssignVariableOp%assignvariableop_5_adam_learning_rateIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_6AssignVariableOp,assignvariableop_6_vae_encoder_conv2d_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_7AssignVariableOp*assignvariableop_7_vae_encoder_conv2d_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_8AssignVariableOp.assignvariableop_8_vae_encoder_conv2d_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_9AssignVariableOp,assignvariableop_9_vae_encoder_conv2d_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_10AssignVariableOp/assignvariableop_10_vae_encoder_conv2d_2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_11AssignVariableOp-assignvariableop_11_vae_encoder_conv2d_2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_12AssignVariableOp7assignvariableop_12_vae_decoder_conv2d_transpose_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_13AssignVariableOp5assignvariableop_13_vae_decoder_conv2d_transpose_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_14AssignVariableOp9assignvariableop_14_vae_decoder_conv2d_transpose_1_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_15AssignVariableOp7assignvariableop_15_vae_decoder_conv2d_transpose_1_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_16AssignVariableOp9assignvariableop_16_vae_decoder_conv2d_transpose_2_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_17AssignVariableOp7assignvariableop_17_vae_decoder_conv2d_transpose_2_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_embeddings_vqvae_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_vae_encoder_conv2d_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_vae_encoder_conv2d_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_vae_encoder_conv2d_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_vae_encoder_conv2d_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_vae_encoder_conv2d_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_vae_encoder_conv2d_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_vae_decoder_conv2d_transpose_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:≠
AssignVariableOp_26AssignVariableOp<assignvariableop_26_adam_vae_decoder_conv2d_transpose_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_vae_decoder_conv2d_transpose_1_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_28AssignVariableOp>assignvariableop_28_adam_vae_decoder_conv2d_transpose_1_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_29AssignVariableOp@assignvariableop_29_adam_vae_decoder_conv2d_transpose_2_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_30AssignVariableOp>assignvariableop_30_adam_vae_decoder_conv2d_transpose_2_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_embeddings_vqvae_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adam_vae_encoder_conv2d_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_33AssignVariableOp2assignvariableop_33_adam_vae_encoder_conv2d_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_vae_encoder_conv2d_1_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_35AssignVariableOp4assignvariableop_35_adam_vae_encoder_conv2d_1_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_vae_encoder_conv2d_2_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_37AssignVariableOp4assignvariableop_37_adam_vae_encoder_conv2d_2_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_38AssignVariableOp>assignvariableop_38_adam_vae_decoder_conv2d_transpose_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:≠
AssignVariableOp_39AssignVariableOp<assignvariableop_39_adam_vae_decoder_conv2d_transpose_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_40AssignVariableOp@assignvariableop_40_adam_vae_decoder_conv2d_transpose_1_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_41AssignVariableOp>assignvariableop_41_adam_vae_decoder_conv2d_transpose_1_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_42AssignVariableOp@assignvariableop_42_adam_vae_decoder_conv2d_transpose_2_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_43AssignVariableOp>assignvariableop_43_adam_vae_decoder_conv2d_transpose_2_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ч
Identity_44Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_45IdentityIdentity_44:output:0^NoOp_1*
T0*
_output_shapes
: Д
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_45Identity_45:output:0*m
_input_shapes\
Z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
«
о
$__inference_signature_wrapper_201396	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@А#
	unknown_6:@@
	unknown_7:@#
	unknown_8: @
	unknown_9: $

unknown_10: 

unknown_11:
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  */
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

  @E8В **
f%R#
!__inference__wrapped_model_201321w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€  : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:€€€€€€€€€  

_user_specified_nameinput
™	
Ш
&__inference_encoder_layer_call_fn_1615
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
identityИҐStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  @*(
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2*0J

  `E8В *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_1593`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€  
!
_user_specified_name	input_1
ќ
¶
1__inference_conv2d_transpose_layer_call_fn_201739

inputs!
unknown: @
	unknown_0: 
identityИҐStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8В *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_201491Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Њ5
÷
A__inference_decoder_layer_call_and_return_conditional_losses_1908	
input3
conv2d_transpose_1_206322:@@'
conv2d_transpose_1_206324:@1
conv2d_transpose_206357: @%
conv2d_transpose_206359: 3
conv2d_transpose_2_206392: '
conv2d_transpose_2_206394:
identityИҐ(conv2d_transpose/StatefulPartitionedCallҐ*conv2d_transpose_1/StatefulPartitionedCallҐ*conv2d_transpose_2/StatefulPartitionedCallҐEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpҐGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpҐGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp®
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_transpose_1_206322conv2d_transpose_1_206324*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_1191ќ
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_206357conv2d_transpose_206359*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_1846”
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_2_206392conv2d_transpose_2_206394*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *T
fORM
K__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_647•
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_transpose_206357*&
_output_shapes
: @*
dtype0ј
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @О
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             „
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ў
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ©
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_transpose_1_206322*&
_output_shapes
:@@*
dtype0ƒ
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Р
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ©
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_transpose_2_206392*&
_output_shapes
: *
dtype0ƒ
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Р
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: І
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCallF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 К
IdentityIdentity3conv2d_transpose_2/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€  @: : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2О
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:V R
/
_output_shapes
:€€€€€€€€€  @

_user_specified_nameinput
И)
й
I__inference_vector_quantizer_layer_call_and_return_conditional_losses_729
x1
matmul_readvariableop_resource:	@А
identity

identity_1ИҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOp6
ShapeShapex*
T0*
_output_shapes
:^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   _
ReshapeReshapexReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0t
MatMulMatMulReshape:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АJ
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @^
powPowReshape:output:0pow/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :v
SumSumpow:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
	keep_dims(n
ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @`
pow_1PowReadVariableOp:value:0pow_1/y:output:0*
T0*
_output_shapes
:	@АY
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : _
Sum_1Sum	pow_1:z:0 Sum_1/reduction_indices:output:0*
T0*
_output_shapes	
:А]
addAddV2Sum:output:0Sum_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @_
mulMulmul/x:output:0MatMul:product:0*
T0*(
_output_shapes
:€€€€€€€€€АO
subSubadd:z:0mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€АR
ArgMin/dimensionConst*
_output_shapes
: *
dtype0*
value	B :b
ArgMinArgMinsub:z:0ArgMin/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€U
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    P
one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :А§
one_hotOneHotArgMin:output:0one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
MatMul_1/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0К
MatMul_1MatMulone_hot:output:0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@*
transpose_b(r
	Reshape_1ReshapeMatMul_1:product:0Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @j
StopGradientStopGradientReshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @`
sub_1SubStopGradient:output:0x*
T0*/
_output_shapes
:€€€€€€€€€  @L
pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_2Pow	sub_1:z:0pow_2/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             H
MeanMean	pow_2:z:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А>N
mul_1Mulmul_1/x:output:0Mean:output:0*
T0*
_output_shapes
: [
StopGradient_1StopGradientx*
T0*/
_output_shapes
:€€€€€€€€€  @s
sub_2SubReshape_1:output:0StopGradient_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @L
pow_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_3Pow	sub_2:z:0pow_3/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @`
Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             L
Mean_1Mean	pow_3:z:0Const_1:output:0*
T0*
_output_shapes
: K
add_1AddV2	mul_1:z:0Mean_1:output:0*
T0*
_output_shapes
: ]
sub_3SubReshape_1:output:0x*
T0*/
_output_shapes
:€€€€€€€€€  @c
StopGradient_2StopGradient	sub_3:z:0*
T0*/
_output_shapes
:€€€€€€€€€  @d
add_2AddV2xStopGradient_2:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @Й
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 `
IdentityIdentity	add_2:z:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  @I

Identity_1Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€  @: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:R N
/
_output_shapes
:€€€€€€€€€  @

_user_specified_namex
П"
я
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_1846

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpҐEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B : I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : Й
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0 
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0З
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   ґ
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0ј
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @О
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             „
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ў
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: …
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2О
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  @
 
_user_specified_nameinputs
µ

І
__inference_loss_fn_4_201701K
1kernel_regularizer_square_readvariableop_resource:@@
identityИҐ(kernel/Regularizer/Square/ReadVariableOpҐ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ж
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             А
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8В
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
н(
ƒ
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_201491

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpҐ(kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ Щ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0Ж
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             А
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8В
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ХT
“
=__inference_vae_layer_call_and_return_conditional_losses_1977
input_1(
encoder_206652: 
encoder_206654: (
encoder_206656: @
encoder_206658:@(
encoder_206660:@@
encoder_206662:@*
vector_quantizer_206665:	@А(
decoder_206669:@@
decoder_206671:@(
decoder_206673: @
decoder_206675: (
decoder_206677: 
decoder_206679:
identity

identity_1ИҐdecoder/StatefulPartitionedCallҐencoder/StatefulPartitionedCallҐEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpҐGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpҐGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpҐ;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpҐ=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpҐ=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpҐ(vector_quantizer/StatefulPartitionedCall∆
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1encoder_206652encoder_206654encoder_206656encoder_206658encoder_206660encoder_206662*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  @*(
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2*0J

  `E8В *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_1593™
(vector_quantizer/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0vector_quantizer_206665*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€  @: *#
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *R
fMRK
I__inference_vector_quantizer_layer_call_and_return_conditional_losses_951р
decoder/StatefulPartitionedCallStatefulPartitionedCall1vector_quantizer/StatefulPartitionedCall:output:0decoder_206669decoder_206671decoder_206673decoder_206675decoder_206677decoder_206679*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *(
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2*0J

  `E8В *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_1908Т
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_206652*&
_output_shapes
: *
dtype0ђ
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Д
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             є
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ї
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ф
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_206656*&
_output_shapes
: @*
dtype0∞
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @Ж
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ф
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_206660*&
_output_shapes
:@@*
dtype0∞
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Ж
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ь
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdecoder_206673*&
_output_shapes
: @*
dtype0ј
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @О
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             „
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ў
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ю
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdecoder_206669*&
_output_shapes
:@@*
dtype0ƒ
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Р
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ю
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdecoder_206677*&
_output_shapes
: *
dtype0ƒ
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Р
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ѕ
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCallF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp)^vector_quantizer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  q

Identity_1Identity1vector_quantizer/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€  : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2О
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2T
(vector_quantizer/StatefulPartitionedCall(vector_quantizer/StatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€  
!
_user_specified_name	input_1
ѓ"
г
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_1191

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpҐGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B : I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@Й
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0 
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:€€€€€€€€€  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0З
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @Є
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0ƒ
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Р
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ћ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  @
 
_user_specified_nameinputs
н(
ƒ
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_201779

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpҐ(kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ Щ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0Ж
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             А
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8В
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
≠"
в
K__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_647

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpҐGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
stack/1Const*
_output_shapes
: *
dtype0*
value	B : I
stack/2Const*
_output_shapes
: *
dtype0*
value	B : I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :Й
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0 
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0З
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  ^
SigmoidSigmoidBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  Є
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0ƒ
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Р
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ћ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 b
IdentityIdentitySigmoid:y:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
†b
э
__inference__traced_save_201989
file_prefix/
+savev2_embeddings_vqvae_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_vae_encoder_conv2d_kernel_read_readvariableop6
2savev2_vae_encoder_conv2d_bias_read_readvariableop:
6savev2_vae_encoder_conv2d_1_kernel_read_readvariableop8
4savev2_vae_encoder_conv2d_1_bias_read_readvariableop:
6savev2_vae_encoder_conv2d_2_kernel_read_readvariableop8
4savev2_vae_encoder_conv2d_2_bias_read_readvariableopB
>savev2_vae_decoder_conv2d_transpose_kernel_read_readvariableop@
<savev2_vae_decoder_conv2d_transpose_bias_read_readvariableopD
@savev2_vae_decoder_conv2d_transpose_1_kernel_read_readvariableopB
>savev2_vae_decoder_conv2d_transpose_1_bias_read_readvariableopD
@savev2_vae_decoder_conv2d_transpose_2_kernel_read_readvariableopB
>savev2_vae_decoder_conv2d_transpose_2_bias_read_readvariableop6
2savev2_adam_embeddings_vqvae_m_read_readvariableop?
;savev2_adam_vae_encoder_conv2d_kernel_m_read_readvariableop=
9savev2_adam_vae_encoder_conv2d_bias_m_read_readvariableopA
=savev2_adam_vae_encoder_conv2d_1_kernel_m_read_readvariableop?
;savev2_adam_vae_encoder_conv2d_1_bias_m_read_readvariableopA
=savev2_adam_vae_encoder_conv2d_2_kernel_m_read_readvariableop?
;savev2_adam_vae_encoder_conv2d_2_bias_m_read_readvariableopI
Esavev2_adam_vae_decoder_conv2d_transpose_kernel_m_read_readvariableopG
Csavev2_adam_vae_decoder_conv2d_transpose_bias_m_read_readvariableopK
Gsavev2_adam_vae_decoder_conv2d_transpose_1_kernel_m_read_readvariableopI
Esavev2_adam_vae_decoder_conv2d_transpose_1_bias_m_read_readvariableopK
Gsavev2_adam_vae_decoder_conv2d_transpose_2_kernel_m_read_readvariableopI
Esavev2_adam_vae_decoder_conv2d_transpose_2_bias_m_read_readvariableop6
2savev2_adam_embeddings_vqvae_v_read_readvariableop?
;savev2_adam_vae_encoder_conv2d_kernel_v_read_readvariableop=
9savev2_adam_vae_encoder_conv2d_bias_v_read_readvariableopA
=savev2_adam_vae_encoder_conv2d_1_kernel_v_read_readvariableop?
;savev2_adam_vae_encoder_conv2d_1_bias_v_read_readvariableopA
=savev2_adam_vae_encoder_conv2d_2_kernel_v_read_readvariableop?
;savev2_adam_vae_encoder_conv2d_2_bias_v_read_readvariableopI
Esavev2_adam_vae_decoder_conv2d_transpose_kernel_v_read_readvariableopG
Csavev2_adam_vae_decoder_conv2d_transpose_bias_v_read_readvariableopK
Gsavev2_adam_vae_decoder_conv2d_transpose_1_kernel_v_read_readvariableopI
Esavev2_adam_vae_decoder_conv2d_transpose_1_bias_v_read_readvariableopK
Gsavev2_adam_vae_decoder_conv2d_transpose_2_kernel_v_read_readvariableopI
Esavev2_adam_vae_decoder_conv2d_transpose_2_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ш
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*Ѕ
valueЈBі-B6vector_quantizer/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEBRvector_quantizer/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRvector_quantizer/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH«
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B љ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_embeddings_vqvae_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_vae_encoder_conv2d_kernel_read_readvariableop2savev2_vae_encoder_conv2d_bias_read_readvariableop6savev2_vae_encoder_conv2d_1_kernel_read_readvariableop4savev2_vae_encoder_conv2d_1_bias_read_readvariableop6savev2_vae_encoder_conv2d_2_kernel_read_readvariableop4savev2_vae_encoder_conv2d_2_bias_read_readvariableop>savev2_vae_decoder_conv2d_transpose_kernel_read_readvariableop<savev2_vae_decoder_conv2d_transpose_bias_read_readvariableop@savev2_vae_decoder_conv2d_transpose_1_kernel_read_readvariableop>savev2_vae_decoder_conv2d_transpose_1_bias_read_readvariableop@savev2_vae_decoder_conv2d_transpose_2_kernel_read_readvariableop>savev2_vae_decoder_conv2d_transpose_2_bias_read_readvariableop2savev2_adam_embeddings_vqvae_m_read_readvariableop;savev2_adam_vae_encoder_conv2d_kernel_m_read_readvariableop9savev2_adam_vae_encoder_conv2d_bias_m_read_readvariableop=savev2_adam_vae_encoder_conv2d_1_kernel_m_read_readvariableop;savev2_adam_vae_encoder_conv2d_1_bias_m_read_readvariableop=savev2_adam_vae_encoder_conv2d_2_kernel_m_read_readvariableop;savev2_adam_vae_encoder_conv2d_2_bias_m_read_readvariableopEsavev2_adam_vae_decoder_conv2d_transpose_kernel_m_read_readvariableopCsavev2_adam_vae_decoder_conv2d_transpose_bias_m_read_readvariableopGsavev2_adam_vae_decoder_conv2d_transpose_1_kernel_m_read_readvariableopEsavev2_adam_vae_decoder_conv2d_transpose_1_bias_m_read_readvariableopGsavev2_adam_vae_decoder_conv2d_transpose_2_kernel_m_read_readvariableopEsavev2_adam_vae_decoder_conv2d_transpose_2_bias_m_read_readvariableop2savev2_adam_embeddings_vqvae_v_read_readvariableop;savev2_adam_vae_encoder_conv2d_kernel_v_read_readvariableop9savev2_adam_vae_encoder_conv2d_bias_v_read_readvariableop=savev2_adam_vae_encoder_conv2d_1_kernel_v_read_readvariableop;savev2_adam_vae_encoder_conv2d_1_bias_v_read_readvariableop=savev2_adam_vae_encoder_conv2d_2_kernel_v_read_readvariableop;savev2_adam_vae_encoder_conv2d_2_bias_v_read_readvariableopEsavev2_adam_vae_decoder_conv2d_transpose_kernel_v_read_readvariableopCsavev2_adam_vae_decoder_conv2d_transpose_bias_v_read_readvariableopGsavev2_adam_vae_decoder_conv2d_transpose_1_kernel_v_read_readvariableopEsavev2_adam_vae_decoder_conv2d_transpose_1_bias_v_read_readvariableopGsavev2_adam_vae_decoder_conv2d_transpose_2_kernel_v_read_readvariableopEsavev2_adam_vae_decoder_conv2d_transpose_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *;
dtypes1
/2-	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ф
_input_shapesв
я: :	@А: : : : : : : : @:@:@@:@: @: :@@:@: ::	@А: : : @:@:@@:@: @: :@@:@: ::	@А: : : @:@:@@:@: @: :@@:@: :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	@А:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,	(
&
_output_shapes
: @: 


_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: :,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
: : 

_output_shapes
::%!

_output_shapes
:	@А:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: :,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
: : 

_output_shapes
::% !

_output_shapes
:	@А:,!(
&
_output_shapes
: : "

_output_shapes
: :,#(
&
_output_shapes
: @: $

_output_shapes
:@:,%(
&
_output_shapes
:@@: &

_output_shapes
:@:,'(
&
_output_shapes
: @: (

_output_shapes
: :,)(
&
_output_shapes
:@@: *

_output_shapes
:@:,+(
&
_output_shapes
: : ,

_output_shapes
::-

_output_shapes
: 
И)
й
I__inference_vector_quantizer_layer_call_and_return_conditional_losses_951
x1
matmul_readvariableop_resource:	@А
identity

identity_1ИҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOp6
ShapeShapex*
T0*
_output_shapes
:^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   _
ReshapeReshapexReshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0t
MatMulMatMulReshape:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АJ
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @^
powPowReshape:output:0pow/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :v
SumSumpow:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
	keep_dims(n
ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @`
pow_1PowReadVariableOp:value:0pow_1/y:output:0*
T0*
_output_shapes
:	@АY
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : _
Sum_1Sum	pow_1:z:0 Sum_1/reduction_indices:output:0*
T0*
_output_shapes	
:А]
addAddV2Sum:output:0Sum_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @_
mulMulmul/x:output:0MatMul:product:0*
T0*(
_output_shapes
:€€€€€€€€€АO
subSubadd:z:0mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€АR
ArgMin/dimensionConst*
_output_shapes
: *
dtype0*
value	B :b
ArgMinArgMinsub:z:0ArgMin/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€U
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    P
one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :А§
one_hotOneHotArgMin:output:0one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
MatMul_1/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0К
MatMul_1MatMulone_hot:output:0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@*
transpose_b(r
	Reshape_1ReshapeMatMul_1:product:0Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @j
StopGradientStopGradientReshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @`
sub_1SubStopGradient:output:0x*
T0*/
_output_shapes
:€€€€€€€€€  @L
pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_2Pow	sub_1:z:0pow_2/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             H
MeanMean	pow_2:z:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А>N
mul_1Mulmul_1/x:output:0Mean:output:0*
T0*
_output_shapes
: [
StopGradient_1StopGradientx*
T0*/
_output_shapes
:€€€€€€€€€  @s
sub_2SubReshape_1:output:0StopGradient_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @L
pow_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_3Pow	sub_2:z:0pow_3/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @`
Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             L
Mean_1Mean	pow_3:z:0Const_1:output:0*
T0*
_output_shapes
: K
add_1AddV2	mul_1:z:0Mean_1:output:0*
T0*
_output_shapes
: ]
sub_3SubReshape_1:output:0x*
T0*/
_output_shapes
:€€€€€€€€€  @c
StopGradient_2StopGradient	sub_3:z:0*
T0*/
_output_shapes
:€€€€€€€€€  @d
add_2AddV2xStopGradient_2:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @Й
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 `
IdentityIdentity	add_2:z:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  @I

Identity_1Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€  @: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:R N
/
_output_shapes
:€€€€€€€€€  @

_user_specified_namex
є)
р
J__inference_vector_quantizer_layer_call_and_return_conditional_losses_1316
input_11
matmul_readvariableop_resource:	@А
identity

identity_1ИҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpҐReadVariableOp<
ShapeShapeinput_1*
T0*
_output_shapes
:^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   e
ReshapeReshapeinput_1Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0t
MatMulMatMulReshape:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АJ
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @^
powPowReshape:output:0pow/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :v
SumSumpow:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
	keep_dims(n
ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @`
pow_1PowReadVariableOp:value:0pow_1/y:output:0*
T0*
_output_shapes
:	@АY
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : _
Sum_1Sum	pow_1:z:0 Sum_1/reduction_indices:output:0*
T0*
_output_shapes	
:А]
addAddV2Sum:output:0Sum_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€АJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @_
mulMulmul/x:output:0MatMul:product:0*
T0*(
_output_shapes
:€€€€€€€€€АO
subSubadd:z:0mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€АR
ArgMin/dimensionConst*
_output_shapes
: *
dtype0*
value	B :b
ArgMinArgMinsub:z:0ArgMin/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€U
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    P
one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :А§
one_hotOneHotArgMin:output:0one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
MatMul_1/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0К
MatMul_1MatMulone_hot:output:0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@*
transpose_b(r
	Reshape_1ReshapeMatMul_1:product:0Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @j
StopGradientStopGradientReshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @f
sub_1SubStopGradient:output:0input_1*
T0*/
_output_shapes
:€€€€€€€€€  @L
pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_2Pow	sub_1:z:0pow_2/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             H
MeanMean	pow_2:z:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А>N
mul_1Mulmul_1/x:output:0Mean:output:0*
T0*
_output_shapes
: a
StopGradient_1StopGradientinput_1*
T0*/
_output_shapes
:€€€€€€€€€  @s
sub_2SubReshape_1:output:0StopGradient_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @L
pow_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_3Pow	sub_2:z:0pow_3/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @`
Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             L
Mean_1Mean	pow_3:z:0Const_1:output:0*
T0*
_output_shapes
: K
add_1AddV2	mul_1:z:0Mean_1:output:0*
T0*
_output_shapes
: c
sub_3SubReshape_1:output:0input_1*
T0*/
_output_shapes
:€€€€€€€€€  @c
StopGradient_2StopGradient	sub_3:z:0*
T0*/
_output_shapes
:€€€€€€€€€  @j
add_2AddV2input_1StopGradient_2:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @Й
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 `
IdentityIdentity	add_2:z:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  @I

Identity_1Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€  @: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:X T
/
_output_shapes
:€€€€€€€€€  @
!
_user_specified_name	input_1
√
~
.__inference_vector_quantizer_layer_call_fn_965
x
unknown:	@А
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallxunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€  @: *#
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *R
fMRK
I__inference_vector_quantizer_layer_call_and_return_conditional_losses_951`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€  @: 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:€€€€€€€€€  @

_user_specified_namex
к
о
"__inference_vae_layer_call_fn_2065
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@А#
	unknown_6:@@
	unknown_7:@#
	unknown_8: @
	unknown_9: $

unknown_10: 

unknown_11:
identityИҐStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€  : */
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

  `E8В *F
fAR?
=__inference_vae_layer_call_and_return_conditional_losses_2046`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€  : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€  
!
_user_specified_name	input_1
§	
Ц
&__inference_encoder_layer_call_fn_1604	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
identityИҐStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  @*(
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2*0J

  `E8В *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_1593`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:€€€€€€€€€  

_user_specified_nameinput
÷
Д
.__inference_vector_quantizer_layer_call_fn_958
input_1
unknown:	@А
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€  @: *#
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *R
fMRK
I__inference_vector_quantizer_layer_call_and_return_conditional_losses_951`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€  @: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€  @
!
_user_specified_name	input_1
Б
ь
!__inference__wrapped_model_201321	
input$

vae_201292: 

vae_201294: $

vae_201296: @

vae_201298:@$

vae_201300:@@

vae_201302:@

vae_201304:	@А$

vae_201306:@@

vae_201308:@$

vae_201310: @

vae_201312: $

vae_201314: 

vae_201316:
identityИҐvae/StatefulPartitionedCallх
vae/StatefulPartitionedCallStatefulPartitionedCallinput
vae_201292
vae_201294
vae_201296
vae_201298
vae_201300
vae_201302
vae_201304
vae_201306
vae_201308
vae_201310
vae_201312
vae_201314
vae_201316*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€  : */
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

  @E8В *2
f-R+
)__inference_restored_function_body_201291{
IdentityIdentity$vae/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  d
NoOpNoOp^vae/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€  : : : : : : : : : : : : : 2:
vae/StatefulPartitionedCallvae/StatefulPartitionedCall:V R
/
_output_shapes
:€€€€€€€€€  

_user_specified_nameinput
÷t
°
A__inference_decoder_layer_call_and_return_conditional_losses_1047	
inputU
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@@@
2conv2d_transpose_1_biasadd_readvariableop_resource:@S
9conv2d_transpose_conv2d_transpose_readvariableop_resource: @>
0conv2d_transpose_biasadd_readvariableop_resource: U
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource: @
2conv2d_transpose_2_biasadd_readvariableop_resource:
identityИҐ'conv2d_transpose/BiasAdd/ReadVariableOpҐ0conv2d_transpose/conv2d_transpose/ReadVariableOpҐ)conv2d_transpose_1/BiasAdd/ReadVariableOpҐ2conv2d_transpose_1/conv2d_transpose/ReadVariableOpҐ)conv2d_transpose_2/BiasAdd/ReadVariableOpҐ2conv2d_transpose_2/conv2d_transpose/ReadVariableOpҐEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpҐGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpҐGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpM
conv2d_transpose_1/ShapeShapeinput*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∞
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@и
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskґ
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0В
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0input*
T0*/
_output_shapes
:€€€€€€€€€  @*
paddingSAME*
strides
Ш
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ј
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @~
conv2d_transpose_1/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @k
conv2d_transpose/ShapeShape%conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¶
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B : Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ё
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask≤
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0Ь
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_1/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
Ф
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ї
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   z
conv2d_transpose/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   k
conv2d_transpose_2/ShapeShape#conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∞
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :и
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskґ
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0†
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0#conv2d_transpose/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
Ш
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ј
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  Д
conv2d_transpose_2/SigmoidSigmoid#conv2d_transpose_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  «
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0ј
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @О
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             „
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ў
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ћ
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0ƒ
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Р
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ћ
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0ƒ
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Р
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ѕ
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOpF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 u
IdentityIdentityconv2d_transpose_2/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€  @: : : : : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2О
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:V R
/
_output_shapes
:€€€€€€€€€  @

_user_specified_nameinput
С/
ё
A__inference_encoder_layer_call_and_return_conditional_losses_1593	
input'
conv2d_205843: 
conv2d_205845: )
conv2d_1_205866: @
conv2d_1_205868:@)
conv2d_2_205889:@@
conv2d_2_205891:@
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpҐ=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpҐ=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpч
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_205843conv2d_205845*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *H
fCRA
?__inference_conv2d_layer_call_and_return_conditional_losses_671Ґ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_205866conv2d_1_205868*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1555§
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_205889conv2d_2_205891*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1333С
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_205843*&
_output_shapes
: *
dtype0ђ
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Д
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             є
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ї
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Х
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_1_205866*&
_output_shapes
: @*
dtype0∞
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @Ж
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Х
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_2_205889*&
_output_shapes
:@@*
dtype0∞
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Ж
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: л
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 А
IdentityIdentity)conv2d_2/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€  : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:V R
/
_output_shapes
:€€€€€€€€€  

_user_specified_nameinput
µ

І
__inference_loss_fn_1_201613K
1kernel_regularizer_square_readvariableop_resource: @
identityИҐ(kernel/Regularizer/Square/ReadVariableOpҐ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: @*
dtype0Ж
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             А
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8В
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
о(
∆
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_201679

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpҐ(kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Щ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0Ж
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             А
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8В
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ПT
–
=__inference_vae_layer_call_and_return_conditional_losses_2046	
input(
encoder_206519: 
encoder_206521: (
encoder_206523: @
encoder_206525:@(
encoder_206527:@@
encoder_206529:@*
vector_quantizer_206532:	@А(
decoder_206536:@@
decoder_206538:@(
decoder_206540: @
decoder_206542: (
decoder_206544: 
decoder_206546:
identity

identity_1ИҐdecoder/StatefulPartitionedCallҐencoder/StatefulPartitionedCallҐEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpҐGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpҐGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpҐ;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpҐ=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpҐ=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpҐ(vector_quantizer/StatefulPartitionedCallƒ
encoder/StatefulPartitionedCallStatefulPartitionedCallinputencoder_206519encoder_206521encoder_206523encoder_206525encoder_206527encoder_206529*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  @*(
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2*0J

  `E8В *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_1593™
(vector_quantizer/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0vector_quantizer_206532*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€  @: *#
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *R
fMRK
I__inference_vector_quantizer_layer_call_and_return_conditional_losses_951р
decoder/StatefulPartitionedCallStatefulPartitionedCall1vector_quantizer/StatefulPartitionedCall:output:0decoder_206536decoder_206538decoder_206540decoder_206542decoder_206544decoder_206546*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *(
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2*0J

  `E8В *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_1908Т
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_206519*&
_output_shapes
: *
dtype0ђ
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Д
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             є
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ї
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ф
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_206523*&
_output_shapes
: @*
dtype0∞
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @Ж
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ф
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_206527*&
_output_shapes
:@@*
dtype0∞
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Ж
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ь
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdecoder_206540*&
_output_shapes
: @*
dtype0ј
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @О
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             „
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ў
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ю
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdecoder_206536*&
_output_shapes
:@@*
dtype0ƒ
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Р
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ю
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdecoder_206544*&
_output_shapes
: *
dtype0ƒ
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Р
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ѕ
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCallF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp)^vector_quantizer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  q

Identity_1Identity1vector_quantizer/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€  : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2О
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2T
(vector_quantizer/StatefulPartitionedCall(vector_quantizer/StatefulPartitionedCall:V R
/
_output_shapes
:€€€€€€€€€  

_user_specified_nameinput
я
ї
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1333

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpҐ=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @§
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0∞
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Ж
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ј
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  @
 
_user_specified_nameinputs
о(
∆
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_201440

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpҐ(kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€Щ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0Ж
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             А
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8В
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
§	
Ц
&__inference_decoder_layer_call_fn_1919	
input!
unknown:@@
	unknown_0:@#
	unknown_1: @
	unknown_2: #
	unknown_3: 
	unknown_4:
identityИҐStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *(
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2*0J

  `E8В *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_1908`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€  @: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:€€€€€€€€€  @

_user_specified_nameinput
“
®
3__inference_conv2d_transpose_2_layer_call_fn_201639

inputs!
unknown: 
	unknown_0:
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8В *W
fRRP
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_201440Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Њ
ґ
?__inference_conv2d_layer_call_and_return_conditional_losses_671

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpҐ;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   Ґ
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ђ
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Д
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             є
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ї
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: µ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€   "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
Чп
Ч
=__inference_vae_layer_call_and_return_conditional_losses_1538	
inputG
-encoder_conv2d_conv2d_readvariableop_resource: <
.encoder_conv2d_biasadd_readvariableop_resource: I
/encoder_conv2d_1_conv2d_readvariableop_resource: @>
0encoder_conv2d_1_biasadd_readvariableop_resource:@I
/encoder_conv2d_2_conv2d_readvariableop_resource:@@>
0encoder_conv2d_2_biasadd_readvariableop_resource:@B
/vector_quantizer_matmul_readvariableop_resource:	@А]
Cdecoder_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@@H
:decoder_conv2d_transpose_1_biasadd_readvariableop_resource:@[
Adecoder_conv2d_transpose_conv2d_transpose_readvariableop_resource: @F
8decoder_conv2d_transpose_biasadd_readvariableop_resource: ]
Cdecoder_conv2d_transpose_2_conv2d_transpose_readvariableop_resource: H
:decoder_conv2d_transpose_2_biasadd_readvariableop_resource:
identity

identity_1ИҐ/decoder/conv2d_transpose/BiasAdd/ReadVariableOpҐ8decoder/conv2d_transpose/conv2d_transpose/ReadVariableOpҐ1decoder/conv2d_transpose_1/BiasAdd/ReadVariableOpҐ:decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOpҐ1decoder/conv2d_transpose_2/BiasAdd/ReadVariableOpҐ:decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOpҐ%encoder/conv2d/BiasAdd/ReadVariableOpҐ$encoder/conv2d/Conv2D/ReadVariableOpҐ'encoder/conv2d_1/BiasAdd/ReadVariableOpҐ&encoder/conv2d_1/Conv2D/ReadVariableOpҐ'encoder/conv2d_2/BiasAdd/ReadVariableOpҐ&encoder/conv2d_2/Conv2D/ReadVariableOpҐEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpҐGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpҐGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpҐ;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpҐ=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpҐ=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpҐ&vector_quantizer/MatMul/ReadVariableOpҐ(vector_quantizer/MatMul_1/ReadVariableOpҐvector_quantizer/ReadVariableOpЪ
$encoder/conv2d/Conv2D/ReadVariableOpReadVariableOp-encoder_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ґ
encoder/conv2d/Conv2DConv2Dinput,encoder/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
Р
%encoder/conv2d/BiasAdd/ReadVariableOpReadVariableOp.encoder_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0™
encoder/conv2d/BiasAddBiasAddencoder/conv2d/Conv2D:output:0-encoder/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   v
encoder/conv2d/ReluReluencoder/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   Ю
&encoder/conv2d_1/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0÷
encoder/conv2d_1/Conv2DConv2D!encoder/conv2d/Relu:activations:0.encoder/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @*
paddingSAME*
strides
Ф
'encoder/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0∞
encoder/conv2d_1/BiasAddBiasAdd encoder/conv2d_1/Conv2D:output:0/encoder/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @z
encoder/conv2d_1/ReluRelu!encoder/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @Ю
&encoder/conv2d_2/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ў
encoder/conv2d_2/Conv2DConv2D#encoder/conv2d_1/Relu:activations:0.encoder/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @*
paddingSAME*
strides
Ф
'encoder/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp0encoder_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0∞
encoder/conv2d_2/BiasAddBiasAdd encoder/conv2d_2/Conv2D:output:0/encoder/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @z
encoder/conv2d_2/ReluRelu!encoder/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @i
vector_quantizer/ShapeShape#encoder/conv2d_2/Relu:activations:0*
T0*
_output_shapes
:o
vector_quantizer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   £
vector_quantizer/ReshapeReshape#encoder/conv2d_2/Relu:activations:0'vector_quantizer/Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Ч
&vector_quantizer/MatMul/ReadVariableOpReadVariableOp/vector_quantizer_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0І
vector_quantizer/MatMulMatMul!vector_quantizer/Reshape:output:0.vector_quantizer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
vector_quantizer/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @С
vector_quantizer/powPow!vector_quantizer/Reshape:output:0vector_quantizer/pow/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@h
&vector_quantizer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :©
vector_quantizer/SumSumvector_quantizer/pow:z:0/vector_quantizer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
	keep_dims(Р
vector_quantizer/ReadVariableOpReadVariableOp/vector_quantizer_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0]
vector_quantizer/pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @У
vector_quantizer/pow_1Pow'vector_quantizer/ReadVariableOp:value:0!vector_quantizer/pow_1/y:output:0*
T0*
_output_shapes
:	@Аj
(vector_quantizer/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : Т
vector_quantizer/Sum_1Sumvector_quantizer/pow_1:z:01vector_quantizer/Sum_1/reduction_indices:output:0*
T0*
_output_shapes	
:АР
vector_quantizer/addAddV2vector_quantizer/Sum:output:0vector_quantizer/Sum_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€А[
vector_quantizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @Т
vector_quantizer/mulMulvector_quantizer/mul/x:output:0!vector_quantizer/MatMul:product:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
vector_quantizer/subSubvector_quantizer/add:z:0vector_quantizer/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
!vector_quantizer/ArgMin/dimensionConst*
_output_shapes
: *
dtype0*
value	B :Х
vector_quantizer/ArgMinArgMinvector_quantizer/sub:z:0*vector_quantizer/ArgMin/dimension:output:0*
T0*#
_output_shapes
:€€€€€€€€€f
!vector_quantizer/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
"vector_quantizer/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    a
vector_quantizer/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :Ащ
vector_quantizer/one_hotOneHot vector_quantizer/ArgMin:output:0'vector_quantizer/one_hot/depth:output:0*vector_quantizer/one_hot/on_value:output:0+vector_quantizer/one_hot/off_value:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЩ
(vector_quantizer/MatMul_1/ReadVariableOpReadVariableOp/vector_quantizer_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0љ
vector_quantizer/MatMul_1MatMul!vector_quantizer/one_hot:output:00vector_quantizer/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@*
transpose_b(•
vector_quantizer/Reshape_1Reshape#vector_quantizer/MatMul_1:product:0vector_quantizer/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @М
vector_quantizer/StopGradientStopGradient#vector_quantizer/Reshape_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @§
vector_quantizer/sub_1Sub&vector_quantizer/StopGradient:output:0#encoder/conv2d_2/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€  @]
vector_quantizer/pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ц
vector_quantizer/pow_2Powvector_quantizer/sub_1:z:0!vector_quantizer/pow_2/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @o
vector_quantizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             {
vector_quantizer/MeanMeanvector_quantizer/pow_2:z:0vector_quantizer/Const:output:0*
T0*
_output_shapes
: ]
vector_quantizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А>Б
vector_quantizer/mul_1Mul!vector_quantizer/mul_1/x:output:0vector_quantizer/Mean:output:0*
T0*
_output_shapes
: О
vector_quantizer/StopGradient_1StopGradient#encoder/conv2d_2/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€  @¶
vector_quantizer/sub_2Sub#vector_quantizer/Reshape_1:output:0(vector_quantizer/StopGradient_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @]
vector_quantizer/pow_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ц
vector_quantizer/pow_3Powvector_quantizer/sub_2:z:0!vector_quantizer/pow_3/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @q
vector_quantizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
vector_quantizer/Mean_1Meanvector_quantizer/pow_3:z:0!vector_quantizer/Const_1:output:0*
T0*
_output_shapes
: ~
vector_quantizer/add_1AddV2vector_quantizer/mul_1:z:0 vector_quantizer/Mean_1:output:0*
T0*
_output_shapes
: °
vector_quantizer/sub_3Sub#vector_quantizer/Reshape_1:output:0#encoder/conv2d_2/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€  @Е
vector_quantizer/StopGradient_2StopGradientvector_quantizer/sub_3:z:0*
T0*/
_output_shapes
:€€€€€€€€€  @®
vector_quantizer/add_2AddV2#encoder/conv2d_2/Relu:activations:0(vector_quantizer/StopGradient_2:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @j
 decoder/conv2d_transpose_1/ShapeShapevector_quantizer/add_2:z:0*
T0*
_output_shapes
:x
.decoder/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0decoder/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0decoder/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(decoder/conv2d_transpose_1/strided_sliceStridedSlice)decoder/conv2d_transpose_1/Shape:output:07decoder/conv2d_transpose_1/strided_slice/stack:output:09decoder/conv2d_transpose_1/strided_slice/stack_1:output:09decoder/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"decoder/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : d
"decoder/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : d
"decoder/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@Р
 decoder/conv2d_transpose_1/stackPack1decoder/conv2d_transpose_1/strided_slice:output:0+decoder/conv2d_transpose_1/stack/1:output:0+decoder/conv2d_transpose_1/stack/2:output:0+decoder/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:z
0decoder/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2decoder/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2decoder/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
*decoder/conv2d_transpose_1/strided_slice_1StridedSlice)decoder/conv2d_transpose_1/stack:output:09decoder/conv2d_transpose_1/strided_slice_1/stack:output:0;decoder/conv2d_transpose_1/strided_slice_1/stack_1:output:0;decoder/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask∆
:decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpCdecoder_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0ѓ
+decoder/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput)decoder/conv2d_transpose_1/stack:output:0Bdecoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0vector_quantizer/add_2:z:0*
T0*/
_output_shapes
:€€€€€€€€€  @*
paddingSAME*
strides
®
1decoder/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp:decoder_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ў
"decoder/conv2d_transpose_1/BiasAddBiasAdd4decoder/conv2d_transpose_1/conv2d_transpose:output:09decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @О
decoder/conv2d_transpose_1/ReluRelu+decoder/conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @{
decoder/conv2d_transpose/ShapeShape-decoder/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:v
,decoder/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.decoder/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.decoder/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
&decoder/conv2d_transpose/strided_sliceStridedSlice'decoder/conv2d_transpose/Shape:output:05decoder/conv2d_transpose/strided_slice/stack:output:07decoder/conv2d_transpose/strided_slice/stack_1:output:07decoder/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 decoder/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B : b
 decoder/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : b
 decoder/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B : Ж
decoder/conv2d_transpose/stackPack/decoder/conv2d_transpose/strided_slice:output:0)decoder/conv2d_transpose/stack/1:output:0)decoder/conv2d_transpose/stack/2:output:0)decoder/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:x
.decoder/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0decoder/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0decoder/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
(decoder/conv2d_transpose/strided_slice_1StridedSlice'decoder/conv2d_transpose/stack:output:07decoder/conv2d_transpose/strided_slice_1/stack:output:09decoder/conv2d_transpose/strided_slice_1/stack_1:output:09decoder/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¬
8decoder/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpAdecoder_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0Љ
)decoder/conv2d_transpose/conv2d_transposeConv2DBackpropInput'decoder/conv2d_transpose/stack:output:0@decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0-decoder/conv2d_transpose_1/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
§
/decoder/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp8decoder_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0“
 decoder/conv2d_transpose/BiasAddBiasAdd2decoder/conv2d_transpose/conv2d_transpose:output:07decoder/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   К
decoder/conv2d_transpose/ReluRelu)decoder/conv2d_transpose/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   {
 decoder/conv2d_transpose_2/ShapeShape+decoder/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:x
.decoder/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0decoder/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0decoder/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(decoder/conv2d_transpose_2/strided_sliceStridedSlice)decoder/conv2d_transpose_2/Shape:output:07decoder/conv2d_transpose_2/strided_slice/stack:output:09decoder/conv2d_transpose_2/strided_slice/stack_1:output:09decoder/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"decoder/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : d
"decoder/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : d
"decoder/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Р
 decoder/conv2d_transpose_2/stackPack1decoder/conv2d_transpose_2/strided_slice:output:0+decoder/conv2d_transpose_2/stack/1:output:0+decoder/conv2d_transpose_2/stack/2:output:0+decoder/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:z
0decoder/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2decoder/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2decoder/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
*decoder/conv2d_transpose_2/strided_slice_1StridedSlice)decoder/conv2d_transpose_2/stack:output:09decoder/conv2d_transpose_2/strided_slice_1/stack:output:0;decoder/conv2d_transpose_2/strided_slice_1/stack_1:output:0;decoder/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask∆
:decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpCdecoder_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0ј
+decoder/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput)decoder/conv2d_transpose_2/stack:output:0Bdecoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0+decoder/conv2d_transpose/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
®
1decoder/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp:decoder_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ў
"decoder/conv2d_transpose_2/BiasAddBiasAdd4decoder/conv2d_transpose_2/conv2d_transpose:output:09decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  Ф
"decoder/conv2d_transpose_2/SigmoidSigmoid+decoder/conv2d_transpose_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  ±
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOp-encoder_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ђ
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Д
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             є
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ї
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: µ
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp/encoder_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0∞
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @Ж
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: µ
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp/encoder_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0∞
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Ж
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ѕ
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAdecoder_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0ј
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @О
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             „
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ў
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ”
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCdecoder_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0ƒ
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Р
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ”
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpCdecoder_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0ƒ
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Р
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ъ	
NoOpNoOp0^decoder/conv2d_transpose/BiasAdd/ReadVariableOp9^decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp2^decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp;^decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2^decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp;^decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp&^encoder/conv2d/BiasAdd/ReadVariableOp%^encoder/conv2d/Conv2D/ReadVariableOp(^encoder/conv2d_1/BiasAdd/ReadVariableOp'^encoder/conv2d_1/Conv2D/ReadVariableOp(^encoder/conv2d_2/BiasAdd/ReadVariableOp'^encoder/conv2d_2/Conv2D/ReadVariableOpF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp'^vector_quantizer/MatMul/ReadVariableOp)^vector_quantizer/MatMul_1/ReadVariableOp ^vector_quantizer/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 }
IdentityIdentity&decoder/conv2d_transpose_2/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  Z

Identity_1Identityvector_quantizer/add_1:z:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€  : : : : : : : : : : : : : 2b
/decoder/conv2d_transpose/BiasAdd/ReadVariableOp/decoder/conv2d_transpose/BiasAdd/ReadVariableOp2t
8decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp8decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp2f
1decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp1decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp2x
:decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2f
1decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp1decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp2x
:decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2N
%encoder/conv2d/BiasAdd/ReadVariableOp%encoder/conv2d/BiasAdd/ReadVariableOp2L
$encoder/conv2d/Conv2D/ReadVariableOp$encoder/conv2d/Conv2D/ReadVariableOp2R
'encoder/conv2d_1/BiasAdd/ReadVariableOp'encoder/conv2d_1/BiasAdd/ReadVariableOp2P
&encoder/conv2d_1/Conv2D/ReadVariableOp&encoder/conv2d_1/Conv2D/ReadVariableOp2R
'encoder/conv2d_2/BiasAdd/ReadVariableOp'encoder/conv2d_2/BiasAdd/ReadVariableOp2P
&encoder/conv2d_2/Conv2D/ReadVariableOp&encoder/conv2d_2/Conv2D/ReadVariableOp2О
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp2P
&vector_quantizer/MatMul/ReadVariableOp&vector_quantizer/MatMul/ReadVariableOp2T
(vector_quantizer/MatMul_1/ReadVariableOp(vector_quantizer/MatMul_1/ReadVariableOp2B
vector_quantizer/ReadVariableOpvector_quantizer/ReadVariableOp:V R
/
_output_shapes
:€€€€€€€€€  

_user_specified_nameinput
д
м
"__inference_vae_layer_call_fn_2084	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@А#
	unknown_6:@@
	unknown_7:@#
	unknown_8: @
	unknown_9: $

unknown_10: 

unknown_11:
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€  : */
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

  `E8В *F
fAR?
=__inference_vae_layer_call_and_return_conditional_losses_2046`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€  : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:€€€€€€€€€  

_user_specified_nameinput
З;
ѕ
A__inference_encoder_layer_call_and_return_conditional_losses_1151	
input?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@A
'conv2d_2_conv2d_readvariableop_resource:@@6
(conv2d_2_biasadd_readvariableop_resource:@
identityИҐconv2d/BiasAdd/ReadVariableOpҐconv2d/Conv2D/ReadVariableOpҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐ;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpҐ=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpҐ=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpК
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¶
conv2d/Conv2DConv2Dinput$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
А
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Т
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   f
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Њ
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @*
paddingSAME*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @О
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ј
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @*
paddingSAME*
strides
Д
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @©
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ђ
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Д
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             є
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ї
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ≠
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0∞
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @Ж
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ≠
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0∞
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Ж
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: …
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 r
IdentityIdentityconv2d_2/Relu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€  : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:V R
/
_output_shapes
:€€€€€€€€€  

_user_specified_nameinput
я
ї
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1555

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpҐ=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  @§
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0∞
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @Ж
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ј
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€   
 
_user_specified_nameinputs
Ч/
а
A__inference_encoder_layer_call_and_return_conditional_losses_1646
input_1'
conv2d_205978: 
conv2d_205980: )
conv2d_1_205983: @
conv2d_1_205985:@)
conv2d_2_205988:@@
conv2d_2_205990:@
identityИҐconv2d/StatefulPartitionedCallҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpҐ=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpҐ=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpщ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_205978conv2d_205980*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *H
fCRA
?__inference_conv2d_layer_call_and_return_conditional_losses_671Ґ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_205983conv2d_1_205985*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1555§
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_205988conv2d_2_205990*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1333С
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_205978*&
_output_shapes
: *
dtype0ђ
,vae/encoder/conv2d/kernel/Regularizer/SquareSquareCvae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Д
+vae/encoder/conv2d/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             є
)vae/encoder/conv2d/kernel/Regularizer/SumSum0vae/encoder/conv2d/kernel/Regularizer/Square:y:04vae/encoder/conv2d/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ї
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:02vae/encoder/conv2d/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Х
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_1_205983*&
_output_shapes
: @*
dtype0∞
.vae/encoder/conv2d_1/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @Ж
-vae/encoder/conv2d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_1/kernel/Regularizer/SumSum2vae/encoder/conv2d_1/kernel/Regularizer/Square:y:06vae/encoder/conv2d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Х
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_2_205988*&
_output_shapes
:@@*
dtype0∞
.vae/encoder/conv2d_2/kernel/Regularizer/SquareSquareEvae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Ж
-vae/encoder/conv2d_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             њ
+vae/encoder/conv2d_2/kernel/Regularizer/SumSum2vae/encoder/conv2d_2/kernel/Regularizer/Square:y:06vae/encoder/conv2d_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8Ѕ
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:04vae/encoder/conv2d_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: л
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall<^vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 А
IdentityIdentity)conv2d_2/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€  : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2z
;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/Square/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/Square/ReadVariableOp:X T
/
_output_shapes
:€€€€€€€€€  
!
_user_specified_name	input_1
™	
Ш
&__inference_decoder_layer_call_fn_1988
input_1!
unknown:@@
	unknown_0:@#
	unknown_1: @
	unknown_2: #
	unknown_3: 
	unknown_4:
identityИҐStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *(
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2*0J

  `E8В *J
fERC
A__inference_decoder_layer_call_and_return_conditional_losses_1908`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€  @: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€  @
!
_user_specified_name	input_1
µ

І
__inference_loss_fn_0_201602K
1kernel_regularizer_square_readvariableop_resource: 
identityИҐ(kernel/Regularizer/Square/ReadVariableOpҐ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: *
dtype0Ж
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             А
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8В
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
µ

І
__inference_loss_fn_3_201690K
1kernel_regularizer_square_readvariableop_resource: @
identityИҐ(kernel/Regularizer/Square/ReadVariableOpҐ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: @*
dtype0Ж
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             А
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8В
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
“
®
3__inference_conv2d_transpose_1_layer_call_fn_201794

inputs!
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8В *W
fRRP
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_201542Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
µ

І
__inference_loss_fn_2_201624K
1kernel_regularizer_square_readvariableop_resource:@@
identityИҐ(kernel/Regularizer/Square/ReadVariableOpҐ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ж
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             А
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8В
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
ƒ5
Ў
A__inference_decoder_layer_call_and_return_conditional_losses_1877
input_13
conv2d_transpose_1_206478:@@'
conv2d_transpose_1_206480:@1
conv2d_transpose_206483: @%
conv2d_transpose_206485: 3
conv2d_transpose_2_206488: '
conv2d_transpose_2_206490:
identityИҐ(conv2d_transpose/StatefulPartitionedCallҐ*conv2d_transpose_1/StatefulPartitionedCallҐ*conv2d_transpose_2/StatefulPartitionedCallҐEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpҐGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpҐGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp™
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_transpose_1_206478conv2d_transpose_1_206480*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  @*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *U
fPRN
L__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_1191ќ
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_206483conv2d_transpose_206485*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *S
fNRL
J__inference_conv2d_transpose_layer_call_and_return_conditional_losses_1846”
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_2_206488conv2d_transpose_2_206490*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  `E8В *T
fORM
K__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_647•
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_transpose_206483*&
_output_shapes
: @*
dtype0ј
6vae/decoder/conv2d_transpose/kernel/Regularizer/SquareSquareMvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @О
5vae/decoder/conv2d_transpose/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             „
3vae/decoder/conv2d_transpose/kernel/Regularizer/SumSum:vae/decoder/conv2d_transpose/kernel/Regularizer/Square:y:0>vae/decoder/conv2d_transpose/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8ў
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0<vae/decoder/conv2d_transpose/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ©
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_transpose_1_206478*&
_output_shapes
:@@*
dtype0ƒ
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@Р
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ©
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_transpose_2_206488*&
_output_shapes
: *
dtype0ƒ
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/SquareSquareOvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: Р
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ё
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/SumSum<vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square:y:0@vae/decoder/conv2d_transpose_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8я
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0>vae/decoder/conv2d_transpose_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: І
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCallF^vae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 К
IdentityIdentity3conv2d_transpose_2/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€  @: : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2О
Evae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/Square/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/Square/ReadVariableOp2Т
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/Square/ReadVariableOp:X T
/
_output_shapes
:€€€€€€€€€  @
!
_user_specified_name	input_1
µ

І
__inference_loss_fn_5_201712K
1kernel_regularizer_square_readvariableop_resource: 
identityИҐ(kernel/Regularizer/Square/ReadVariableOpҐ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: *
dtype0Ж
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             А
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8В
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentitykernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: q
NoOpNoOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
п(
∆
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_201542

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpҐ(kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@Щ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ж
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             А
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8В
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
п(
∆
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_201834

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpҐ(kernel/Regularizer/Square/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@Щ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ж
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@q
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             А
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: ]
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ј—8В
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@ђ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs"ВL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ј
serving_default£
?
input6
serving_default_input:0€€€€€€€€€  D
output_18
StatefulPartitionedCall:0€€€€€€€€€  tensorflow/serving/predict:№≤
√
encoder
vector_quantizer
decoder
	optimizer
loss

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
Я__call__
+†&call_and_return_all_conditional_losses
°_default_save_signature"
_tf_keras_model
м

layer_dict

latent_dim
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Ґ__call__
+£&call_and_return_all_conditional_losses"
_tf_keras_model
№

embeddings
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
§__call__
+•&call_and_return_all_conditional_losses"
_tf_keras_model
о

layer_dict
output_layer
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
¶__call__
+І&call_and_return_all_conditional_losses"
_tf_keras_model
„
 iter

!beta_1

"beta_2
	#decay
$learning_ratemЕ%mЖ&mЗ'mИ(mЙ)mК*mЛ+mМ,mН-mО.mП/mР0mСvТ%vУ&vФ'vХ(vЦ)vЧ*vШ+vЩ,vЪ-vЫ.vЬ/vЭ0vЮ"
	optimizer
 "
trackable_dict_wrapper
-
®serving_default"
signature_map
 "
trackable_dict_wrapper
~
%0
&1
'2
(3
)4
*5
6
+7
,8
-9
.10
/11
012"
trackable_list_wrapper
~
%0
&1
'2
(3
)4
*5
6
+7
,8
-9
.10
/11
012"
trackable_list_wrapper
 "
trackable_list_wrapper
ќ
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
	trainable_variables

regularization_losses
Я__call__
°_default_save_signature
+†&call_and_return_all_conditional_losses
'†"call_and_return_conditional_losses"
_generic_user_object
:
6layer_1
7layer_2"
trackable_dict_wrapper
в

)kernel
*bias
#8_self_saveable_object_factories
9	variables
:trainable_variables
;regularization_losses
<	keras_api
©__call__
+™&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_dict_wrapper
J
%0
&1
'2
(3
)4
*5"
trackable_list_wrapper
J
%0
&1
'2
(3
)4
*5"
trackable_list_wrapper
8
Ђ0
ђ1
≠2"
trackable_list_wrapper
∞
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
Ґ__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
#:!	@А2embeddings_vqvae
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
§__call__
+•&call_and_return_all_conditional_losses
'•"call_and_return_conditional_losses"
_generic_user_object
:
Glayer_1
Hlayer_2"
trackable_dict_wrapper
в

/kernel
0bias
#I_self_saveable_object_factories
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
Ѓ__call__
+ѓ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_dict_wrapper
J
+0
,1
-2
.3
/4
05"
trackable_list_wrapper
J
+0
,1
-2
.3
/4
05"
trackable_list_wrapper
8
∞0
±1
≤2"
trackable_list_wrapper
∞
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
¶__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
3:1 2vae/encoder/conv2d/kernel
%:# 2vae/encoder/conv2d/bias
5:3 @2vae/encoder/conv2d_1/kernel
':%@2vae/encoder/conv2d_1/bias
5:3@@2vae/encoder/conv2d_2/kernel
':%@2vae/encoder/conv2d_2/bias
=:; @2#vae/decoder/conv2d_transpose/kernel
/:- 2!vae/decoder/conv2d_transpose/bias
?:=@@2%vae/decoder/conv2d_transpose_1/kernel
1:/@2#vae/decoder/conv2d_transpose_1/bias
?:= 2%vae/decoder/conv2d_transpose_2/kernel
1:/2#vae/decoder/conv2d_transpose_2/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
в

%kernel
&bias
#S_self_saveable_object_factories
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
≥__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_layer
в

'kernel
(bias
#X_self_saveable_object_factories
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
µ__call__
+ґ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_dict_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
(
≠0"
trackable_list_wrapper
∞
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
9	variables
:trainable_variables
;regularization_losses
©__call__
+™&call_and_return_all_conditional_losses
'™"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5
60
71
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
в

+kernel
,bias
#b_self_saveable_object_factories
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
Ј__call__
+Є&call_and_return_all_conditional_losses"
_tf_keras_layer
в

-kernel
.bias
#g_self_saveable_object_factories
h	variables
itrainable_variables
jregularization_losses
k	keras_api
є__call__
+Ї&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_dict_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
(
≤0"
trackable_list_wrapper
∞
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
J	variables
Ktrainable_variables
Lregularization_losses
Ѓ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5
G0
H1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
(
Ђ0"
trackable_list_wrapper
∞
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
(
ђ0"
trackable_list_wrapper
∞
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
µ__call__
+ґ&call_and_return_all_conditional_losses
'ґ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
≠0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
(
∞0"
trackable_list_wrapper
∞
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
c	variables
dtrainable_variables
eregularization_losses
Ј__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
(
±0"
trackable_list_wrapper
µ
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
h	variables
itrainable_variables
jregularization_losses
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
≤0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Ђ0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
ђ0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
∞0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
±0"
trackable_list_wrapper
 "
trackable_dict_wrapper
(:&	@А2Adam/embeddings_vqvae/m
8:6 2 Adam/vae/encoder/conv2d/kernel/m
*:( 2Adam/vae/encoder/conv2d/bias/m
::8 @2"Adam/vae/encoder/conv2d_1/kernel/m
,:*@2 Adam/vae/encoder/conv2d_1/bias/m
::8@@2"Adam/vae/encoder/conv2d_2/kernel/m
,:*@2 Adam/vae/encoder/conv2d_2/bias/m
B:@ @2*Adam/vae/decoder/conv2d_transpose/kernel/m
4:2 2(Adam/vae/decoder/conv2d_transpose/bias/m
D:B@@2,Adam/vae/decoder/conv2d_transpose_1/kernel/m
6:4@2*Adam/vae/decoder/conv2d_transpose_1/bias/m
D:B 2,Adam/vae/decoder/conv2d_transpose_2/kernel/m
6:42*Adam/vae/decoder/conv2d_transpose_2/bias/m
(:&	@А2Adam/embeddings_vqvae/v
8:6 2 Adam/vae/encoder/conv2d/kernel/v
*:( 2Adam/vae/encoder/conv2d/bias/v
::8 @2"Adam/vae/encoder/conv2d_1/kernel/v
,:*@2 Adam/vae/encoder/conv2d_1/bias/v
::8@@2"Adam/vae/encoder/conv2d_2/kernel/v
,:*@2 Adam/vae/encoder/conv2d_2/bias/v
B:@ @2*Adam/vae/decoder/conv2d_transpose/kernel/v
4:2 2(Adam/vae/decoder/conv2d_transpose/bias/v
D:B@@2,Adam/vae/decoder/conv2d_transpose_1/kernel/v
6:4@2*Adam/vae/decoder/conv2d_transpose_1/bias/v
D:B 2,Adam/vae/decoder/conv2d_transpose_2/kernel/v
6:42*Adam/vae/decoder/conv2d_transpose_2/bias/v
е2в
"__inference_vae_layer_call_fn_2065
"__inference_vae_layer_call_fn_2084Ч
Р≤М
FullArgSpec
argsЪ	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ы2Ш
=__inference_vae_layer_call_and_return_conditional_losses_1538
=__inference_vae_layer_call_and_return_conditional_losses_1977Ч
Р≤М
FullArgSpec
argsЪ	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 B«
!__inference__wrapped_model_201321input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
&__inference_encoder_layer_call_fn_1615
&__inference_encoder_layer_call_fn_1604Ч
Р≤М
FullArgSpec
argsЪ	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
£2†
A__inference_encoder_layer_call_and_return_conditional_losses_1151
A__inference_encoder_layer_call_and_return_conditional_losses_1646Ч
Р≤М
FullArgSpec
argsЪ	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щ2ц
.__inference_vector_quantizer_layer_call_fn_958
.__inference_vector_quantizer_layer_call_fn_965У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∞2≠
I__inference_vector_quantizer_layer_call_and_return_conditional_losses_729
J__inference_vector_quantizer_layer_call_and_return_conditional_losses_1316У
М≤И
FullArgSpec
argsЪ
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
&__inference_decoder_layer_call_fn_1988
&__inference_decoder_layer_call_fn_1919Ч
Р≤М
FullArgSpec
argsЪ	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
£2†
A__inference_decoder_layer_call_and_return_conditional_losses_1047
A__inference_decoder_layer_call_and_return_conditional_losses_1877Ч
Р≤М
FullArgSpec
argsЪ	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
…B∆
$__inference_signature_wrapper_201396input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≥2∞
__inference_loss_fn_0_201602П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥2∞
__inference_loss_fn_1_201613П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥2∞
__inference_loss_fn_2_201624П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
Ё2Џ
3__inference_conv2d_transpose_2_layer_call_fn_201639Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ш2х
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_201679Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≥2∞
__inference_loss_fn_3_201690П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥2∞
__inference_loss_fn_4_201701П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥2∞
__inference_loss_fn_5_201712П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
џ2Ў
1__inference_conv2d_transpose_layer_call_fn_201739Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ц2у
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_201779Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ё2Џ
3__inference_conv2d_transpose_1_layer_call_fn_201794Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ш2х
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_201834Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 ™
!__inference__wrapped_model_201321Д%&'()*-.+,/06Ґ3
,Ґ)
'К$
input€€€€€€€€€  
™ ";™8
6
output_1*К'
output_1€€€€€€€€€  г
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_201834Р-.IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ ї
3__inference_conv2d_transpose_1_layer_call_fn_201794Г-.IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@г
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_201679Р/0IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ї
3__inference_conv2d_transpose_2_layer_call_fn_201639Г/0IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€б
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_201779Р+,IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ є
1__inference_conv2d_transpose_layer_call_fn_201739Г+,IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ і
A__inference_decoder_layer_call_and_return_conditional_losses_1047o-.+,/06Ґ3
,Ґ)
'К$
input€€€€€€€€€  @
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ ґ
A__inference_decoder_layer_call_and_return_conditional_losses_1877q-.+,/08Ґ5
.Ґ+
)К&
input_1€€€€€€€€€  @
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ М
&__inference_decoder_layer_call_fn_1919b-.+,/06Ґ3
,Ґ)
'К$
input€€€€€€€€€  @
™ " К€€€€€€€€€  О
&__inference_decoder_layer_call_fn_1988d-.+,/08Ґ5
.Ґ+
)К&
input_1€€€€€€€€€  @
™ " К€€€€€€€€€  і
A__inference_encoder_layer_call_and_return_conditional_losses_1151o%&'()*6Ґ3
,Ґ)
'К$
input€€€€€€€€€  
™ "-Ґ*
#К 
0€€€€€€€€€  @
Ъ ґ
A__inference_encoder_layer_call_and_return_conditional_losses_1646q%&'()*8Ґ5
.Ґ+
)К&
input_1€€€€€€€€€  
™ "-Ґ*
#К 
0€€€€€€€€€  @
Ъ М
&__inference_encoder_layer_call_fn_1604b%&'()*6Ґ3
,Ґ)
'К$
input€€€€€€€€€  
™ " К€€€€€€€€€  @О
&__inference_encoder_layer_call_fn_1615d%&'()*8Ґ5
.Ґ+
)К&
input_1€€€€€€€€€  
™ " К€€€€€€€€€  @;
__inference_loss_fn_0_201602%Ґ

Ґ 
™ "К ;
__inference_loss_fn_1_201613'Ґ

Ґ 
™ "К ;
__inference_loss_fn_2_201624)Ґ

Ґ 
™ "К ;
__inference_loss_fn_3_201690+Ґ

Ґ 
™ "К ;
__inference_loss_fn_4_201701-Ґ

Ґ 
™ "К ;
__inference_loss_fn_5_201712/Ґ

Ґ 
™ "К ґ
$__inference_signature_wrapper_201396Н%&'()*-.+,/0?Ґ<
Ґ 
5™2
0
input'К$
input€€€€€€€€€  ";™8
6
output_1*К'
output_1€€€€€€€€€  ∆
=__inference_vae_layer_call_and_return_conditional_losses_1538Д%&'()*-.+,/06Ґ3
,Ґ)
'К$
input€€€€€€€€€  
™ ";Ґ8
#К 
0€€€€€€€€€  
Ъ
К	
1/0 »
=__inference_vae_layer_call_and_return_conditional_losses_1977Ж%&'()*-.+,/08Ґ5
.Ґ+
)К&
input_1€€€€€€€€€  
™ ";Ґ8
#К 
0€€€€€€€€€  
Ъ
К	
1/0 С
"__inference_vae_layer_call_fn_2065k%&'()*-.+,/08Ґ5
.Ґ+
)К&
input_1€€€€€€€€€  
™ " К€€€€€€€€€  П
"__inference_vae_layer_call_fn_2084i%&'()*-.+,/06Ґ3
,Ґ)
'К$
input€€€€€€€€€  
™ " К€€€€€€€€€  »
J__inference_vector_quantizer_layer_call_and_return_conditional_losses_1316z8Ґ5
.Ґ+
)К&
input_1€€€€€€€€€  @
™ ";Ґ8
#К 
0€€€€€€€€€  @
Ъ
К	
1/0 Ѕ
I__inference_vector_quantizer_layer_call_and_return_conditional_losses_729t2Ґ/
(Ґ%
#К 
x€€€€€€€€€  @
™ ";Ґ8
#К 
0€€€€€€€€€  @
Ъ
К	
1/0 С
.__inference_vector_quantizer_layer_call_fn_958_8Ґ5
.Ґ+
)К&
input_1€€€€€€€€€  @
™ " К€€€€€€€€€  @Л
.__inference_vector_quantizer_layer_call_fn_965Y2Ґ/
(Ґ%
#К 
x€€€€€€€€€  @
™ " К€€€€€€€€€  @