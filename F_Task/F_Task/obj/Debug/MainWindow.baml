   M S B A M L   `   `   `  ����A  =F_Task, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:F_TaskF_Task  5   	       F_Task.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:F_Task     5   	   -   5          � Title$  
MainWindow��5   	   $��596.4��6   $��523.2��6+    � WindowStartupLocation$ CenterScreen=�69    � Icon$ icons8_road_closure.ico��6u   .��5	      � ���#313131$��0,0,0,-0.012q�6    .+�5   
   �� -   5         ��Name$ 	TXTSearch��5      $��Center=�6&    �� 
CaretBrush �#FFF$��25(�6Z   ���#FFF���#48C9B0
������ $��40��6�   $��
90,10,10,0q�6�   $	��Top=�6�   6�   �� 5   
   ���#138D75$	��0.5q�6&   $��40��6<   $��	10,10,0,0q�6H   $	��Top=�6[   $��Center=�6s   $��Center=�6�   ���#FFF$��15(�6�   $��Search >��6�   $
��Left=�6�   $��75��6  �� 5   
   $��14(�6   ���#FFF$��
Name / PID��60   $��Center=�6E   $��Center=�6g   $��35��6�   $	��0.5q�6�   ���#F7DC6F$��
10,55,10,0q�6�   $	��Top=�6�   �� 5   
   -   5         ��Name$ LstShow��5   {   $��Center=�6   ���#008080���#FFFFFF
������ $��10,95,10,56.812q�6�   $��15(�6�    � ContextMenu 5      �� 5      .@�5      m� -   5        $��>_ Force Kill��5      66   m� 5      -   5        $��>_ Kill��5      60   m� 5      -   5        $"��Kill All Proc With This Name��5      6E   m� 5      -   5        $��	Loop Kill��5      62   m� 5      -   5        $��Refresh List��5      65   5      5      �� 5    
   -	   5         ��Name$ 	lblLooper��5       ���#E74C3C$	��0.5q�69   $��45��6O   $��10,0,66.8,6.812q�6[   $��Bottom=�6t   $��Center=�6�   $��Center=�6�   ���#FFF$��20(�6�   .��6�   No Looper Kill6  �� 5$   
   -
   5         � ToolTip$ 	Stop Loop��5$   *   
������ $��Right=�6W   $��45��6s   $��Bottom=�6   $
��51.8��6�   $��30(�6�   ���#FFF���#E74C3C$��0,0,10,6.812q�6�   .��5%      � .+�5&      �� $��File/stopimg.png��6   5'      5(      5*      5+      