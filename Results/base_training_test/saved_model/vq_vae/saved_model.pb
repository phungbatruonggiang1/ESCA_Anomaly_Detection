��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
�
ArgMin

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
�
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
Ttype"
TItype0	:
2	
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
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
�
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
executor_typestring ��
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
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.12v2.13.0-17-gf841394b1b78��
�
*Adam/v/vae/decoder/conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/v/vae/decoder/conv2d_transpose_2/bias
�
>Adam/v/vae/decoder/conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOp*Adam/v/vae/decoder/conv2d_transpose_2/bias*
_output_shapes
:*
dtype0
�
*Adam/m/vae/decoder/conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*Adam/m/vae/decoder/conv2d_transpose_2/bias
�
>Adam/m/vae/decoder/conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOp*Adam/m/vae/decoder/conv2d_transpose_2/bias*
_output_shapes
:*
dtype0
�
,Adam/v/vae/decoder/conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/v/vae/decoder/conv2d_transpose_2/kernel
�
@Adam/v/vae/decoder/conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOp,Adam/v/vae/decoder/conv2d_transpose_2/kernel*&
_output_shapes
: *
dtype0
�
,Adam/m/vae/decoder/conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/m/vae/decoder/conv2d_transpose_2/kernel
�
@Adam/m/vae/decoder/conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOp,Adam/m/vae/decoder/conv2d_transpose_2/kernel*&
_output_shapes
: *
dtype0
�
*Adam/v/vae/decoder/conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/v/vae/decoder/conv2d_transpose_1/bias
�
>Adam/v/vae/decoder/conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOp*Adam/v/vae/decoder/conv2d_transpose_1/bias*
_output_shapes
:@*
dtype0
�
*Adam/m/vae/decoder/conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/m/vae/decoder/conv2d_transpose_1/bias
�
>Adam/m/vae/decoder/conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOp*Adam/m/vae/decoder/conv2d_transpose_1/bias*
_output_shapes
:@*
dtype0
�
,Adam/v/vae/decoder/conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*=
shared_name.,Adam/v/vae/decoder/conv2d_transpose_1/kernel
�
@Adam/v/vae/decoder/conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOp,Adam/v/vae/decoder/conv2d_transpose_1/kernel*&
_output_shapes
:@@*
dtype0
�
,Adam/m/vae/decoder/conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*=
shared_name.,Adam/m/vae/decoder/conv2d_transpose_1/kernel
�
@Adam/m/vae/decoder/conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOp,Adam/m/vae/decoder/conv2d_transpose_1/kernel*&
_output_shapes
:@@*
dtype0
�
(Adam/v/vae/decoder/conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(Adam/v/vae/decoder/conv2d_transpose/bias
�
<Adam/v/vae/decoder/conv2d_transpose/bias/Read/ReadVariableOpReadVariableOp(Adam/v/vae/decoder/conv2d_transpose/bias*
_output_shapes
: *
dtype0
�
(Adam/m/vae/decoder/conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(Adam/m/vae/decoder/conv2d_transpose/bias
�
<Adam/m/vae/decoder/conv2d_transpose/bias/Read/ReadVariableOpReadVariableOp(Adam/m/vae/decoder/conv2d_transpose/bias*
_output_shapes
: *
dtype0
�
*Adam/v/vae/decoder/conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*;
shared_name,*Adam/v/vae/decoder/conv2d_transpose/kernel
�
>Adam/v/vae/decoder/conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOp*Adam/v/vae/decoder/conv2d_transpose/kernel*&
_output_shapes
: @*
dtype0
�
*Adam/m/vae/decoder/conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*;
shared_name,*Adam/m/vae/decoder/conv2d_transpose/kernel
�
>Adam/m/vae/decoder/conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOp*Adam/m/vae/decoder/conv2d_transpose/kernel*&
_output_shapes
: @*
dtype0
�
Adam/v/embeddings_vqvaeVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*(
shared_nameAdam/v/embeddings_vqvae
�
+Adam/v/embeddings_vqvae/Read/ReadVariableOpReadVariableOpAdam/v/embeddings_vqvae*
_output_shapes
:	@�*
dtype0
�
Adam/m/embeddings_vqvaeVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*(
shared_nameAdam/m/embeddings_vqvae
�
+Adam/m/embeddings_vqvae/Read/ReadVariableOpReadVariableOpAdam/m/embeddings_vqvae*
_output_shapes
:	@�*
dtype0
�
 Adam/v/vae/encoder/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/v/vae/encoder/conv2d_2/bias
�
4Adam/v/vae/encoder/conv2d_2/bias/Read/ReadVariableOpReadVariableOp Adam/v/vae/encoder/conv2d_2/bias*
_output_shapes
:@*
dtype0
�
 Adam/m/vae/encoder/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/m/vae/encoder/conv2d_2/bias
�
4Adam/m/vae/encoder/conv2d_2/bias/Read/ReadVariableOpReadVariableOp Adam/m/vae/encoder/conv2d_2/bias*
_output_shapes
:@*
dtype0
�
"Adam/v/vae/encoder/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*3
shared_name$"Adam/v/vae/encoder/conv2d_2/kernel
�
6Adam/v/vae/encoder/conv2d_2/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/vae/encoder/conv2d_2/kernel*&
_output_shapes
:@@*
dtype0
�
"Adam/m/vae/encoder/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*3
shared_name$"Adam/m/vae/encoder/conv2d_2/kernel
�
6Adam/m/vae/encoder/conv2d_2/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/vae/encoder/conv2d_2/kernel*&
_output_shapes
:@@*
dtype0
�
 Adam/v/vae/encoder/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/v/vae/encoder/conv2d_1/bias
�
4Adam/v/vae/encoder/conv2d_1/bias/Read/ReadVariableOpReadVariableOp Adam/v/vae/encoder/conv2d_1/bias*
_output_shapes
:@*
dtype0
�
 Adam/m/vae/encoder/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/m/vae/encoder/conv2d_1/bias
�
4Adam/m/vae/encoder/conv2d_1/bias/Read/ReadVariableOpReadVariableOp Adam/m/vae/encoder/conv2d_1/bias*
_output_shapes
:@*
dtype0
�
"Adam/v/vae/encoder/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*3
shared_name$"Adam/v/vae/encoder/conv2d_1/kernel
�
6Adam/v/vae/encoder/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/vae/encoder/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
�
"Adam/m/vae/encoder/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*3
shared_name$"Adam/m/vae/encoder/conv2d_1/kernel
�
6Adam/m/vae/encoder/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/vae/encoder/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
�
Adam/v/vae/encoder/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/v/vae/encoder/conv2d/bias
�
2Adam/v/vae/encoder/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/v/vae/encoder/conv2d/bias*
_output_shapes
: *
dtype0
�
Adam/m/vae/encoder/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/m/vae/encoder/conv2d/bias
�
2Adam/m/vae/encoder/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/m/vae/encoder/conv2d/bias*
_output_shapes
: *
dtype0
�
 Adam/v/vae/encoder/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/v/vae/encoder/conv2d/kernel
�
4Adam/v/vae/encoder/conv2d/kernel/Read/ReadVariableOpReadVariableOp Adam/v/vae/encoder/conv2d/kernel*&
_output_shapes
: *
dtype0
�
 Adam/m/vae/encoder/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/m/vae/encoder/conv2d/kernel
�
4Adam/m/vae/encoder/conv2d/kernel/Read/ReadVariableOpReadVariableOp Adam/m/vae/encoder/conv2d/kernel*&
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
#vae/decoder/conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#vae/decoder/conv2d_transpose_2/bias
�
7vae/decoder/conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOp#vae/decoder/conv2d_transpose_2/bias*
_output_shapes
:*
dtype0
�
%vae/decoder/conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%vae/decoder/conv2d_transpose_2/kernel
�
9vae/decoder/conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOp%vae/decoder/conv2d_transpose_2/kernel*&
_output_shapes
: *
dtype0
�
#vae/decoder/conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#vae/decoder/conv2d_transpose_1/bias
�
7vae/decoder/conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOp#vae/decoder/conv2d_transpose_1/bias*
_output_shapes
:@*
dtype0
�
%vae/decoder/conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*6
shared_name'%vae/decoder/conv2d_transpose_1/kernel
�
9vae/decoder/conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOp%vae/decoder/conv2d_transpose_1/kernel*&
_output_shapes
:@@*
dtype0
�
!vae/decoder/conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!vae/decoder/conv2d_transpose/bias
�
5vae/decoder/conv2d_transpose/bias/Read/ReadVariableOpReadVariableOp!vae/decoder/conv2d_transpose/bias*
_output_shapes
: *
dtype0
�
#vae/decoder/conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*4
shared_name%#vae/decoder/conv2d_transpose/kernel
�
7vae/decoder/conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOp#vae/decoder/conv2d_transpose/kernel*&
_output_shapes
: @*
dtype0
}
embeddings_vqvaeVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*!
shared_nameembeddings_vqvae
v
$embeddings_vqvae/Read/ReadVariableOpReadVariableOpembeddings_vqvae*
_output_shapes
:	@�*
dtype0
�
vae/encoder/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namevae/encoder/conv2d_2/bias
�
-vae/encoder/conv2d_2/bias/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d_2/bias*
_output_shapes
:@*
dtype0
�
vae/encoder/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*,
shared_namevae/encoder/conv2d_2/kernel
�
/vae/encoder/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d_2/kernel*&
_output_shapes
:@@*
dtype0
�
vae/encoder/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namevae/encoder/conv2d_1/bias
�
-vae/encoder/conv2d_1/bias/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d_1/bias*
_output_shapes
:@*
dtype0
�
vae/encoder/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*,
shared_namevae/encoder/conv2d_1/kernel
�
/vae/encoder/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
�
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
�
vae/encoder/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namevae/encoder/conv2d/kernel
�
-vae/encoder/conv2d/kernel/Read/ReadVariableOpReadVariableOpvae/encoder/conv2d/kernel*&
_output_shapes
: *
dtype0
�
serving_default_input_1Placeholder*/
_output_shapes
:��������� W*
dtype0*$
shape:��������� W
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1vae/encoder/conv2d/kernelvae/encoder/conv2d/biasvae/encoder/conv2d_1/kernelvae/encoder/conv2d_1/biasvae/encoder/conv2d_2/kernelvae/encoder/conv2d_2/biasembeddings_vqvae%vae/decoder/conv2d_transpose_1/kernel#vae/decoder/conv2d_transpose_1/bias#vae/decoder/conv2d_transpose/kernel!vae/decoder/conv2d_transpose/bias%vae/decoder/conv2d_transpose_2/kernel#vae/decoder/conv2d_transpose_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_16362

NoOpNoOp
�[
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�Z
value�ZB�Z B�Z
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	vector_quantizer

decoder
	optimizer
loss

signatures*
b
0
1
2
3
4
5
6
7
8
9
10
11
12*
b
0
1
2
3
4
5
6
7
8
9
10
11
12*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

 trace_0* 

!trace_0* 
* 
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(
layer_dict
)
latent_dim*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

embeddings*
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6
layer_dict
7output_layer*
�
8
_variables
9_iterations
:_learning_rate
;_index_dict
<
_momentums
=_velocities
>_update_step_xla*
* 

?serving_default* 
YS
VARIABLE_VALUEvae/encoder/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEvae/encoder/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEvae/encoder/conv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEvae/encoder/conv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEvae/encoder/conv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEvae/encoder/conv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEembeddings_vqvae&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#vae/decoder/conv2d_transpose/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!vae/decoder/conv2d_transpose/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%vae/decoder/conv2d_transpose_1/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#vae/decoder/conv2d_transpose_1/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%vae/decoder/conv2d_transpose_2/kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#vae/decoder/conv2d_transpose_2/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
	1

2*
* 
* 
* 
* 
* 
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*

@0
A1
B2* 
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

Htrace_0* 

Itrace_0* 

Jlayer_1
Klayer_2*
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses

kernel
bias
 R_jit_compiled_convolution_op*

0*

0*
* 
�
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

Xtrace_0* 

Ytrace_0* 
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*

Z0
[1
\2* 
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

btrace_0* 

ctrace_0* 

dlayer_1
elayer_2*
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

kernel
bias
 l_jit_compiled_convolution_op*
�
90
m1
n2
o3
p4
q5
r6
s7
t8
u9
v10
w11
x12
y13
z14
{15
|16
}17
~18
19
�20
�21
�22
�23
�24
�25
�26*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
e
m0
o1
q2
s3
u4
w5
y6
{7
}8
9
�10
�11
�12*
f
n0
p1
r2
t3
v4
x5
z6
|7
~8
�9
�10
�11
�12*
* 
* 

�trace_0* 

�trace_0* 

�trace_0* 
* 

J0
K1
)2*
* 
* 
* 
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*

0
1*

0
1*
	
B0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 

�trace_0* 

�trace_0* 

�trace_0* 
* 

d0
e1
72*
* 
* 
* 
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*

0
1*

0
1*
	
\0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
ke
VARIABLE_VALUE Adam/m/vae/encoder/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/vae/encoder/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/vae/encoder/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/vae/encoder/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/vae/encoder/conv2d_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/vae/encoder/conv2d_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/vae/encoder/conv2d_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/vae/encoder/conv2d_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/vae/encoder/conv2d_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/vae/encoder/conv2d_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/m/vae/encoder/conv2d_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/vae/encoder/conv2d_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/embeddings_vqvae2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/embeddings_vqvae2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/vae/decoder/conv2d_transpose/kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/vae/decoder/conv2d_transpose/kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/m/vae/decoder/conv2d_transpose/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/v/vae/decoder/conv2d_transpose/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/m/vae/decoder/conv2d_transpose_1/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/v/vae/decoder/conv2d_transpose_1/kernel2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/vae/decoder/conv2d_transpose_1/bias2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/vae/decoder/conv2d_transpose_1/bias2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/m/vae/decoder/conv2d_transpose_2/kernel2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/v/vae/decoder/conv2d_transpose_2/kernel2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/vae/decoder/conv2d_transpose_2/bias2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/vae/decoder/conv2d_transpose_2/bias2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

0
1*

0
1*
	
@0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
	
A0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
	
B0* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
	
Z0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
	
[0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
	
\0* 
* 
* 
* 
* 
* 
* 
	
@0* 
* 
* 
* 
* 
* 
* 
	
A0* 
* 
* 
* 
* 
* 
* 
	
Z0* 
* 
* 
* 
* 
* 
* 
	
[0* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamevae/encoder/conv2d/kernelvae/encoder/conv2d/biasvae/encoder/conv2d_1/kernelvae/encoder/conv2d_1/biasvae/encoder/conv2d_2/kernelvae/encoder/conv2d_2/biasembeddings_vqvae#vae/decoder/conv2d_transpose/kernel!vae/decoder/conv2d_transpose/bias%vae/decoder/conv2d_transpose_1/kernel#vae/decoder/conv2d_transpose_1/bias%vae/decoder/conv2d_transpose_2/kernel#vae/decoder/conv2d_transpose_2/bias	iterationlearning_rate Adam/m/vae/encoder/conv2d/kernel Adam/v/vae/encoder/conv2d/kernelAdam/m/vae/encoder/conv2d/biasAdam/v/vae/encoder/conv2d/bias"Adam/m/vae/encoder/conv2d_1/kernel"Adam/v/vae/encoder/conv2d_1/kernel Adam/m/vae/encoder/conv2d_1/bias Adam/v/vae/encoder/conv2d_1/bias"Adam/m/vae/encoder/conv2d_2/kernel"Adam/v/vae/encoder/conv2d_2/kernel Adam/m/vae/encoder/conv2d_2/bias Adam/v/vae/encoder/conv2d_2/biasAdam/m/embeddings_vqvaeAdam/v/embeddings_vqvae*Adam/m/vae/decoder/conv2d_transpose/kernel*Adam/v/vae/decoder/conv2d_transpose/kernel(Adam/m/vae/decoder/conv2d_transpose/bias(Adam/v/vae/decoder/conv2d_transpose/bias,Adam/m/vae/decoder/conv2d_transpose_1/kernel,Adam/v/vae/decoder/conv2d_transpose_1/kernel*Adam/m/vae/decoder/conv2d_transpose_1/bias*Adam/v/vae/decoder/conv2d_transpose_1/bias,Adam/m/vae/decoder/conv2d_transpose_2/kernel,Adam/v/vae/decoder/conv2d_transpose_2/kernel*Adam/m/vae/decoder/conv2d_transpose_2/bias*Adam/v/vae/decoder/conv2d_transpose_2/biasConst*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_16939
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamevae/encoder/conv2d/kernelvae/encoder/conv2d/biasvae/encoder/conv2d_1/kernelvae/encoder/conv2d_1/biasvae/encoder/conv2d_2/kernelvae/encoder/conv2d_2/biasembeddings_vqvae#vae/decoder/conv2d_transpose/kernel!vae/decoder/conv2d_transpose/bias%vae/decoder/conv2d_transpose_1/kernel#vae/decoder/conv2d_transpose_1/bias%vae/decoder/conv2d_transpose_2/kernel#vae/decoder/conv2d_transpose_2/bias	iterationlearning_rate Adam/m/vae/encoder/conv2d/kernel Adam/v/vae/encoder/conv2d/kernelAdam/m/vae/encoder/conv2d/biasAdam/v/vae/encoder/conv2d/bias"Adam/m/vae/encoder/conv2d_1/kernel"Adam/v/vae/encoder/conv2d_1/kernel Adam/m/vae/encoder/conv2d_1/bias Adam/v/vae/encoder/conv2d_1/bias"Adam/m/vae/encoder/conv2d_2/kernel"Adam/v/vae/encoder/conv2d_2/kernel Adam/m/vae/encoder/conv2d_2/bias Adam/v/vae/encoder/conv2d_2/biasAdam/m/embeddings_vqvaeAdam/v/embeddings_vqvae*Adam/m/vae/decoder/conv2d_transpose/kernel*Adam/v/vae/decoder/conv2d_transpose/kernel(Adam/m/vae/decoder/conv2d_transpose/bias(Adam/v/vae/decoder/conv2d_transpose/bias,Adam/m/vae/decoder/conv2d_transpose_1/kernel,Adam/v/vae/decoder/conv2d_transpose_1/kernel*Adam/m/vae/decoder/conv2d_transpose_1/bias*Adam/v/vae/decoder/conv2d_transpose_1/bias,Adam/m/vae/decoder/conv2d_transpose_2/kernel,Adam/v/vae/decoder/conv2d_transpose_2/kernel*Adam/m/vae/decoder/conv2d_transpose_2/bias*Adam/v/vae/decoder/conv2d_transpose_2/bias*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_17071�
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16577

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W@*
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
:��������� W@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� W@�
=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/L2LossL2LossEvae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:07vae/encoder/conv2d_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� W@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� W : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� W 
 
_user_specified_nameinputs
��
�
 __inference__wrapped_model_15845
input_1K
1vae_encoder_conv2d_conv2d_readvariableop_resource: @
2vae_encoder_conv2d_biasadd_readvariableop_resource: M
3vae_encoder_conv2d_1_conv2d_readvariableop_resource: @B
4vae_encoder_conv2d_1_biasadd_readvariableop_resource:@M
3vae_encoder_conv2d_2_conv2d_readvariableop_resource:@@B
4vae_encoder_conv2d_2_biasadd_readvariableop_resource:@F
3vae_vector_quantizer_matmul_readvariableop_resource:	@�a
Gvae_decoder_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:@@L
>vae_decoder_conv2d_transpose_1_biasadd_readvariableop_resource:@_
Evae_decoder_conv2d_transpose_conv2d_transpose_readvariableop_resource: @J
<vae_decoder_conv2d_transpose_biasadd_readvariableop_resource: a
Gvae_decoder_conv2d_transpose_2_conv2d_transpose_readvariableop_resource: L
>vae_decoder_conv2d_transpose_2_biasadd_readvariableop_resource:
identity��3vae/decoder/conv2d_transpose/BiasAdd/ReadVariableOp�<vae/decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp�5vae/decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp�>vae/decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp�5vae/decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp�>vae/decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp�)vae/encoder/conv2d/BiasAdd/ReadVariableOp�(vae/encoder/conv2d/Conv2D/ReadVariableOp�+vae/encoder/conv2d_1/BiasAdd/ReadVariableOp�*vae/encoder/conv2d_1/Conv2D/ReadVariableOp�+vae/encoder/conv2d_2/BiasAdd/ReadVariableOp�*vae/encoder/conv2d_2/Conv2D/ReadVariableOp�*vae/vector_quantizer/MatMul/ReadVariableOp�,vae/vector_quantizer/MatMul_1/ReadVariableOp�#vae/vector_quantizer/ReadVariableOp�
(vae/encoder/conv2d/Conv2D/ReadVariableOpReadVariableOp1vae_encoder_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
vae/encoder/conv2d/Conv2DConv2Dinput_10vae/encoder/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W *
paddingSAME*
strides
�
)vae/encoder/conv2d/BiasAdd/ReadVariableOpReadVariableOp2vae_encoder_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
vae/encoder/conv2d/BiasAddBiasAdd"vae/encoder/conv2d/Conv2D:output:01vae/encoder/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W ~
vae/encoder/conv2d/ReluRelu#vae/encoder/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:��������� W �
*vae/encoder/conv2d_1/Conv2D/ReadVariableOpReadVariableOp3vae_encoder_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
vae/encoder/conv2d_1/Conv2DConv2D%vae/encoder/conv2d/Relu:activations:02vae/encoder/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W@*
paddingSAME*
strides
�
+vae/encoder/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp4vae_encoder_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
vae/encoder/conv2d_1/BiasAddBiasAdd$vae/encoder/conv2d_1/Conv2D:output:03vae/encoder/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W@�
vae/encoder/conv2d_1/ReluRelu%vae/encoder/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:��������� W@�
*vae/encoder/conv2d_2/Conv2D/ReadVariableOpReadVariableOp3vae_encoder_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
vae/encoder/conv2d_2/Conv2DConv2D'vae/encoder/conv2d_1/Relu:activations:02vae/encoder/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W@*
paddingSAME*
strides
�
+vae/encoder/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp4vae_encoder_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
vae/encoder/conv2d_2/BiasAddBiasAdd$vae/encoder/conv2d_2/Conv2D:output:03vae/encoder/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W@�
vae/encoder/conv2d_2/ReluRelu%vae/encoder/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:��������� W@
vae/vector_quantizer/ShapeShape'vae/encoder/conv2d_2/Relu:activations:0*
T0*
_output_shapes
::��s
"vae/vector_quantizer/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
vae/vector_quantizer/ReshapeReshape'vae/encoder/conv2d_2/Relu:activations:0+vae/vector_quantizer/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@�
*vae/vector_quantizer/MatMul/ReadVariableOpReadVariableOp3vae_vector_quantizer_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
vae/vector_quantizer/MatMulMatMul%vae/vector_quantizer/Reshape:output:02vae/vector_quantizer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
vae/vector_quantizer/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vae/vector_quantizer/powPow%vae/vector_quantizer/Reshape:output:0#vae/vector_quantizer/pow/y:output:0*
T0*'
_output_shapes
:���������@l
*vae/vector_quantizer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
vae/vector_quantizer/SumSumvae/vector_quantizer/pow:z:03vae/vector_quantizer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
#vae/vector_quantizer/ReadVariableOpReadVariableOp3vae_vector_quantizer_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0a
vae/vector_quantizer/pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vae/vector_quantizer/pow_1Pow+vae/vector_quantizer/ReadVariableOp:value:0%vae/vector_quantizer/pow_1/y:output:0*
T0*
_output_shapes
:	@�n
,vae/vector_quantizer/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : �
vae/vector_quantizer/Sum_1Sumvae/vector_quantizer/pow_1:z:05vae/vector_quantizer/Sum_1/reduction_indices:output:0*
T0*
_output_shapes	
:��
vae/vector_quantizer/addAddV2!vae/vector_quantizer/Sum:output:0#vae/vector_quantizer/Sum_1:output:0*
T0*(
_output_shapes
:����������_
vae/vector_quantizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vae/vector_quantizer/mulMul#vae/vector_quantizer/mul/x:output:0%vae/vector_quantizer/MatMul:product:0*
T0*(
_output_shapes
:�����������
vae/vector_quantizer/subSubvae/vector_quantizer/add:z:0vae/vector_quantizer/mul:z:0*
T0*(
_output_shapes
:����������g
%vae/vector_quantizer/ArgMin/dimensionConst*
_output_shapes
: *
dtype0*
value	B :�
vae/vector_quantizer/ArgMinArgMinvae/vector_quantizer/sub:z:0.vae/vector_quantizer/ArgMin/dimension:output:0*
T0*#
_output_shapes
:���������j
%vae/vector_quantizer/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
&vae/vector_quantizer/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    e
"vae/vector_quantizer/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :��
vae/vector_quantizer/one_hotOneHot$vae/vector_quantizer/ArgMin:output:0+vae/vector_quantizer/one_hot/depth:output:0.vae/vector_quantizer/one_hot/on_value:output:0/vae/vector_quantizer/one_hot/off_value:output:0*
T0*(
_output_shapes
:�����������
,vae/vector_quantizer/MatMul_1/ReadVariableOpReadVariableOp3vae_vector_quantizer_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
vae/vector_quantizer/MatMul_1MatMul%vae/vector_quantizer/one_hot:output:04vae/vector_quantizer/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@*
transpose_b(�
vae/vector_quantizer/Reshape_1Reshape'vae/vector_quantizer/MatMul_1:product:0#vae/vector_quantizer/Shape:output:0*
T0*/
_output_shapes
:��������� W@�
!vae/vector_quantizer/StopGradientStopGradient'vae/vector_quantizer/Reshape_1:output:0*
T0*/
_output_shapes
:��������� W@�
vae/vector_quantizer/sub_1Sub*vae/vector_quantizer/StopGradient:output:0'vae/encoder/conv2d_2/Relu:activations:0*
T0*/
_output_shapes
:��������� W@a
vae/vector_quantizer/pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vae/vector_quantizer/pow_2Powvae/vector_quantizer/sub_1:z:0%vae/vector_quantizer/pow_2/y:output:0*
T0*/
_output_shapes
:��������� W@s
vae/vector_quantizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
vae/vector_quantizer/MeanMeanvae/vector_quantizer/pow_2:z:0#vae/vector_quantizer/Const:output:0*
T0*
_output_shapes
: a
vae/vector_quantizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �>�
vae/vector_quantizer/mul_1Mul%vae/vector_quantizer/mul_1/x:output:0"vae/vector_quantizer/Mean:output:0*
T0*
_output_shapes
: �
#vae/vector_quantizer/StopGradient_1StopGradient'vae/encoder/conv2d_2/Relu:activations:0*
T0*/
_output_shapes
:��������� W@�
vae/vector_quantizer/sub_2Sub'vae/vector_quantizer/Reshape_1:output:0,vae/vector_quantizer/StopGradient_1:output:0*
T0*/
_output_shapes
:��������� W@a
vae/vector_quantizer/pow_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
vae/vector_quantizer/pow_3Powvae/vector_quantizer/sub_2:z:0%vae/vector_quantizer/pow_3/y:output:0*
T0*/
_output_shapes
:��������� W@u
vae/vector_quantizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
vae/vector_quantizer/Mean_1Meanvae/vector_quantizer/pow_3:z:0%vae/vector_quantizer/Const_1:output:0*
T0*
_output_shapes
: �
vae/vector_quantizer/add_1AddV2vae/vector_quantizer/mul_1:z:0$vae/vector_quantizer/Mean_1:output:0*
T0*
_output_shapes
: �
vae/vector_quantizer/sub_3Sub'vae/vector_quantizer/Reshape_1:output:0'vae/encoder/conv2d_2/Relu:activations:0*
T0*/
_output_shapes
:��������� W@�
#vae/vector_quantizer/StopGradient_2StopGradientvae/vector_quantizer/sub_3:z:0*
T0*/
_output_shapes
:��������� W@�
vae/vector_quantizer/add_2AddV2'vae/encoder/conv2d_2/Relu:activations:0,vae/vector_quantizer/StopGradient_2:output:0*
T0*/
_output_shapes
:��������� W@�
$vae/decoder/conv2d_transpose_1/ShapeShapevae/vector_quantizer/add_2:z:0*
T0*
_output_shapes
::��|
2vae/decoder/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4vae/decoder/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4vae/decoder/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,vae/decoder/conv2d_transpose_1/strided_sliceStridedSlice-vae/decoder/conv2d_transpose_1/Shape:output:0;vae/decoder/conv2d_transpose_1/strided_slice/stack:output:0=vae/decoder/conv2d_transpose_1/strided_slice/stack_1:output:0=vae/decoder/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&vae/decoder/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : h
&vae/decoder/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :Wh
&vae/decoder/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@�
$vae/decoder/conv2d_transpose_1/stackPack5vae/decoder/conv2d_transpose_1/strided_slice:output:0/vae/decoder/conv2d_transpose_1/stack/1:output:0/vae/decoder/conv2d_transpose_1/stack/2:output:0/vae/decoder/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:~
4vae/decoder/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6vae/decoder/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6vae/decoder/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.vae/decoder/conv2d_transpose_1/strided_slice_1StridedSlice-vae/decoder/conv2d_transpose_1/stack:output:0=vae/decoder/conv2d_transpose_1/strided_slice_1/stack:output:0?vae/decoder/conv2d_transpose_1/strided_slice_1/stack_1:output:0?vae/decoder/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
>vae/decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpGvae_decoder_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
/vae/decoder/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput-vae/decoder/conv2d_transpose_1/stack:output:0Fvae/decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0vae/vector_quantizer/add_2:z:0*
T0*/
_output_shapes
:��������� W@*
paddingSAME*
strides
�
5vae/decoder/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp>vae_decoder_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
&vae/decoder/conv2d_transpose_1/BiasAddBiasAdd8vae/decoder/conv2d_transpose_1/conv2d_transpose:output:0=vae/decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W@�
#vae/decoder/conv2d_transpose_1/ReluRelu/vae/decoder/conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:��������� W@�
"vae/decoder/conv2d_transpose/ShapeShape1vae/decoder/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
::��z
0vae/decoder/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2vae/decoder/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2vae/decoder/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*vae/decoder/conv2d_transpose/strided_sliceStridedSlice+vae/decoder/conv2d_transpose/Shape:output:09vae/decoder/conv2d_transpose/strided_slice/stack:output:0;vae/decoder/conv2d_transpose/strided_slice/stack_1:output:0;vae/decoder/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$vae/decoder/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B : f
$vae/decoder/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :Wf
$vae/decoder/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
"vae/decoder/conv2d_transpose/stackPack3vae/decoder/conv2d_transpose/strided_slice:output:0-vae/decoder/conv2d_transpose/stack/1:output:0-vae/decoder/conv2d_transpose/stack/2:output:0-vae/decoder/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:|
2vae/decoder/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4vae/decoder/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4vae/decoder/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,vae/decoder/conv2d_transpose/strided_slice_1StridedSlice+vae/decoder/conv2d_transpose/stack:output:0;vae/decoder/conv2d_transpose/strided_slice_1/stack:output:0=vae/decoder/conv2d_transpose/strided_slice_1/stack_1:output:0=vae/decoder/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<vae/decoder/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpEvae_decoder_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
-vae/decoder/conv2d_transpose/conv2d_transposeConv2DBackpropInput+vae/decoder/conv2d_transpose/stack:output:0Dvae/decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:01vae/decoder/conv2d_transpose_1/Relu:activations:0*
T0*/
_output_shapes
:��������� W *
paddingSAME*
strides
�
3vae/decoder/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp<vae_decoder_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
$vae/decoder/conv2d_transpose/BiasAddBiasAdd6vae/decoder/conv2d_transpose/conv2d_transpose:output:0;vae/decoder/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W �
!vae/decoder/conv2d_transpose/ReluRelu-vae/decoder/conv2d_transpose/BiasAdd:output:0*
T0*/
_output_shapes
:��������� W �
$vae/decoder/conv2d_transpose_2/ShapeShape/vae/decoder/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
::��|
2vae/decoder/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4vae/decoder/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4vae/decoder/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,vae/decoder/conv2d_transpose_2/strided_sliceStridedSlice-vae/decoder/conv2d_transpose_2/Shape:output:0;vae/decoder/conv2d_transpose_2/strided_slice/stack:output:0=vae/decoder/conv2d_transpose_2/strided_slice/stack_1:output:0=vae/decoder/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&vae/decoder/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : h
&vae/decoder/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :Wh
&vae/decoder/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
$vae/decoder/conv2d_transpose_2/stackPack5vae/decoder/conv2d_transpose_2/strided_slice:output:0/vae/decoder/conv2d_transpose_2/stack/1:output:0/vae/decoder/conv2d_transpose_2/stack/2:output:0/vae/decoder/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:~
4vae/decoder/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6vae/decoder/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6vae/decoder/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.vae/decoder/conv2d_transpose_2/strided_slice_1StridedSlice-vae/decoder/conv2d_transpose_2/stack:output:0=vae/decoder/conv2d_transpose_2/strided_slice_1/stack:output:0?vae/decoder/conv2d_transpose_2/strided_slice_1/stack_1:output:0?vae/decoder/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
>vae/decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpGvae_decoder_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
/vae/decoder/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput-vae/decoder/conv2d_transpose_2/stack:output:0Fvae/decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0/vae/decoder/conv2d_transpose/Relu:activations:0*
T0*/
_output_shapes
:��������� W*
paddingSAME*
strides
�
5vae/decoder/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp>vae_decoder_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&vae/decoder/conv2d_transpose_2/BiasAddBiasAdd8vae/decoder/conv2d_transpose_2/conv2d_transpose:output:0=vae/decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W�
&vae/decoder/conv2d_transpose_2/SigmoidSigmoid/vae/decoder/conv2d_transpose_2/BiasAdd:output:0*
T0*/
_output_shapes
:��������� W�
IdentityIdentity*vae/decoder/conv2d_transpose_2/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:��������� W�
NoOpNoOp4^vae/decoder/conv2d_transpose/BiasAdd/ReadVariableOp=^vae/decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp6^vae/decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp?^vae/decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp6^vae/decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp?^vae/decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp*^vae/encoder/conv2d/BiasAdd/ReadVariableOp)^vae/encoder/conv2d/Conv2D/ReadVariableOp,^vae/encoder/conv2d_1/BiasAdd/ReadVariableOp+^vae/encoder/conv2d_1/Conv2D/ReadVariableOp,^vae/encoder/conv2d_2/BiasAdd/ReadVariableOp+^vae/encoder/conv2d_2/Conv2D/ReadVariableOp+^vae/vector_quantizer/MatMul/ReadVariableOp-^vae/vector_quantizer/MatMul_1/ReadVariableOp$^vae/vector_quantizer/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:��������� W: : : : : : : : : : : : : 2j
3vae/decoder/conv2d_transpose/BiasAdd/ReadVariableOp3vae/decoder/conv2d_transpose/BiasAdd/ReadVariableOp2|
<vae/decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp<vae/decoder/conv2d_transpose/conv2d_transpose/ReadVariableOp2n
5vae/decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp5vae/decoder/conv2d_transpose_1/BiasAdd/ReadVariableOp2�
>vae/decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp>vae/decoder/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2n
5vae/decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp5vae/decoder/conv2d_transpose_2/BiasAdd/ReadVariableOp2�
>vae/decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp>vae/decoder/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2V
)vae/encoder/conv2d/BiasAdd/ReadVariableOp)vae/encoder/conv2d/BiasAdd/ReadVariableOp2T
(vae/encoder/conv2d/Conv2D/ReadVariableOp(vae/encoder/conv2d/Conv2D/ReadVariableOp2Z
+vae/encoder/conv2d_1/BiasAdd/ReadVariableOp+vae/encoder/conv2d_1/BiasAdd/ReadVariableOp2X
*vae/encoder/conv2d_1/Conv2D/ReadVariableOp*vae/encoder/conv2d_1/Conv2D/ReadVariableOp2Z
+vae/encoder/conv2d_2/BiasAdd/ReadVariableOp+vae/encoder/conv2d_2/BiasAdd/ReadVariableOp2X
*vae/encoder/conv2d_2/Conv2D/ReadVariableOp*vae/encoder/conv2d_2/Conv2D/ReadVariableOp2X
*vae/vector_quantizer/MatMul/ReadVariableOp*vae/vector_quantizer/MatMul/ReadVariableOp2\
,vae/vector_quantizer/MatMul_1/ReadVariableOp,vae/vector_quantizer/MatMul_1/ReadVariableOp2J
#vae/vector_quantizer/ReadVariableOp#vae/vector_quantizer/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
/
_output_shapes
:��������� W
!
_user_specified_name	input_1
�-
�
B__inference_decoder_layer_call_and_return_conditional_losses_16196
input_12
conv2d_transpose_1_16168:@@&
conv2d_transpose_1_16170:@0
conv2d_transpose_16173: @$
conv2d_transpose_16175: 2
conv2d_transpose_2_16178: &
conv2d_transpose_2_16180:
identity��(conv2d_transpose/StatefulPartitionedCall�*conv2d_transpose_1/StatefulPartitionedCall�*conv2d_transpose_2/StatefulPartitionedCall�Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp�
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_transpose_1_16168conv2d_transpose_1_16170*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_16109�
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_16173conv2d_transpose_16175*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_16062�
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_2_16178conv2d_transpose_2_16180*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_16156�
Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_transpose_16173*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/L2LossL2LossMvae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0?vae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_transpose_1_16168*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/L2LossL2LossOvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0Avae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_transpose_2_16178*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/L2LossL2LossOvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0Avae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
IdentityIdentity3conv2d_transpose_2/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� W�
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCallF^vae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':��������� W@: : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp:%!

_user_specified_name16180:%!

_user_specified_name16178:%!

_user_specified_name16175:%!

_user_specified_name16173:%!

_user_specified_name16170:%!

_user_specified_name16168:X T
/
_output_shapes
:��������� W@
!
_user_specified_name	input_1
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_15902

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W@*
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
:��������� W@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� W@�
=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/L2LossL2LossEvae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:07vae/encoder/conv2d_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� W@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� W@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� W@
 
_user_specified_nameinputs
�
�
__inference_loss_fn_3_16458h
Nvae_decoder_conv2d_transpose_kernel_regularizer_l2loss_readvariableop_resource: @
identity��Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp�
Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpNvae_decoder_conv2d_transpose_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/L2LossL2LossMvae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0?vae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: u
IdentityIdentity7vae/decoder/conv2d_transpose/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOpF^vae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15882

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W@*
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
:��������� W@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� W@�
=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/L2LossL2LossEvae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:07vae/encoder/conv2d_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� W@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� W : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� W 
 
_user_specified_nameinputs
�)
�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_16156

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+����������������������������
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/L2LossL2LossOvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0Avae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�)
�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_16529

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+����������������������������
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/L2LossL2LossOvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0Avae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�(
�
B__inference_encoder_layer_call_and_return_conditional_losses_15921
input_1&
conv2d_15863: 
conv2d_15865: (
conv2d_1_15883: @
conv2d_1_15885:@(
conv2d_2_15903:@@
conv2d_2_15905:@
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp�=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp�=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_15863conv2d_15865*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_15862�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_15883conv2d_1_15885*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15882�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_15903conv2d_2_15905*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_15902�
;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_15863*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/L2LossL2LossCvae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:05vae/encoder/conv2d/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_1_15883*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/L2LossL2LossEvae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:07vae/encoder/conv2d_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_2_15903*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/L2LossL2LossEvae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:07vae/encoder/conv2d_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
IdentityIdentity)conv2d_2/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� W@�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall<^vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':��������� W: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2z
;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:%!

_user_specified_name15905:%!

_user_specified_name15903:%!

_user_specified_name15885:%!

_user_specified_name15883:%!

_user_specified_name15865:%!

_user_specified_name15863:X T
/
_output_shapes
:��������� W
!
_user_specified_name	input_1
�
�
2__inference_conv2d_transpose_2_layer_call_fn_16491

inputs!
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_16156�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+��������������������������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16487:%!

_user_specified_name16485:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
(__inference_conv2d_2_layer_call_fn_16435

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_15902w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� W@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� W@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16431:%!

_user_specified_name16429:W S
/
_output_shapes
:��������� W@
 
_user_specified_nameinputs
�)
�
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_16671

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������@�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/L2LossL2LossOvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0Avae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
&__inference_conv2d_layer_call_fn_16538

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_15862w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� W <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� W: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16534:%!

_user_specified_name16532:W S
/
_output_shapes
:��������� W
 
_user_specified_nameinputs
�
�
2__inference_conv2d_transpose_1_layer_call_fn_16633

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_16109�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16629:%!

_user_specified_name16627:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�)
�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_16062

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� �
Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/L2LossL2LossMvae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0?vae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpF^vae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
__inference_loss_fn_2_16418`
Fvae_encoder_conv2d_2_kernel_regularizer_l2loss_readvariableop_resource:@@
identity��=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp�
=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpFvae_encoder_conv2d_2_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/L2LossL2LossEvae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:07vae/encoder/conv2d_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentity/vae/encoder/conv2d_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: b
NoOpNoOp>^vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�F
�
>__inference_vae_layer_call_and_return_conditional_losses_16272
input_1'
encoder_16216: 
encoder_16218: '
encoder_16220: @
encoder_16222:@'
encoder_16224:@@
encoder_16226:@)
vector_quantizer_16229:	@�'
decoder_16233:@@
decoder_16235:@'
decoder_16237: @
decoder_16239: '
decoder_16241: 
decoder_16243:
identity

identity_1��decoder/StatefulPartitionedCall�encoder/StatefulPartitionedCall�Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp�Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp�;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp�=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp�=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp�(vector_quantizer/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_1encoder_16216encoder_16218encoder_16220encoder_16222encoder_16224encoder_16226*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_15921�
(vector_quantizer/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0vector_quantizer_16229*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:��������� W@: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_16016�
decoder/StatefulPartitionedCallStatefulPartitionedCall1vector_quantizer/StatefulPartitionedCall:output:0decoder_16233decoder_16235decoder_16237decoder_16239decoder_16241decoder_16243*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_16196�
;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpencoder_16216*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/L2LossL2LossCvae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:05vae/encoder/conv2d/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpencoder_16220*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/L2LossL2LossEvae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:07vae/encoder/conv2d_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpencoder_16224*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/L2LossL2LossEvae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:07vae/encoder/conv2d_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdecoder_16237*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/L2LossL2LossMvae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0?vae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdecoder_16233*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/L2LossL2LossOvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0Avae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdecoder_16241*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/L2LossL2LossOvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0Avae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: 
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� Wq

Identity_1Identity1vector_quantizer/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCallF^vae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp>^vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp)^vector_quantizer/StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:��������� W: : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp2~
=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp2T
(vector_quantizer/StatefulPartitionedCall(vector_quantizer/StatefulPartitionedCall:%!

_user_specified_name16243:%!

_user_specified_name16241:%!

_user_specified_name16239:%
!

_user_specified_name16237:%	!

_user_specified_name16235:%!

_user_specified_name16233:%!

_user_specified_name16229:%!

_user_specified_name16226:%!

_user_specified_name16224:%!

_user_specified_name16222:%!

_user_specified_name16220:%!

_user_specified_name16218:%!

_user_specified_name16216:X T
/
_output_shapes
:��������� W
!
_user_specified_name	input_1
��
�+
__inference__traced_save_16939
file_prefixJ
0read_disablecopyonread_vae_encoder_conv2d_kernel: >
0read_1_disablecopyonread_vae_encoder_conv2d_bias: N
4read_2_disablecopyonread_vae_encoder_conv2d_1_kernel: @@
2read_3_disablecopyonread_vae_encoder_conv2d_1_bias:@N
4read_4_disablecopyonread_vae_encoder_conv2d_2_kernel:@@@
2read_5_disablecopyonread_vae_encoder_conv2d_2_bias:@<
)read_6_disablecopyonread_embeddings_vqvae:	@�V
<read_7_disablecopyonread_vae_decoder_conv2d_transpose_kernel: @H
:read_8_disablecopyonread_vae_decoder_conv2d_transpose_bias: X
>read_9_disablecopyonread_vae_decoder_conv2d_transpose_1_kernel:@@K
=read_10_disablecopyonread_vae_decoder_conv2d_transpose_1_bias:@Y
?read_11_disablecopyonread_vae_decoder_conv2d_transpose_2_kernel: K
=read_12_disablecopyonread_vae_decoder_conv2d_transpose_2_bias:-
#read_13_disablecopyonread_iteration:	 1
'read_14_disablecopyonread_learning_rate: T
:read_15_disablecopyonread_adam_m_vae_encoder_conv2d_kernel: T
:read_16_disablecopyonread_adam_v_vae_encoder_conv2d_kernel: F
8read_17_disablecopyonread_adam_m_vae_encoder_conv2d_bias: F
8read_18_disablecopyonread_adam_v_vae_encoder_conv2d_bias: V
<read_19_disablecopyonread_adam_m_vae_encoder_conv2d_1_kernel: @V
<read_20_disablecopyonread_adam_v_vae_encoder_conv2d_1_kernel: @H
:read_21_disablecopyonread_adam_m_vae_encoder_conv2d_1_bias:@H
:read_22_disablecopyonread_adam_v_vae_encoder_conv2d_1_bias:@V
<read_23_disablecopyonread_adam_m_vae_encoder_conv2d_2_kernel:@@V
<read_24_disablecopyonread_adam_v_vae_encoder_conv2d_2_kernel:@@H
:read_25_disablecopyonread_adam_m_vae_encoder_conv2d_2_bias:@H
:read_26_disablecopyonread_adam_v_vae_encoder_conv2d_2_bias:@D
1read_27_disablecopyonread_adam_m_embeddings_vqvae:	@�D
1read_28_disablecopyonread_adam_v_embeddings_vqvae:	@�^
Dread_29_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_kernel: @^
Dread_30_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_kernel: @P
Bread_31_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_bias: P
Bread_32_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_bias: `
Fread_33_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_1_kernel:@@`
Fread_34_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_1_kernel:@@R
Dread_35_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_1_bias:@R
Dread_36_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_1_bias:@`
Fread_37_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_2_kernel: `
Fread_38_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_2_kernel: R
Dread_39_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_2_bias:R
Dread_40_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_2_bias:
savev2_const
identity_83��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
Read/DisableCopyOnReadDisableCopyOnRead0read_disablecopyonread_vae_encoder_conv2d_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp0read_disablecopyonread_vae_encoder_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_1/DisableCopyOnReadDisableCopyOnRead0read_1_disablecopyonread_vae_encoder_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp0read_1_disablecopyonread_vae_encoder_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_2/DisableCopyOnReadDisableCopyOnRead4read_2_disablecopyonread_vae_encoder_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp4read_2_disablecopyonread_vae_encoder_conv2d_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_3/DisableCopyOnReadDisableCopyOnRead2read_3_disablecopyonread_vae_encoder_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp2read_3_disablecopyonread_vae_encoder_conv2d_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_4/DisableCopyOnReadDisableCopyOnRead4read_4_disablecopyonread_vae_encoder_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp4read_4_disablecopyonread_vae_encoder_conv2d_2_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_5/DisableCopyOnReadDisableCopyOnRead2read_5_disablecopyonread_vae_encoder_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp2read_5_disablecopyonread_vae_encoder_conv2d_2_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_embeddings_vqvae"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_embeddings_vqvae^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@�*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@�f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	@��
Read_7/DisableCopyOnReadDisableCopyOnRead<read_7_disablecopyonread_vae_decoder_conv2d_transpose_kernel"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp<read_7_disablecopyonread_vae_decoder_conv2d_transpose_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0v
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_8/DisableCopyOnReadDisableCopyOnRead:read_8_disablecopyonread_vae_decoder_conv2d_transpose_bias"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp:read_8_disablecopyonread_vae_decoder_conv2d_transpose_bias^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_9/DisableCopyOnReadDisableCopyOnRead>read_9_disablecopyonread_vae_decoder_conv2d_transpose_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp>read_9_disablecopyonread_vae_decoder_conv2d_transpose_1_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0v
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_10/DisableCopyOnReadDisableCopyOnRead=read_10_disablecopyonread_vae_decoder_conv2d_transpose_1_bias"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp=read_10_disablecopyonread_vae_decoder_conv2d_transpose_1_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_11/DisableCopyOnReadDisableCopyOnRead?read_11_disablecopyonread_vae_decoder_conv2d_transpose_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp?read_11_disablecopyonread_vae_decoder_conv2d_transpose_2_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_12/DisableCopyOnReadDisableCopyOnRead=read_12_disablecopyonread_vae_decoder_conv2d_transpose_2_bias"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp=read_12_disablecopyonread_vae_decoder_conv2d_transpose_2_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_13/DisableCopyOnReadDisableCopyOnRead#read_13_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp#read_13_disablecopyonread_iteration^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_14/DisableCopyOnReadDisableCopyOnRead'read_14_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp'read_14_disablecopyonread_learning_rate^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_15/DisableCopyOnReadDisableCopyOnRead:read_15_disablecopyonread_adam_m_vae_encoder_conv2d_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp:read_15_disablecopyonread_adam_m_vae_encoder_conv2d_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_16/DisableCopyOnReadDisableCopyOnRead:read_16_disablecopyonread_adam_v_vae_encoder_conv2d_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp:read_16_disablecopyonread_adam_v_vae_encoder_conv2d_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_17/DisableCopyOnReadDisableCopyOnRead8read_17_disablecopyonread_adam_m_vae_encoder_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp8read_17_disablecopyonread_adam_m_vae_encoder_conv2d_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_18/DisableCopyOnReadDisableCopyOnRead8read_18_disablecopyonread_adam_v_vae_encoder_conv2d_bias"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp8read_18_disablecopyonread_adam_v_vae_encoder_conv2d_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_19/DisableCopyOnReadDisableCopyOnRead<read_19_disablecopyonread_adam_m_vae_encoder_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp<read_19_disablecopyonread_adam_m_vae_encoder_conv2d_1_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_20/DisableCopyOnReadDisableCopyOnRead<read_20_disablecopyonread_adam_v_vae_encoder_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp<read_20_disablecopyonread_adam_v_vae_encoder_conv2d_1_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_21/DisableCopyOnReadDisableCopyOnRead:read_21_disablecopyonread_adam_m_vae_encoder_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp:read_21_disablecopyonread_adam_m_vae_encoder_conv2d_1_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_22/DisableCopyOnReadDisableCopyOnRead:read_22_disablecopyonread_adam_v_vae_encoder_conv2d_1_bias"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp:read_22_disablecopyonread_adam_v_vae_encoder_conv2d_1_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_23/DisableCopyOnReadDisableCopyOnRead<read_23_disablecopyonread_adam_m_vae_encoder_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp<read_23_disablecopyonread_adam_m_vae_encoder_conv2d_2_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_24/DisableCopyOnReadDisableCopyOnRead<read_24_disablecopyonread_adam_v_vae_encoder_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp<read_24_disablecopyonread_adam_v_vae_encoder_conv2d_2_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_25/DisableCopyOnReadDisableCopyOnRead:read_25_disablecopyonread_adam_m_vae_encoder_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp:read_25_disablecopyonread_adam_m_vae_encoder_conv2d_2_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_26/DisableCopyOnReadDisableCopyOnRead:read_26_disablecopyonread_adam_v_vae_encoder_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp:read_26_disablecopyonread_adam_v_vae_encoder_conv2d_2_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_27/DisableCopyOnReadDisableCopyOnRead1read_27_disablecopyonread_adam_m_embeddings_vqvae"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp1read_27_disablecopyonread_adam_m_embeddings_vqvae^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@�*
dtype0p
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@�f
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:	@��
Read_28/DisableCopyOnReadDisableCopyOnRead1read_28_disablecopyonread_adam_v_embeddings_vqvae"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp1read_28_disablecopyonread_adam_v_embeddings_vqvae^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@�*
dtype0p
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@�f
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:	@��
Read_29/DisableCopyOnReadDisableCopyOnReadDread_29_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_kernel"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOpDread_29_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_30/DisableCopyOnReadDisableCopyOnReadDread_30_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOpDread_30_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_31/DisableCopyOnReadDisableCopyOnReadBread_31_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOpBread_31_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_32/DisableCopyOnReadDisableCopyOnReadBread_32_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_bias"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOpBread_32_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_33/DisableCopyOnReadDisableCopyOnReadFread_33_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOpFread_33_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_1_kernel^Read_33/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_34/DisableCopyOnReadDisableCopyOnReadFread_34_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOpFread_34_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_1_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_35/DisableCopyOnReadDisableCopyOnReadDread_35_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_1_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOpDread_35_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_1_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_36/DisableCopyOnReadDisableCopyOnReadDread_36_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_1_bias"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOpDread_36_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_1_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_37/DisableCopyOnReadDisableCopyOnReadFread_37_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOpFread_37_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_2_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_38/DisableCopyOnReadDisableCopyOnReadFread_38_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOpFread_38_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_2_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_39/DisableCopyOnReadDisableCopyOnReadDread_39_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_2_bias"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOpDread_39_disablecopyonread_adam_m_vae_decoder_conv2d_transpose_2_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_40/DisableCopyOnReadDisableCopyOnReadDread_40_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_2_bias"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOpDread_40_disablecopyonread_adam_v_vae_decoder_conv2d_transpose_2_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*�
value�B�*B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *8
dtypes.
,2*	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_82Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_83IdentityIdentity_82:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_83Identity_83:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=*9

_output_shapes
: 

_user_specified_nameConst:J)F
D
_user_specified_name,*Adam/v/vae/decoder/conv2d_transpose_2/bias:J(F
D
_user_specified_name,*Adam/m/vae/decoder/conv2d_transpose_2/bias:L'H
F
_user_specified_name.,Adam/v/vae/decoder/conv2d_transpose_2/kernel:L&H
F
_user_specified_name.,Adam/m/vae/decoder/conv2d_transpose_2/kernel:J%F
D
_user_specified_name,*Adam/v/vae/decoder/conv2d_transpose_1/bias:J$F
D
_user_specified_name,*Adam/m/vae/decoder/conv2d_transpose_1/bias:L#H
F
_user_specified_name.,Adam/v/vae/decoder/conv2d_transpose_1/kernel:L"H
F
_user_specified_name.,Adam/m/vae/decoder/conv2d_transpose_1/kernel:H!D
B
_user_specified_name*(Adam/v/vae/decoder/conv2d_transpose/bias:H D
B
_user_specified_name*(Adam/m/vae/decoder/conv2d_transpose/bias:JF
D
_user_specified_name,*Adam/v/vae/decoder/conv2d_transpose/kernel:JF
D
_user_specified_name,*Adam/m/vae/decoder/conv2d_transpose/kernel:73
1
_user_specified_nameAdam/v/embeddings_vqvae:73
1
_user_specified_nameAdam/m/embeddings_vqvae:@<
:
_user_specified_name" Adam/v/vae/encoder/conv2d_2/bias:@<
:
_user_specified_name" Adam/m/vae/encoder/conv2d_2/bias:B>
<
_user_specified_name$"Adam/v/vae/encoder/conv2d_2/kernel:B>
<
_user_specified_name$"Adam/m/vae/encoder/conv2d_2/kernel:@<
:
_user_specified_name" Adam/v/vae/encoder/conv2d_1/bias:@<
:
_user_specified_name" Adam/m/vae/encoder/conv2d_1/bias:B>
<
_user_specified_name$"Adam/v/vae/encoder/conv2d_1/kernel:B>
<
_user_specified_name$"Adam/m/vae/encoder/conv2d_1/kernel:>:
8
_user_specified_name Adam/v/vae/encoder/conv2d/bias:>:
8
_user_specified_name Adam/m/vae/encoder/conv2d/bias:@<
:
_user_specified_name" Adam/v/vae/encoder/conv2d/kernel:@<
:
_user_specified_name" Adam/m/vae/encoder/conv2d/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:C?
=
_user_specified_name%#vae/decoder/conv2d_transpose_2/bias:EA
?
_user_specified_name'%vae/decoder/conv2d_transpose_2/kernel:C?
=
_user_specified_name%#vae/decoder/conv2d_transpose_1/bias:E
A
?
_user_specified_name'%vae/decoder/conv2d_transpose_1/kernel:A	=
;
_user_specified_name#!vae/decoder/conv2d_transpose/bias:C?
=
_user_specified_name%#vae/decoder/conv2d_transpose/kernel:0,
*
_user_specified_nameembeddings_vqvae:95
3
_user_specified_namevae/encoder/conv2d_2/bias:;7
5
_user_specified_namevae/encoder/conv2d_2/kernel:95
3
_user_specified_namevae/encoder/conv2d_1/bias:;7
5
_user_specified_namevae/encoder/conv2d_1/kernel:73
1
_user_specified_namevae/encoder/conv2d/bias:95
3
_user_specified_namevae/encoder/conv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
#__inference_signature_wrapper_16362
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@�#
	unknown_6:@@
	unknown_7:@#
	unknown_8: @
	unknown_9: $

unknown_10: 

unknown_11:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_15845w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� W<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:��������� W: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16358:%!

_user_specified_name16356:%!

_user_specified_name16354:%
!

_user_specified_name16352:%	!

_user_specified_name16350:%!

_user_specified_name16348:%!

_user_specified_name16346:%!

_user_specified_name16344:%!

_user_specified_name16342:%!

_user_specified_name16340:%!

_user_specified_name16338:%!

_user_specified_name16336:%!

_user_specified_name16334:X T
/
_output_shapes
:��������� W
!
_user_specified_name	input_1
�
�
(__inference_conv2d_1_layer_call_fn_16562

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15882w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� W@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� W : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16558:%!

_user_specified_name16556:W S
/
_output_shapes
:��������� W 
 
_user_specified_nameinputs
�

�
__inference_loss_fn_1_16410`
Fvae_encoder_conv2d_1_kernel_regularizer_l2loss_readvariableop_resource: @
identity��=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp�
=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpFvae_encoder_conv2d_1_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
: @*
dtype0�
.vae/encoder/conv2d_1/kernel/Regularizer/L2LossL2LossEvae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
+vae/encoder/conv2d_1/kernel/Regularizer/mulMul6vae/encoder/conv2d_1/kernel/Regularizer/mul/x:output:07vae/encoder/conv2d_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentity/vae/encoder/conv2d_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: b
NoOpNoOp>^vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2~
=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp=vae/encoder/conv2d_1/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�

�
__inference_loss_fn_0_16402^
Dvae_encoder_conv2d_kernel_regularizer_l2loss_readvariableop_resource: 
identity��;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp�
;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpDvae_encoder_conv2d_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/L2LossL2LossCvae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:05vae/encoder/conv2d/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: k
IdentityIdentity-vae/encoder/conv2d/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp<^vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2z
;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�)
�
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_16016
input_11
matmul_readvariableop_resource:	@�
identity

identity_1��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOpJ
ShapeShapeinput_1*
T0*
_output_shapes
::��^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   e
ReshapeReshapeinput_1Reshape/shape:output:0*
T0*'
_output_shapes
:���������@u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0t
MatMulMatMulReshape:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @^
powPowReshape:output:0pow/y:output:0*
T0*'
_output_shapes
:���������@W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :v
SumSumpow:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(n
ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
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
:	@�Y
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : _
Sum_1Sum	pow_1:z:0 Sum_1/reduction_indices:output:0*
T0*
_output_shapes	
:�]
addAddV2Sum:output:0Sum_1:output:0*
T0*(
_output_shapes
:����������J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @_
mulMulmul/x:output:0MatMul:product:0*
T0*(
_output_shapes
:����������O
subSubadd:z:0mul:z:0*
T0*(
_output_shapes
:����������R
ArgMin/dimensionConst*
_output_shapes
: *
dtype0*
value	B :b
ArgMinArgMinsub:z:0ArgMin/dimension:output:0*
T0*#
_output_shapes
:���������U
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?V
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
B :��
one_hotOneHotArgMin:output:0one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
T0*(
_output_shapes
:����������w
MatMul_1/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
MatMul_1MatMulone_hot:output:0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@*
transpose_b(r
	Reshape_1ReshapeMatMul_1:product:0Shape:output:0*
T0*/
_output_shapes
:��������� W@j
StopGradientStopGradientReshape_1:output:0*
T0*/
_output_shapes
:��������� W@f
sub_1SubStopGradient:output:0input_1*
T0*/
_output_shapes
:��������� W@L
pow_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_2Pow	sub_1:z:0pow_2/y:output:0*
T0*/
_output_shapes
:��������� W@^
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
 *  �>N
mul_1Mulmul_1/x:output:0Mean:output:0*
T0*
_output_shapes
: a
StopGradient_1StopGradientinput_1*
T0*/
_output_shapes
:��������� W@s
sub_2SubReshape_1:output:0StopGradient_1:output:0*
T0*/
_output_shapes
:��������� W@L
pow_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @c
pow_3Pow	sub_2:z:0pow_3/y:output:0*
T0*/
_output_shapes
:��������� W@`
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
:��������� W@c
StopGradient_2StopGradient	sub_3:z:0*
T0*/
_output_shapes
:��������� W@j
add_2AddV2input_1StopGradient_2:output:0*
T0*/
_output_shapes
:��������� W@`
IdentityIdentity	add_2:z:0^NoOp*
T0*/
_output_shapes
:��������� W@I

Identity_1Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: e
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:��������� W@: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:X T
/
_output_shapes
:��������� W@
!
_user_specified_name	input_1
�
�
0__inference_conv2d_transpose_layer_call_fn_16586

inputs!
unknown: @
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_16062�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16582:%!

_user_specified_name16580:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
__inference_loss_fn_5_16474j
Pvae_decoder_conv2d_transpose_2_kernel_regularizer_l2loss_readvariableop_resource: 
identity��Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpPvae_decoder_conv2d_transpose_2_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
: *
dtype0�
8vae/decoder/conv2d_transpose_2/kernel/Regularizer/L2LossL2LossOvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
5vae/decoder/conv2d_transpose_2/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul/x:output:0Avae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity9vae/decoder/conv2d_transpose_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: l
NoOpNoOpH^vae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Gvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOpGvae/decoder/conv2d_transpose_2/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�

�
'__inference_decoder_layer_call_fn_16213
input_1!
unknown:@@
	unknown_0:@#
	unknown_1: @
	unknown_2: #
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_16196w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� W<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':��������� W@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16209:%!

_user_specified_name16207:%!

_user_specified_name16205:%!

_user_specified_name16203:%!

_user_specified_name16201:%!

_user_specified_name16199:X T
/
_output_shapes
:��������� W@
!
_user_specified_name	input_1
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_16553

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W *
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
:��������� W X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� W �
;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/L2LossL2LossCvae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:05vae/encoder/conv2d/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� W �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� W: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� W
 
_user_specified_nameinputs
�
�
0__inference_vector_quantizer_layer_call_fn_16024
input_1
unknown:	@�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:��������� W@: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_16016w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� W@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:��������� W@: 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16019:X T
/
_output_shapes
:��������� W@
!
_user_specified_name	input_1
�

�
'__inference_encoder_layer_call_fn_15938
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� W@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_15921w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� W@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':��������� W: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name15934:%!

_user_specified_name15932:%!

_user_specified_name15930:%!

_user_specified_name15928:%!

_user_specified_name15926:%!

_user_specified_name15924:X T
/
_output_shapes
:��������� W
!
_user_specified_name	input_1
��
�
!__inference__traced_restore_17071
file_prefixD
*assignvariableop_vae_encoder_conv2d_kernel: 8
*assignvariableop_1_vae_encoder_conv2d_bias: H
.assignvariableop_2_vae_encoder_conv2d_1_kernel: @:
,assignvariableop_3_vae_encoder_conv2d_1_bias:@H
.assignvariableop_4_vae_encoder_conv2d_2_kernel:@@:
,assignvariableop_5_vae_encoder_conv2d_2_bias:@6
#assignvariableop_6_embeddings_vqvae:	@�P
6assignvariableop_7_vae_decoder_conv2d_transpose_kernel: @B
4assignvariableop_8_vae_decoder_conv2d_transpose_bias: R
8assignvariableop_9_vae_decoder_conv2d_transpose_1_kernel:@@E
7assignvariableop_10_vae_decoder_conv2d_transpose_1_bias:@S
9assignvariableop_11_vae_decoder_conv2d_transpose_2_kernel: E
7assignvariableop_12_vae_decoder_conv2d_transpose_2_bias:'
assignvariableop_13_iteration:	 +
!assignvariableop_14_learning_rate: N
4assignvariableop_15_adam_m_vae_encoder_conv2d_kernel: N
4assignvariableop_16_adam_v_vae_encoder_conv2d_kernel: @
2assignvariableop_17_adam_m_vae_encoder_conv2d_bias: @
2assignvariableop_18_adam_v_vae_encoder_conv2d_bias: P
6assignvariableop_19_adam_m_vae_encoder_conv2d_1_kernel: @P
6assignvariableop_20_adam_v_vae_encoder_conv2d_1_kernel: @B
4assignvariableop_21_adam_m_vae_encoder_conv2d_1_bias:@B
4assignvariableop_22_adam_v_vae_encoder_conv2d_1_bias:@P
6assignvariableop_23_adam_m_vae_encoder_conv2d_2_kernel:@@P
6assignvariableop_24_adam_v_vae_encoder_conv2d_2_kernel:@@B
4assignvariableop_25_adam_m_vae_encoder_conv2d_2_bias:@B
4assignvariableop_26_adam_v_vae_encoder_conv2d_2_bias:@>
+assignvariableop_27_adam_m_embeddings_vqvae:	@�>
+assignvariableop_28_adam_v_embeddings_vqvae:	@�X
>assignvariableop_29_adam_m_vae_decoder_conv2d_transpose_kernel: @X
>assignvariableop_30_adam_v_vae_decoder_conv2d_transpose_kernel: @J
<assignvariableop_31_adam_m_vae_decoder_conv2d_transpose_bias: J
<assignvariableop_32_adam_v_vae_decoder_conv2d_transpose_bias: Z
@assignvariableop_33_adam_m_vae_decoder_conv2d_transpose_1_kernel:@@Z
@assignvariableop_34_adam_v_vae_decoder_conv2d_transpose_1_kernel:@@L
>assignvariableop_35_adam_m_vae_decoder_conv2d_transpose_1_bias:@L
>assignvariableop_36_adam_v_vae_decoder_conv2d_transpose_1_bias:@Z
@assignvariableop_37_adam_m_vae_decoder_conv2d_transpose_2_kernel: Z
@assignvariableop_38_adam_v_vae_decoder_conv2d_transpose_2_kernel: L
>assignvariableop_39_adam_m_vae_decoder_conv2d_transpose_2_bias:L
>assignvariableop_40_adam_v_vae_decoder_conv2d_transpose_2_bias:
identity_42��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*�
value�B�*B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp*assignvariableop_vae_encoder_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp*assignvariableop_1_vae_encoder_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp.assignvariableop_2_vae_encoder_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp,assignvariableop_3_vae_encoder_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp.assignvariableop_4_vae_encoder_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp,assignvariableop_5_vae_encoder_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_embeddings_vqvaeIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp6assignvariableop_7_vae_decoder_conv2d_transpose_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp4assignvariableop_8_vae_decoder_conv2d_transpose_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp8assignvariableop_9_vae_decoder_conv2d_transpose_1_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp7assignvariableop_10_vae_decoder_conv2d_transpose_1_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_vae_decoder_conv2d_transpose_2_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp7assignvariableop_12_vae_decoder_conv2d_transpose_2_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_iterationIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp!assignvariableop_14_learning_rateIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp4assignvariableop_15_adam_m_vae_encoder_conv2d_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_v_vae_encoder_conv2d_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp2assignvariableop_17_adam_m_vae_encoder_conv2d_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp2assignvariableop_18_adam_v_vae_encoder_conv2d_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_m_vae_encoder_conv2d_1_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_v_vae_encoder_conv2d_1_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_m_vae_encoder_conv2d_1_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_v_vae_encoder_conv2d_1_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_m_vae_encoder_conv2d_2_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_v_vae_encoder_conv2d_2_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_m_vae_encoder_conv2d_2_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_v_vae_encoder_conv2d_2_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_m_embeddings_vqvaeIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_v_embeddings_vqvaeIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp>assignvariableop_29_adam_m_vae_decoder_conv2d_transpose_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp>assignvariableop_30_adam_v_vae_decoder_conv2d_transpose_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp<assignvariableop_31_adam_m_vae_decoder_conv2d_transpose_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp<assignvariableop_32_adam_v_vae_decoder_conv2d_transpose_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp@assignvariableop_33_adam_m_vae_decoder_conv2d_transpose_1_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp@assignvariableop_34_adam_v_vae_decoder_conv2d_transpose_1_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_m_vae_decoder_conv2d_transpose_1_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp>assignvariableop_36_adam_v_vae_decoder_conv2d_transpose_1_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp@assignvariableop_37_adam_m_vae_decoder_conv2d_transpose_2_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_v_vae_decoder_conv2d_transpose_2_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp>assignvariableop_39_adam_m_vae_decoder_conv2d_transpose_2_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp>assignvariableop_40_adam_v_vae_decoder_conv2d_transpose_2_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_42IdentityIdentity_41:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_42Identity_42:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:J)F
D
_user_specified_name,*Adam/v/vae/decoder/conv2d_transpose_2/bias:J(F
D
_user_specified_name,*Adam/m/vae/decoder/conv2d_transpose_2/bias:L'H
F
_user_specified_name.,Adam/v/vae/decoder/conv2d_transpose_2/kernel:L&H
F
_user_specified_name.,Adam/m/vae/decoder/conv2d_transpose_2/kernel:J%F
D
_user_specified_name,*Adam/v/vae/decoder/conv2d_transpose_1/bias:J$F
D
_user_specified_name,*Adam/m/vae/decoder/conv2d_transpose_1/bias:L#H
F
_user_specified_name.,Adam/v/vae/decoder/conv2d_transpose_1/kernel:L"H
F
_user_specified_name.,Adam/m/vae/decoder/conv2d_transpose_1/kernel:H!D
B
_user_specified_name*(Adam/v/vae/decoder/conv2d_transpose/bias:H D
B
_user_specified_name*(Adam/m/vae/decoder/conv2d_transpose/bias:JF
D
_user_specified_name,*Adam/v/vae/decoder/conv2d_transpose/kernel:JF
D
_user_specified_name,*Adam/m/vae/decoder/conv2d_transpose/kernel:73
1
_user_specified_nameAdam/v/embeddings_vqvae:73
1
_user_specified_nameAdam/m/embeddings_vqvae:@<
:
_user_specified_name" Adam/v/vae/encoder/conv2d_2/bias:@<
:
_user_specified_name" Adam/m/vae/encoder/conv2d_2/bias:B>
<
_user_specified_name$"Adam/v/vae/encoder/conv2d_2/kernel:B>
<
_user_specified_name$"Adam/m/vae/encoder/conv2d_2/kernel:@<
:
_user_specified_name" Adam/v/vae/encoder/conv2d_1/bias:@<
:
_user_specified_name" Adam/m/vae/encoder/conv2d_1/bias:B>
<
_user_specified_name$"Adam/v/vae/encoder/conv2d_1/kernel:B>
<
_user_specified_name$"Adam/m/vae/encoder/conv2d_1/kernel:>:
8
_user_specified_name Adam/v/vae/encoder/conv2d/bias:>:
8
_user_specified_name Adam/m/vae/encoder/conv2d/bias:@<
:
_user_specified_name" Adam/v/vae/encoder/conv2d/kernel:@<
:
_user_specified_name" Adam/m/vae/encoder/conv2d/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:C?
=
_user_specified_name%#vae/decoder/conv2d_transpose_2/bias:EA
?
_user_specified_name'%vae/decoder/conv2d_transpose_2/kernel:C?
=
_user_specified_name%#vae/decoder/conv2d_transpose_1/bias:E
A
?
_user_specified_name'%vae/decoder/conv2d_transpose_1/kernel:A	=
;
_user_specified_name#!vae/decoder/conv2d_transpose/bias:C?
=
_user_specified_name%#vae/decoder/conv2d_transpose/kernel:0,
*
_user_specified_nameembeddings_vqvae:95
3
_user_specified_namevae/encoder/conv2d_2/bias:;7
5
_user_specified_namevae/encoder/conv2d_2/kernel:95
3
_user_specified_namevae/encoder/conv2d_1/bias:;7
5
_user_specified_namevae/encoder/conv2d_1/kernel:73
1
_user_specified_namevae/encoder/conv2d/bias:95
3
_user_specified_namevae/encoder/conv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_15862

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W *
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
:��������� W X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� W �
;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
,vae/encoder/conv2d/kernel/Regularizer/L2LossL2LossCvae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: p
+vae/encoder/conv2d/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
)vae/encoder/conv2d/kernel/Regularizer/mulMul4vae/encoder/conv2d/kernel/Regularizer/mul/x:output:05vae/encoder/conv2d/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� W �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp<^vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� W: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2z
;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp;vae/encoder/conv2d/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� W
 
_user_specified_nameinputs
�)
�
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_16109

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+���������������������������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������@�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/L2LossL2LossOvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0Avae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
__inference_loss_fn_4_16466j
Pvae_decoder_conv2d_transpose_1_kernel_regularizer_l2loss_readvariableop_resource:@@
identity��Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpPvae_decoder_conv2d_transpose_1_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
8vae/decoder/conv2d_transpose_1/kernel/Regularizer/L2LossL2LossOvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: |
7vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
5vae/decoder/conv2d_transpose_1/kernel/Regularizer/mulMul@vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul/x:output:0Avae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity9vae/decoder/conv2d_transpose_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: l
NoOpNoOpH^vae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Gvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOpGvae/decoder/conv2d_transpose_1/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�)
�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_16624

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�conv2d_transpose/ReadVariableOp�Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
valueB:�
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
valueB:�
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
valueB:�
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
valueB:�
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+��������������������������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+��������������������������� j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+��������������������������� �
Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
6vae/decoder/conv2d_transpose/kernel/Regularizer/L2LossL2LossMvae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: z
5vae/decoder/conv2d_transpose/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
3vae/decoder/conv2d_transpose/kernel/Regularizer/mulMul>vae/decoder/conv2d_transpose/kernel/Regularizer/mul/x:output:0?vae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOpF^vae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+���������������������������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp2�
Evae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOpEvae/decoder/conv2d_transpose/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16450

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� W@*
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
:��������� W@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� W@�
=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
.vae/encoder/conv2d_2/kernel/Regularizer/L2LossL2LossEvae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: r
-vae/encoder/conv2d_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�Q9�
+vae/encoder/conv2d_2/kernel/Regularizer/mulMul6vae/encoder/conv2d_2/kernel/Regularizer/mul/x:output:07vae/encoder/conv2d_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� W@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp>^vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� W@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2~
=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp=vae/encoder/conv2d_2/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:��������� W@
 
_user_specified_nameinputs
�
�
#__inference_vae_layer_call_fn_16304
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@
	unknown_5:	@�#
	unknown_6:@@
	unknown_7:@#
	unknown_8: @
	unknown_9: $

unknown_10: 

unknown_11:
identity��StatefulPartitionedCall�
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
:��������� W: */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_vae_layer_call_and_return_conditional_losses_16272w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� W<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:��������� W: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name16299:%!

_user_specified_name16297:%!

_user_specified_name16295:%
!

_user_specified_name16293:%	!

_user_specified_name16291:%!

_user_specified_name16289:%!

_user_specified_name16287:%!

_user_specified_name16285:%!

_user_specified_name16283:%!

_user_specified_name16281:%!

_user_specified_name16279:%!

_user_specified_name16277:%!

_user_specified_name16275:X T
/
_output_shapes
:��������� W
!
_user_specified_name	input_1"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0��������� WD
output_18
StatefulPartitionedCall:0��������� Wtensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	vector_quantizer

decoder
	optimizer
loss

signatures"
_tf_keras_model
~
0
1
2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
 trace_02�
#__inference_vae_layer_call_fn_16304�
���
FullArgSpec
args�	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z trace_0
�
!trace_02�
>__inference_vae_layer_call_and_return_conditional_losses_16272�
���
FullArgSpec
args�	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z!trace_0
�B�
 __inference__wrapped_model_15845input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(
layer_dict
)
latent_dim"
_tf_keras_model
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

embeddings"
_tf_keras_model
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6
layer_dict
7output_layer"
_tf_keras_model
�
8
_variables
9_iterations
:_learning_rate
;_index_dict
<
_momentums
=_velocities
>_update_step_xla"
experimentalOptimizer
 "
trackable_dict_wrapper
,
?serving_default"
signature_map
3:1 2vae/encoder/conv2d/kernel
%:# 2vae/encoder/conv2d/bias
5:3 @2vae/encoder/conv2d_1/kernel
':%@2vae/encoder/conv2d_1/bias
5:3@@2vae/encoder/conv2d_2/kernel
':%@2vae/encoder/conv2d_2/bias
#:!	@�2embeddings_vqvae
=:; @2#vae/decoder/conv2d_transpose/kernel
/:- 2!vae/decoder/conv2d_transpose/bias
?:=@@2%vae/decoder/conv2d_transpose_1/kernel
1:/@2#vae/decoder/conv2d_transpose_1/bias
?:= 2%vae/decoder/conv2d_transpose_2/kernel
1:/2#vae/decoder/conv2d_transpose_2/bias
 "
trackable_list_wrapper
5
0
	1

2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
#__inference_vae_layer_call_fn_16304input_1"�
���
FullArgSpec
args�	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_vae_layer_call_and_return_conditional_losses_16272input_1"�
���
FullArgSpec
args�	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
5
@0
A1
B2"
trackable_list_wrapper
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�
Htrace_02�
'__inference_encoder_layer_call_fn_15938�
���
FullArgSpec
args�	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zHtrace_0
�
Itrace_02�
B__inference_encoder_layer_call_and_return_conditional_losses_15921�
���
FullArgSpec
args�	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zItrace_0
:
Jlayer_1
Klayer_2"
trackable_dict_wrapper
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses

kernel
bias
 R_jit_compiled_convolution_op"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
Xtrace_02�
0__inference_vector_quantizer_layer_call_fn_16024�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zXtrace_0
�
Ytrace_02�
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_16016�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zYtrace_0
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
5
Z0
[1
\2"
trackable_list_wrapper
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
�
btrace_02�
'__inference_decoder_layer_call_fn_16213�
���
FullArgSpec
args�	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zbtrace_0
�
ctrace_02�
B__inference_decoder_layer_call_and_return_conditional_losses_16196�
���
FullArgSpec
args�	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zctrace_0
:
dlayer_1
elayer_2"
trackable_dict_wrapper
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

kernel
bias
 l_jit_compiled_convolution_op"
_tf_keras_layer
�
90
m1
n2
o3
p4
q5
r6
s7
t8
u9
v10
w11
x12
y13
z14
{15
|16
}17
~18
19
�20
�21
�22
�23
�24
�25
�26"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
m0
o1
q2
s3
u4
w5
y6
{7
}8
9
�10
�11
�12"
trackable_list_wrapper
�
n0
p1
r2
t3
v4
x5
z6
|7
~8
�9
�10
�11
�12"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
#__inference_signature_wrapper_16362input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�trace_02�
__inference_loss_fn_0_16402�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_1_16410�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_2_16418�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
 "
trackable_list_wrapper
5
J0
K1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_encoder_layer_call_fn_15938input_1"�
���
FullArgSpec
args�	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_encoder_layer_call_and_return_conditional_losses_15921input_1"�
���
FullArgSpec
args�	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
B0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_2_layer_call_fn_16435�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16450�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
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
�B�
0__inference_vector_quantizer_layer_call_fn_16024input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_16016input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�trace_02�
__inference_loss_fn_3_16458�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_4_16466�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_5_16474�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
 "
trackable_list_wrapper
5
d0
e1
72"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_decoder_layer_call_fn_16213input_1"�
���
FullArgSpec
args�	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_decoder_layer_call_and_return_conditional_losses_16196input_1"�
���
FullArgSpec
args�	
jinput
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
\0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_conv2d_transpose_2_layer_call_fn_16491�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_16529�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
8:6 2 Adam/m/vae/encoder/conv2d/kernel
8:6 2 Adam/v/vae/encoder/conv2d/kernel
*:( 2Adam/m/vae/encoder/conv2d/bias
*:( 2Adam/v/vae/encoder/conv2d/bias
::8 @2"Adam/m/vae/encoder/conv2d_1/kernel
::8 @2"Adam/v/vae/encoder/conv2d_1/kernel
,:*@2 Adam/m/vae/encoder/conv2d_1/bias
,:*@2 Adam/v/vae/encoder/conv2d_1/bias
::8@@2"Adam/m/vae/encoder/conv2d_2/kernel
::8@@2"Adam/v/vae/encoder/conv2d_2/kernel
,:*@2 Adam/m/vae/encoder/conv2d_2/bias
,:*@2 Adam/v/vae/encoder/conv2d_2/bias
(:&	@�2Adam/m/embeddings_vqvae
(:&	@�2Adam/v/embeddings_vqvae
B:@ @2*Adam/m/vae/decoder/conv2d_transpose/kernel
B:@ @2*Adam/v/vae/decoder/conv2d_transpose/kernel
4:2 2(Adam/m/vae/decoder/conv2d_transpose/bias
4:2 2(Adam/v/vae/decoder/conv2d_transpose/bias
D:B@@2,Adam/m/vae/decoder/conv2d_transpose_1/kernel
D:B@@2,Adam/v/vae/decoder/conv2d_transpose_1/kernel
6:4@2*Adam/m/vae/decoder/conv2d_transpose_1/bias
6:4@2*Adam/v/vae/decoder/conv2d_transpose_1/bias
D:B 2,Adam/m/vae/decoder/conv2d_transpose_2/kernel
D:B 2,Adam/v/vae/decoder/conv2d_transpose_2/kernel
6:42*Adam/m/vae/decoder/conv2d_transpose_2/bias
6:42*Adam/v/vae/decoder/conv2d_transpose_2/bias
�B�
__inference_loss_fn_0_16402"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_16410"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_2_16418"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
@0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_conv2d_layer_call_fn_16538�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_conv2d_layer_call_and_return_conditional_losses_16553�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
A0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_conv2d_1_layer_call_fn_16562�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16577�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
B0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv2d_2_layer_call_fn_16435inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16450inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_3_16458"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_4_16466"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_5_16474"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_conv2d_transpose_layer_call_fn_16586�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_16624�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
[0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_conv2d_transpose_1_layer_call_fn_16633�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_16671�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
\0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_conv2d_transpose_2_layer_call_fn_16491inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_16529inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
@0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_conv2d_layer_call_fn_16538inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_conv2d_layer_call_and_return_conditional_losses_16553inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
A0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv2d_1_layer_call_fn_16562inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16577inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_conv2d_transpose_layer_call_fn_16586inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_16624inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
[0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_conv2d_transpose_1_layer_call_fn_16633inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_16671inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
 __inference__wrapped_model_15845�8�5
.�+
)�&
input_1��������� W
� ";�8
6
output_1*�'
output_1��������� W�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_16577s7�4
-�*
(�%
inputs��������� W 
� "4�1
*�'
tensor_0��������� W@
� �
(__inference_conv2d_1_layer_call_fn_16562h7�4
-�*
(�%
inputs��������� W 
� ")�&
unknown��������� W@�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_16450s7�4
-�*
(�%
inputs��������� W@
� "4�1
*�'
tensor_0��������� W@
� �
(__inference_conv2d_2_layer_call_fn_16435h7�4
-�*
(�%
inputs��������� W@
� ")�&
unknown��������� W@�
A__inference_conv2d_layer_call_and_return_conditional_losses_16553s7�4
-�*
(�%
inputs��������� W
� "4�1
*�'
tensor_0��������� W 
� �
&__inference_conv2d_layer_call_fn_16538h7�4
-�*
(�%
inputs��������� W
� ")�&
unknown��������� W �
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_16671�I�F
?�<
:�7
inputs+���������������������������@
� "F�C
<�9
tensor_0+���������������������������@
� �
2__inference_conv2d_transpose_1_layer_call_fn_16633�I�F
?�<
:�7
inputs+���������������������������@
� ";�8
unknown+���������������������������@�
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_16529�I�F
?�<
:�7
inputs+��������������������������� 
� "F�C
<�9
tensor_0+���������������������������
� �
2__inference_conv2d_transpose_2_layer_call_fn_16491�I�F
?�<
:�7
inputs+��������������������������� 
� ";�8
unknown+����������������������������
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_16624�I�F
?�<
:�7
inputs+���������������������������@
� "F�C
<�9
tensor_0+��������������������������� 
� �
0__inference_conv2d_transpose_layer_call_fn_16586�I�F
?�<
:�7
inputs+���������������������������@
� ";�8
unknown+��������������������������� �
B__inference_decoder_layer_call_and_return_conditional_losses_16196x8�5
.�+
)�&
input_1��������� W@
� "4�1
*�'
tensor_0��������� W
� �
'__inference_decoder_layer_call_fn_16213m8�5
.�+
)�&
input_1��������� W@
� ")�&
unknown��������� W�
B__inference_encoder_layer_call_and_return_conditional_losses_15921x8�5
.�+
)�&
input_1��������� W
� "4�1
*�'
tensor_0��������� W@
� �
'__inference_encoder_layer_call_fn_15938m8�5
.�+
)�&
input_1��������� W
� ")�&
unknown��������� W@C
__inference_loss_fn_0_16402$�

� 
� "�
unknown C
__inference_loss_fn_1_16410$�

� 
� "�
unknown C
__inference_loss_fn_2_16418$�

� 
� "�
unknown C
__inference_loss_fn_3_16458$�

� 
� "�
unknown C
__inference_loss_fn_4_16466$�

� 
� "�
unknown C
__inference_loss_fn_5_16474$�

� 
� "�
unknown �
#__inference_signature_wrapper_16362�C�@
� 
9�6
4
input_1)�&
input_1��������� W";�8
6
output_1*�'
output_1��������� W�
>__inference_vae_layer_call_and_return_conditional_losses_16272�8�5
.�+
)�&
input_1��������� W
� "I�F
*�'
tensor_0��������� W
�
�

tensor_1_0 �
#__inference_vae_layer_call_fn_16304t8�5
.�+
)�&
input_1��������� W
� ")�&
unknown��������� W�
K__inference_vector_quantizer_layer_call_and_return_conditional_losses_16016�8�5
.�+
)�&
input_1��������� W@
� "I�F
*�'
tensor_0��������� W@
�
�

tensor_1_0 �
0__inference_vector_quantizer_layer_call_fn_16024h8�5
.�+
)�&
input_1��������� W@
� ")�&
unknown��������� W@