`timescale 1ns / 1ps

//��Ҫ��vga.v���������ʱ������Ϊd5
 module testbench; //����testbench����
  reg CLK;
  reg RSTn; //�ź�����
  reg [4:0] button;
  reg [15:0] sw;
  wire v;
  wire h;
  wire [11:0]rgb;
  wire [15:0]LED;
  //�����shift_reg��Ƶ�ʵ����
top dut(
.CLK (CLK), 
.RSTn (RSTn), 
.button (button),
.sw (sw),
.v(v),
.h(h),
.rgb(rgb),
.LED(LED));

   //�˽��̿�������������ʱ��
  initial begin
  CLK = 0;
  forever #1 CLK = ~CLK;
  end
  initial begin//�˹��̿�ָ���̼���
    RSTn = 0;
    button = 5'b00000;
    sw = 16'b0000000000000000;
   #200
    RSTn = 1;
    sw = 16'b0000000000000001;
   #200
    sw = 16'b0000000000000000;
   #200
    button = 5'b00001;//��
   #200
    button = 5'b00000;
   #200
    button = 5'b00100;//��
   #200
    button = 5'b00000;
   #200
    button = 5'b01000;//��
   #200
   button = 5'b00000;
   #200
   button = 5'b01000;//��
   #200
   button = 5'b00000;
   #200
   sw = 16'b0000000000000010;
   #200
   sw = 16'b0000000000000000;
   #200
   button = 5'b00100;//��1
   #200
   button = 5'b00000;
   #200
   button = 5'b00100;//��2
   #200
   button = 5'b00000;
   #200
   button = 5'b00100;//��3
   #200
   button = 5'b00000;
   #200
   button = 5'b00100;//��4
   #200
   button = 5'b00000;
   #1000 $stop;
  end
 endmodule
