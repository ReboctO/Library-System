   M S B A M L   `   `   `  ����I  ELibrary-System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Libary_System.ViewLibary_System.View  5   	   C&clr-namespace:Libary_System.ViewModelsLibary_System.ViewModels  5	   	   K*clr-namespace:Libary_System.CustomControlsLibary_System.CustomControls  5
   	   #    Libary_System.View.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=5.0.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   ,local clr-namespace:Libary_System.View  5   	   7
viewModels&clr-namespace:Libary_System.ViewModels  5	   	   ?customcontrols*clr-namespace:Libary_System.CustomControls  5
   	   -   5          � Title$  MainView��5   	   $	��645��5   	   $	��875��5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � AllowsTransparency$
 True��5   	   
������  � 
ResizeMode$ NoResize=�5   	   $��18(�5   	    � DataContext 5      -   'Libary_System.ViewModels.LoginViewModel  5   
    � 	Resources 5         BooleanToVisibility��%   &	        �� 5   
   6'   5      y�5      �� 5   
    �� Path$ IsViewVisible�6    �� Mode$ TwoWay=�6'   	 �� 	Converter#	 [  65   .��5$      � .+�5&   
   �� 
 �� CornerRadius$
 10��6   $��5q�5'   	   ��5)      �� 5*       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�5+      .��5,      �   windowBorder1 � Color# [ 6#    � Offset$ 0Q�5-      � 5.      $ #da34ae��6#   $
 0.75Q�5/      � 50      $ #462ad8��6#   $ 1Q�51      52      ��55      �� 56      $	 0,1&�6&   $	 1,0&�57      .��58      � $ #060531��6#   $ 0Q�59      � 5:      $ #1b1448��6#   $
 0.75Q�5;      5<      ._�5@      �  � ColumnDefinitions 5A      �� 5B      $��* �6'   �� 5C      $��1.22* �6'   .+�5F      �� $��0��6   ���#060531$
 	10 0 0 10��5H      $
}�True��5I       J� Clip 5K      �� 5L       �� Rect$ 0,0,400, 875�6,    �� RadiusX$ 10Q�5M   ,    �� RadiusY$ 10Q�5N   ,   ._�5R      �� $��	0 180 0 0q�6!   $	��Top=�5S   !   .+�5T      �� $	�� 35(�6$   $
��Bold"�5U   $   $��Welcome to Readify��5V   $   ���#da34ae �� TextAlignment$ Center=�5X   $   �� 5Y      $��18(�6$   $��SemiBold"�5Z   $   ���#da34ae$ Center=�5\   $   $*��$Your Literary Adventure Begins Here!��5]   $   �� 5_      $��15(�6$   $��Light"�5`   $   $����Discover a world of literature at your fingertips with Readify. Dive into a treasure trove of books, articles, and resources from the comfort of your own device.��5b   $   ���#da34ae$��
50 60 50 0q�5d   $   $	��131��5e   $   $	��299��61   $
��Wrap=�5f   $   $ Center=�5g   $   5i      5k      �� 5m      $��1��6   ._�5n      �  � RowDefinitions 5o      �� 5p      $��30 �6,   �� 5q      $��* �6,   .+�5s      ��  �� Orientation$ 
Horizontal=�6%   $��0��5t   %   .+�5w      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�5x   )   $��20��5y   )   $��20��5z   )    J� Opacity$	 0.3Q�5{   )   $��Center=�5|   )   $��center=�5}   )   ���#da34ae
���   �$��1q�5�      5�      �� 5�      $��1��6%   $��Center=�5�   %   $�� 75 0q�5�   %   .+�5�      �� $��Username��6(   ���#da34ae$��20(�5�   (   $��Medium"�5�   (   $��Monteserrat)�5�   (   �� 5�      -   5         ��Name$ txtUser��5�   &   ���#da34ae$��0,0,0,2q�5�   &   
������ ���#da34ae �� 
CaretBrush
 �����$��28��5�   &   $��Center=�5�   &   $��0,5,0,5q�5�   &   ��5�   &   �� *
UserName+ �� UpdateSourceTrigger$ PropertyChanged=�5�   &   �� 5�      $��Password��6(   ���#da34ae$��20(�5�   (   $��Medium"�5�   (   $��Monteserrat)�5�   (   $��28��5�   (   $��0 10 0 0q�5�   (   6   0Libary_System.CustomControls.BindablePasswordBox  5�      $��28��5�   A   $��0 5 0 0q�5�   A      Password 5�   A   �� *
Password+$ TwoWay=�$ PropertyChanged=�5�   A   �� 5�      ���#da34ae$��12(�5�   (   $��Medium"�5�   (   $��
montserrat)�5�   (   $��0 10 0 0q�5�   (   $
��Wrap=�5�   (   ��5�   (   �� *ErrorMessage+5�   (   �� 5�      $ 
Horizontal=�6)   $��30��5�   )   $��0 10 0 0q�5�   )   .+�5�   "   �� $��Forgot Password ?  ��6,   ���#da34ae$��50 0 0 0q�5�   ,   $��Center=�5�   ,   $��center=�5�   ,   �� 5�   "   $��Reset��6,   ���#da34ae$��Center=�5�   ,   $��center=�5�      5�      �� 5�      $ 
Horizontal=�6)   $��40��5�   )   .+�5�   "   �� ���#da34ae$��Sign Up��5�   )   $	��165��5�   )   $��DemiBold"�5�   )   ���#1b1448$��2q�5�   )   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 15��5�   )   �� 5�   "   -   5         ��Name$ btnLogin��5�   )   ���#da34ae$��Login��5�   +   $	��165��5�   +   $��DemiBold"�5�   +   ���#1b1448$��2q�5�   +   ��5�   )   �� *LoginCommand+5�   +   5�      5�      5�      5�      5�      5�      5�      5�      