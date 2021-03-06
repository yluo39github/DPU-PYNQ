//Setting the arch of DPU, For more details, Please read the PG338 


/*====== Architecture Options ======*/
// |------------------------------------------------------|
// | Support 8 DPU size
// +------------------------------------------------------+
// | `define B512               
// +------------------------------------------------------+
// | `deifne B800                 
// +------------------------------------------------------+
// | `deifne B1024                 
// +------------------------------------------------------+
// | `deifne B1152                 
// +------------------------------------------------------+
// | `deifne B1600                 
// +------------------------------------------------------+
// | `deifne B2304                 
// +------------------------------------------------------+
// | `deifne B3136                 
// +------------------------------------------------------+
// | `deifne B4096                 
// |------------------------------------------------------|

`define B4096 

// |------------------------------------------------------|
// |If the FPGA has Uram. You can define URAM_EN parameter               
// +------------------------------------------------------+
// | for zcu104 : `define URAM_ENABLE               
// +------------------------------------------------------+
// | for zcu102 : `define URAM_DISABLE                 
// |------------------------------------------------------|

`define URAM_DISABLE

//config URAM
`ifdef URAM_ENABLE
    `define def_UBANK_IMG_N          5
    `define def_UBANK_WGT_N          17
    `define def_UBANK_BIAS           1
`elsif URAM_DISABLE
    `define def_UBANK_IMG_N          0
    `define def_UBANK_WGT_N          0
    `define def_UBANK_BIAS           0
`endif

// |------------------------------------------------------|
// | RAM Usage Configuration              
// +------------------------------------------------------+
// | RAM Usage High : `define RAM_USAGE_HIGH               
// +------------------------------------------------------+
// | RAM Usage Low  : `define RAM_USAGE_LOW                 
// |------------------------------------------------------|

`define RAM_USAGE_LOW

// |------------------------------------------------------|
// | Channel Augmentation Configuration
// +------------------------------------------------------+
// | Enable  : `define CHANNEL_AUGMENTATION_ENABLE              
// +------------------------------------------------------+
// | Disable : `define CHANNEL_AUGMENTATION_DISABLE                
// |------------------------------------------------------|

`define CHANNEL_AUGMENTATION_ENABLE

// |------------------------------------------------------|
// | DepthWiseConv Configuration
// +------------------------------------------------------+
// | Enable  : `define DWCV_ENABLE              
// +------------------------------------------------------+
// | Disable : `define DWCV_DISABLE               
// |------------------------------------------------------|

`define DWCV_ENABLE

// |------------------------------------------------------|
// | Pool Average Configuration
// +------------------------------------------------------+
// | Enable  : `define POOL_AVG_ENABLE              
// +------------------------------------------------------+
// | Disable : `define POOL_AVG_DISABLE                
// |------------------------------------------------------|

`define POOL_AVG_ENABLE

// |------------------------------------------------------|
// | RELU Type Configuration
// +------------------------------------------------------+
// | `define RELU_RELU6
// +------------------------------------------------------+
// | `define RELU_LEAKYRELU_RELU6
// |------------------------------------------------------|

`define RELU_LEAKYRELU_RELU6

// |------------------------------------------------------|
// | DSP48 Usage Configuration
// +------------------------------------------------------+
// | `define DSP48_USAGE_HIGH              
// +------------------------------------------------------+
// | `define DSP48_USAGE_LOW                
// |------------------------------------------------------|

`define DSP48_USAGE_LOW  




 
