   M S B A M L   `   `   `  ����  SimpleWebRequest!    SimpleWebRequest.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          � Title$  Modern Products��5   	   $	��450��6!   $	��800��6.    � 	Resources 5         RoundedButton �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius  RoundedTextBox ��Name  RoundedDataGrid&   System.Windows.Controls.DataGrid��%�  &	        &	 �    &	 7    �� 5   
   " ��6&   .�5	      ��  � ��
 �����6+   �� 5
       � �� �	#FF2196F36+   �� 5       � ��$
 Bold"�6+   �� 5       � ��$
 10,5q�6(   �� 5       � ��$ 5q�6'   �� 5       � ��$ 0q�60   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ 8��6!   #��z��62   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5      5      �� 5   
   " ��6'   .�5      ��  � ��$ 5q�6'   �� 5       � �� �	#FF2196F36,   �� 5       � ��$ 2q�60   �� 5       � ��$ 5q�6(   �� 5       � �� 5       �� 5!      " ��6&   .R�5"      �� $ 4��6!   #��z��5#   !   #��z��5$   !   ._�5%      �� $ PART_ContentHost��6+   5&      5'      5)      5*      �� 5,   
   "  6(   .�5-      ��  � ��$ 0q�60   �� 5.       �@ RowBackground �	#FFF7F7F76.   �� 5/        �@ AlternatingRowBackground �	#FFECECEC69   �� 50       �@ HeadersVisibility$ Column=�62   �� 51       �@ GridLinesVisibility$
 None=�64   �� 52       � ��$ 10q�6'   53      54      .��56      �  � RowDefinitions 57   
   �� 58      $
��Auto �6   �� 59      $��* �6   �� 5:      $
��Auto �6   .+�5=   
   �� $��Products��6   $��24(�6$   $
��Bold"�62   $��Center=�5>      $��10q�61   $��0��6=     5@   
   -   5        	  Name$	 ProductsDataGrid��5@      
   AutoGenerateColumns
 .  #��[ 5A   /   $��1��5B         SelectionMode$ Single=�6    ��5@   -   ��    Columns 5C      0  *System.Windows.Controls.DataGridTextColumn  5D      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Id+6H     5E      $
 Name��6%   $ * 6L    63   �� *Name+6L     5F      $ Price��6%   $
 Auto 6N    64   �� *Price+6N     5G      $ Description��6%   $ 2* 6Z    6:   �� *Description+6Z   4  .System.Windows.Controls.DataGridTemplateColumn  5H      $
 Auto 6)      CellTemplate 5I      �� 5J      .R�5K      ��  �� Orientation$ 
Horizontal=�6)   .+�5L   "   �� -   5        $
��Edit��5L   )   #��[  68   $��2q�5M   B   $��60��6M   �� 5N   "   -   5        $��Delete��5N   )   #��[  6:   $��2q�5O   D   $��60��6O   5P      5Q      5S      5U      �� 5W   
   -   5         ��Name$ EditForm��5W      $��2��6   $y�	Collapsed=�60   $��10q�6G   ���	#FF2196F3$��1q�5X   )   $ 8��6=    �� Padding$ 10q�6N   ._�5Y      �� $ Vertical=�6   .+�5Z      �� $��Edit Product��6   $��16(�60   $
��Bold"�6>   $��0,0,0,5q�6P   �� 5\      $ 
Horizontal=�6   .+�5]      �� $��Name:��6    $��Center=�6-   $��0,0,5,0q�6H   �� 5^      -   5         ��Name$ ProductName��5^      $	��150��63   #��[ 6?   5_      �� 5a      $ 
Horizontal=�6   .+�5b      �� $��Price:��6    $��Center=�6.   $��0,0,5,0q�6I   �� 5c      -   5        $ ProductPrice��5c      $��80��64   #��[ 6?   5d      �� 5f      $ 
Horizontal=�6   .+�5g      �� $��Description:��6    $��Center=�64   $��0,0,5,0q�6O   �� 5h      -   5        $ ProductDescription��5h      $	��250��6:   #��[ 6F   5i      �� 5k      $ 
Horizontal=�6   $��Right=�66   $��0,10,0,0q�6R   .+�5l      �� -	   5         ��Name$ 
SaveButton��5l      $
��Save��61   $��80��6@   #��[  5m      $��5q�6]   �� 5n      -
   5        $ CancelButton��5n      $��Cancel��63   $��80��6D   #��[  5o      $��5q�6_   5p      5q      5r      �� 5t   
   -   5        $ AddNewButton��5t      $��2��6   $��Add New Product��64   $	��150��6N   $
��Left=�5u      $��10q�6,   #��[  68   5v      5w      5x      