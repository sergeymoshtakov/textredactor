   M S B A M L   `   `   `  ����  WpfApp1    WpfApp1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$"  WPF RichTextBox with Buttons��5   	   $	��400��6.   $	��650��6;    J� InputBindings 5      �� 5   
   
 �� Key$ B��65    �� 	Modifiers$ Controlf�6=    �� Command 6   �� *BoldCommand+6=   �� 5   
   $ I��67   $ Controlf�6?    6   �� *ItalicCommand+6?   �� 5   
   $ U��6:   $ Controlf�6B    6   �� *UnderlineCommand+6B   �� 5	   
   $ C��66   $ Controlf�6>    6   �� *ClearCommand+6>   �� 5
   
   $ D1��67   $ Controlf�6@    6   �� *Font15Command+6@   �� 5   
   $ D2��67   $ Controlf�6@    6   �� *Font39Command+6@   �� 5   
   $ R��69   $ Controlf�6A    6   �� *RedColorCommand+6A   �� 5   
   $ G��6;   $ Controlf�6C    6   �� *GreenColorCommand+6C   �� 5   
   $ B��6:   $ Controlf�6B    6   �� *BlueColorCommand+6B   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��Center=�6.   .+�5      �� $
��Bold��6   $��50��6$   $��5q�6/   ��6:   �� *BoldCommand+ 5      �� 5      $ B��6A   $ Controlf�6I    6!   �� *BoldCommand+6I   5      �� 5      $��Italic��6   $��50��6&   $��5q�61   ��6<   �� *ItalicCommand+ 5      �� 5      $ I��6C   $ Controlf�6K    6!   �� *ItalicCommand+6K   5       �� 5!      $��	Underline��6   $��80��6)   $��5q�64   ��6?   �� *UnderlineCommand+ 5"      �� 5#      $ U��6F   $ Controlf�6N    6!   �� *UnderlineCommand+6N   5%      �� 5&      $��Clear��6   $��50��6%   $��5q�60   ��6;   �� *ClearCommand+ 5'      �� 5(      $ C��6B   $ Controlf�6J    6!   �� *ClearCommand+6J   5*      �� 5+      $��Font 15��6   $��70��6'   $��5q�62   ��6=   �� *Font15Command+ 5,      �� 5-      $ D1��6C   $ Controlf�6L    6!   �� *Font15Command+6L   5/      �� 50      $��Font 39��6   $��70��6'   $��5q�62   ��6=   �� *Font39Command+ 51      �� 52      $ D2��6C   $ Controlf�6L    6!   �� *Font39Command+6L   54      �� 55      $	��Red��6   $��50��6#   $��5q�6.   ��69   �� *RedColorCommand+ 56      �� 57      $ R��6E   $ Controlf�6M    6!   �� *RedColorCommand+6M   59      �� 5:      $��Green��6   $��50��6%   $��5q�60   ��6;   �� *GreenColorCommand+ 5;      �� 5<      $ G��6G   $ Controlf�6O    6!   �� *GreenColorCommand+6O   5>      �� 5?      $
��Blue��6   $��50��6$   $��5q�6/   ��6:   �� *BlueColorCommand+ 5@      �� 5A      $ B��6F   $ Controlf�6N    6!   �� *BlueColorCommand+6N   5C      5D      �� 5F   
   -   5         ��Name$ 	rtbEditor��5F   #   $��1��6   5G      5H      5I      