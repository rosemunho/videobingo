GDPC                                                                            "   <   res://.import/ball.png-ced949aa27aa6415675b42ae2cf4b2b4.stex�     �      ��D��+���!lp�QD   res://.import/ball_backing.png-03cb860f542a7311283607ef7c30e250.stex`�           y���}�v�	�M
���tH   res://.import/ball_matched.mp3-e5f101aa4e1a23c5d14e187a422c7691.mp3str  �j      n      6��L���	Z���=L   res://.import/ball_not_matched.mp3-7836674db5142ae95252d3f2c8797b5f.mp3str  ��      �4      �\]�jX)d�O���	j!<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex �     �      &�y���ڞu;>��.p@   res://.import/no_card.png-9ffac4d4c4ec80d305a331ec75530f0f.stex @�     h      ��Y� �.30M�'��D   res://.import/pattern.mp3-81ceb9ddbdec8cbf839427ab2a5905ff.mp3str         ��      lM�W@�d��ɻx��   res://Main.tscn �	      �      J�bi��M��<�   res://Scenes/Ball.tscn  �      �      rzx�t��W��d����   res://Scenes/Card.tscn  �            c? g:�� Y1���   res://Scenes/Cell.tscn  �"      4      >m-ߣ<\�1׽���   res://Scenes/Pattern.tscn   0%      c      X<��.YP��s2�5   res://Scripts/Ball.gd.remap �     '       A������xE��   res://Scripts/Ball.gdc  �2      k      �Ƀ�UV��/�0v�   res://Scripts/Card.gd.remap �     '       �Z�4ì���
6i��<X   res://Scripts/Card.gdc  ?      f      w�v�h���`0���A[   res://Scripts/Cell.gd.remap      '       ����jwD�jR`㈨�   res://Scripts/Cell.gdc  �K      �      $l��	�l��6����    res://Scripts/Extractor.gd.remap@     ,       �h��T���|��<#�   res://Scripts/Extractor.gdc  P      6      Ę��8��k4�.�    res://Scripts/Pattern.gd.remap  p     *       a�ixm=ְ����O�6   res://Scripts/Pattern.gdc   `_      3      ����%�f�\Ӧ��6$   res://Scripts/Prizetable.gd.remap   �     -       �"���H$E'qZ�e�   res://Scripts/Prizetable.gdc�e      �      V ������Q��\r�k$   res://Sounds/ball_matched.mp3.import��      -      ����[��`���8ua�(   res://Sounds/ball_not_matched.mp3.import�     9      �T�bF=౿2 ��    res://Sounds/pattern.mp3.import ��           �-J=_a@͓�1�+    res://Sprites/ball.png.import   ��     �      ��O(��.���Z(   res://Sprites/ball_backing.png.import   p�     �      K.���j:C���2fW�    res://Sprites/no_card.png.import��     �      -��Sk���7�������   res://default_env.tres  p�     �       um�`�N��<*ỳ�8   res://icon.png  �     �      G1?��z�c��vN��   res://icon.png.import         �      ��fe��6�B��^ U�   res://project.binary�     6      Z�_�vu�#�Hl�0�            [gd_scene load_steps=5 format=2]

[ext_resource path="res://Scenes/Card.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scripts/Extractor.gd" type="Script" id=3]
[ext_resource path="res://Scripts/Prizetable.gd" type="Script" id=4]

[sub_resource type="GDScript" id=1]

[node name="Main" type="Node"]
script = SubResource( 1 )

[node name="ColorRect" type="ColorRect" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
margin_right = 40.0
margin_bottom = 40.0
color = Color( 0.921569, 0.921569, 0.921569, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CardTray" type="GridContainer" parent="."]
anchor_top = 1.0
anchor_bottom = 1.0
margin_left = 50.0
margin_top = -375.0
margin_right = 650.0
margin_bottom = -25.0
grow_horizontal = 0
grow_vertical = 0
custom_constants/vseparation = 200
custom_constants/hseparation = 350
columns = 2
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Card" parent="CardTray" instance=ExtResource( 1 )]

[node name="Card2" parent="CardTray" instance=ExtResource( 1 )]
margin_left = 350.0
margin_right = 350.0

[node name="Card3" parent="CardTray" instance=ExtResource( 1 )]
margin_top = 200.0
margin_bottom = 200.0

[node name="Card4" parent="CardTray" instance=ExtResource( 1 )]
margin_left = 350.0
margin_top = 200.0
margin_right = 350.0
margin_bottom = 200.0

[node name="BallTray" type="Container" parent="."]
margin_left = 25.0
margin_top = 25.0
margin_right = 970.0
margin_bottom = 185.0
script = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PlayButton" type="Button" parent="."]
anchor_left = 1.0
anchor_right = 1.0
margin_left = -124.0
margin_top = 25.0
margin_right = -24.0
margin_bottom = 55.0
text = "PLAY"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Prizetable" type="VBoxContainer" parent="."]
anchor_left = 1.0
anchor_top = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -200.0
margin_top = -335.0
margin_bottom = -57.0
rect_min_size = Vector2( 200, 270 )
size_flags_horizontal = 0
custom_constants/separation = 10
alignment = 1
script = ExtResource( 4 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Timer" type="Timer" parent="."]
wait_time = 0.5
one_shot = true

[connection signal="pressed" from="PlayButton" to="BallTray" method="on_play_btn_clicked"]
              [gd_scene load_steps=6 format=2]

[ext_resource path="res://Scripts/Ball.gd" type="Script" id=1]
[ext_resource path="res://Sprites/ball.png" type="Texture" id=2]
[ext_resource path="res://Sprites/ball_backing.png" type="Texture" id=3]
[ext_resource path="res://Sounds/ball_matched.mp3" type="AudioStream" id=4]
[ext_resource path="res://Sounds/ball_not_matched.mp3" type="AudioStream" id=5]

[node name="Ball" type="Sprite"]
texture = ExtResource( 2 )
centered = false
region_rect = Rect2( 0, 0, 50, 50 )
script = ExtResource( 1 )

[node name="Backing" type="Sprite" parent="."]
texture = ExtResource( 3 )
centered = false

[node name="Num" type="Label" parent="."]
margin_right = 50.0
margin_bottom = 50.0
rect_min_size = Vector2( 50, 50 )
size_flags_vertical = 1
custom_colors/font_color = Color( 0, 0, 0, 1 )
text = "0"
align = 1
valign = 1
max_lines_visible = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Timer" type="Timer" parent="."]
one_shot = true

[node name="MatchedAudio" type="AudioStreamPlayer2D" parent="."]
stream = ExtResource( 4 )

[node name="NotMatchedAudio" type="AudioStreamPlayer2D" parent="."]
stream = ExtResource( 5 )

[connection signal="timeout" from="Timer" to="." method="on_ballpath_end"]
               [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scenes/Cell.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scripts/Card.gd" type="Script" id=2]
[ext_resource path="res://Sprites/no_card.png" type="Texture" id=3]

[node name="Card" type="Container"]
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite" type="Sprite" parent="."]
visible = false
texture = ExtResource( 3 )
centered = false

[node name="CellContainer" type="GridContainer" parent="."]
margin_right = 250.0
margin_bottom = 150.0
rect_min_size = Vector2( 250, 150 )
custom_constants/vseparation = 1
custom_constants/hseparation = 1
columns = 5

[node name="Cell1" parent="CellContainer" instance=ExtResource( 1 )]

[node name="Cell2" parent="CellContainer" instance=ExtResource( 1 )]
margin_left = 51.0
margin_right = 101.0

[node name="Cell3" parent="CellContainer" instance=ExtResource( 1 )]
margin_left = 102.0
margin_right = 152.0

[node name="Cell4" parent="CellContainer" instance=ExtResource( 1 )]
margin_left = 153.0
margin_right = 203.0

[node name="Cell5" parent="CellContainer" instance=ExtResource( 1 )]
margin_left = 204.0
margin_right = 254.0

[node name="Cell6" parent="CellContainer" instance=ExtResource( 1 )]
margin_top = 51.0
margin_bottom = 101.0

[node name="Cell7" parent="CellContainer" instance=ExtResource( 1 )]
margin_left = 51.0
margin_top = 51.0
margin_right = 101.0
margin_bottom = 101.0

[node name="Cell8" parent="CellContainer" instance=ExtResource( 1 )]
margin_left = 102.0
margin_top = 51.0
margin_right = 152.0
margin_bottom = 101.0

[node name="Cell9" parent="CellContainer" instance=ExtResource( 1 )]
margin_left = 153.0
margin_top = 51.0
margin_right = 203.0
margin_bottom = 101.0

[node name="Cell10" parent="CellContainer" instance=ExtResource( 1 )]
margin_left = 204.0
margin_top = 51.0
margin_right = 254.0
margin_bottom = 101.0

[node name="Cell11" parent="CellContainer" instance=ExtResource( 1 )]
margin_top = 102.0
margin_bottom = 152.0

[node name="Cell12" parent="CellContainer" instance=ExtResource( 1 )]
margin_left = 51.0
margin_top = 102.0
margin_right = 101.0
margin_bottom = 152.0

[node name="Cell13" parent="CellContainer" instance=ExtResource( 1 )]
margin_left = 102.0
margin_top = 102.0
margin_right = 152.0
margin_bottom = 152.0

[node name="Cell14" parent="CellContainer" instance=ExtResource( 1 )]
margin_left = 153.0
margin_top = 102.0
margin_right = 203.0
margin_bottom = 152.0

[node name="Cell15" parent="CellContainer" instance=ExtResource( 1 )]
margin_left = 204.0
margin_top = 102.0
margin_right = 254.0
margin_bottom = 152.0

[node name="Button" type="Button" parent="."]
modulate = Color( 1, 1, 1, 0 )
margin_right = 250.0
margin_bottom = 150.0
shortcut_in_tooltip = false

[connection signal="pressed" from="Button" to="." method="on_card_clicked"]
       [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/Cell.gd" type="Script" id=1]

[node name="Cell" type="ColorRect"]
margin_right = 50.0
margin_bottom = 50.0
rect_min_size = Vector2( 50, 50 )
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Num" type="Label" parent="."]
margin_right = 50.0
margin_bottom = 50.0
rect_min_size = Vector2( 50, 50 )
size_flags_vertical = 1
custom_colors/font_color = Color( 0, 0, 0, 1 )
text = "0"
align = 1
valign = 1
max_lines_visible = 1
__meta__ = {
"_edit_use_anchors_": false
}
            [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Pattern.gd" type="Script" id=1]
[ext_resource path="res://Sounds/pattern.mp3" type="AudioStream" id=2]

[node name="Pattern" type="Container"]
margin_top = 63.0
margin_right = 20.0
margin_bottom = 63.0
rect_min_size = Vector2( 104, 62 )
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CellContainer" type="GridContainer" parent="."]
margin_right = 104.0
margin_bottom = 62.0
rect_min_size = Vector2( 100, 60 )
custom_constants/vseparation = 1
custom_constants/hseparation = 1
columns = 5
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Cell1" type="ColorRect" parent="CellContainer"]
margin_right = 20.0
margin_bottom = 20.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell2" type="ColorRect" parent="CellContainer"]
margin_left = 21.0
margin_right = 41.0
margin_bottom = 20.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell3" type="ColorRect" parent="CellContainer"]
margin_left = 42.0
margin_right = 62.0
margin_bottom = 20.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell4" type="ColorRect" parent="CellContainer"]
margin_left = 63.0
margin_right = 83.0
margin_bottom = 20.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell5" type="ColorRect" parent="CellContainer"]
margin_left = 84.0
margin_right = 104.0
margin_bottom = 20.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell6" type="ColorRect" parent="CellContainer"]
margin_top = 21.0
margin_right = 20.0
margin_bottom = 41.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell7" type="ColorRect" parent="CellContainer"]
margin_left = 21.0
margin_top = 21.0
margin_right = 41.0
margin_bottom = 41.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell8" type="ColorRect" parent="CellContainer"]
margin_left = 42.0
margin_top = 21.0
margin_right = 62.0
margin_bottom = 41.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell9" type="ColorRect" parent="CellContainer"]
margin_left = 63.0
margin_top = 21.0
margin_right = 83.0
margin_bottom = 41.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell10" type="ColorRect" parent="CellContainer"]
margin_left = 84.0
margin_top = 21.0
margin_right = 104.0
margin_bottom = 41.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell11" type="ColorRect" parent="CellContainer"]
margin_top = 42.0
margin_right = 20.0
margin_bottom = 62.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell12" type="ColorRect" parent="CellContainer"]
margin_left = 21.0
margin_top = 42.0
margin_right = 41.0
margin_bottom = 62.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell13" type="ColorRect" parent="CellContainer"]
margin_left = 42.0
margin_top = 42.0
margin_right = 62.0
margin_bottom = 62.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell14" type="ColorRect" parent="CellContainer"]
margin_left = 63.0
margin_top = 42.0
margin_right = 83.0
margin_bottom = 62.0
rect_min_size = Vector2( 20, 20 )

[node name="Cell15" type="ColorRect" parent="CellContainer"]
margin_left = 84.0
margin_top = 42.0
margin_right = 104.0
margin_bottom = 62.0
rect_min_size = Vector2( 20, 20 )

[node name="Highlight" type="ReferenceRect" parent="."]
visible = false
margin_right = 104.0
margin_bottom = 62.0
rect_min_size = Vector2( 104, 62 )
border_color = Color( 0.403922, 0.803922, 0, 1 )
border_width = 4.0
editor_only = false

[node name="AudioStreamPlayer2D" type="AudioStreamPlayer2D" parent="."]
stream = ExtResource( 2 )
             GDSC   E      U   #     �����Ӷ�   ����������Ӷ   �����Ŷ�   ������Ѷ   ��������Ӷ��   ��������   �Ҷ�   ��۶   ��������¶��   ������Ҷ   ���������Ҷ�   �������۶���   �����϶�   ���������Ӷ�   ����   ��������ݶ��   ��Ҷ   �����Ӷ�   ��������   ����ض��   ���׶���   �����Ӷ�   ������׶   ���Ӷ���   ��������ض��   �������¶���   ���Ӷ���   �������������Ӷ�   ���������¶�   �������Ӷ���   ζ��   ϶��   ����Ŷ��   �������Ӷ���   ���Ҷ���   �����������ض���   ������¶   ������۶   ��۶   ���¶���   ����������ζ   ����Ķ��   ������������Ӷ��   �������Ŷ���   ����׶��   ����Ķ��   ��������Ҷ��   �������������ض�   ��������Ӷ��   �������Ŷ���   �����������������Ӷ�   ������������¶��   �����������ض���   ������¶   ߶��   ܶ��   ��������   ����¶��   ��������������Ҷ   ����������ڶ   ���������޶�   �����������۶���   ������۶   �����������ٶ���   ���϶���   ��������������ٶ   �����������Ŷ���   ��������϶��   ����������������������ض                  res://GlobalConfigs.cfg             ../../CardTray     
   ball_ended        on_ball_ended      
      
   EXTRACTION        BALL_PATH_DURATION               AMOUNT_BALLS                                                    	      
         "      (      )      *      1      8      9      ?      @      F      N      U      V      _      h      q      z      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /     0     1     2   '  3   +  4   ,  5   3  6   4  7   >  8   J  9   a  :   f  ;   g  <   h  =   q  >   ~  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   
  R     S     T   !  U   3YY;�  YYY;�  LMY;�  Y;�  �  T�  YYY;�  �  Y;�  �  YYY;�  �  T�  Y;�	  �  T�  YYB�
  P�  QYY0�  PQV�  �  �  T�  PQ�  �  T�L  P�  Q�  �  �  T�  P�  T�  Q�  �  T�  P�  T�  Q�  �  T�  P�  T�  Q�  �  T�  P�  T�  Q�  �  T�  P�  T�  Q�  �  T�  P�  T�  Q�  �  T�  P�  T�  Q�  �  T�  P�  T�  Q�  �  T�  P�  T�  Q�  �  �  �  �  PQT�  �  �  ;�  �  PQT�  PQ�  �  �  P�  T�  �  T�  RPP�  T�  �  T�  Q�  QQ�  �  �  ;�   �!  P�  Q�  )�"  �   T�#  PQV�  �$  P�  R�"  R�  QYYY0�%  P�  QV�  T�  �  �  W�&  T�'  �>  P�  Q�  ;�(  �  P�  PP�  �  Q�  QQ�  ;�)  �  L�(  M�  �*  �)  �  Y0�+  P�,  QV�  �  &W�-  T�.  PQV�  ;�/  �  T�0  P�  R�	  Q�  ;�1  �  T�2  P�	  R�  PW�-  T�3  PQ�/  QQ�  �4  P�1  QYYY0�5  P�6  R�7  QV�  ;�  �6  P�  T�  �  Q�  ;�  �7  P�  T�  �  Q�  �4  P�  Q�  �	  �  P�  R�  Q�  �8  PQ�  ;�/  �  T�0  P�  R�	  Q�  W�-  T�9  P�/  QYYY0�:  PQV�  �;  P�  R�  Q�  ;�<  �
  �  )�"  P�!  P�  QT�#  PQQV�  ;�=  �"  T�>  P�  Q�  �<  �<  �"  T�>  P�  Q�  &�<  V�  W�?  T�@  PQ�  (V�  W�A  T�@  PQ�  ;�B  �  T�0  P�  R�  Q�  &P�B  �  Q�  V�  ;�C  �  PQ�  �C  T�D  PQY`     GDSC   4      l   $     ��������Ķ��   ����������Ӷ   ��������Ӷ��   ����Ŷ��   ��������Ŷ��   ����������������Ŷ��   ��������������ض   �����϶�   ���������Ӷ�   ����   �����������Ҷ���   �����Ӷ�   ��������   ������������Ķ��   ���Ӷ���   ������������Ҷ��   �����������Ŷ���   ��������Ӷ��   ����������Ŷ   ����������Ŷ   ߶��   �������������Ӷ�   ���¶���   ���������ζ�   ݶ��   ���ڶ���   �������۶���   ܶ��   ��������Ҷ��   ������۶   ����Ҷ��   ������������Ŷ��   ��Ŷ   ��������ݶ��   ������۶   ��۶   ��������������Ҷ   ������������Ҷ��   �������۶���   ��������������Ķ   �����������ض���   ���������޶�   ������Ҷ   �����������ض���   ��������������������Ŷ��   ������������ζ��   �������Ӷ���   ����¶��   ���������Ӷ�   ������ض   �Ҷ�   ���������Ŷ�                       res://GlobalConfigs.cfg       CARDS         AMOUNT_CELLS      AMOUNT_ROWS       AMOUNT_COLS                 
   EXTRACTION        MAX_NUM_BALLS         ../../Prizetable/                                                       	      
                %      &      ,      4      ;      <      @      A      B      H      M      R      Y      `      c      g      n      u      v      w       }   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5     6     7     8   !  9   +  :   2  ;   6  <   7  =   8  >   ?  ?   D  @   G  A   O  B   P  C   Q  D   W  E   \  F   `  G   a  H   h  I   m  J   o  K   u  L   z  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f      g   	  h   
  i     j     k   "  l   3YY;�  YYY;�  Y;�  LMYYY;�  �  Y;�  LMY;�  �  YY0�  PQV�  �  �  T�	  PQ�  �  T�L  P�  Q�  �  �
  PQYYY0�
  PQV�  &�  V�  �  LM�  W�  T�  PQ�  W�  T�  PQ�  (V�  �  PQ�  W�  T�  PQ�  W�  T�  PQ�  YY0�  PQV�  ;�  �  T�  P�  R�  Q�  ;�  �  T�  P�  R�  Q�  ;�  �  T�  P�  R�  Q�  )�  �  V�  �  PQ�  �  T�  PQ�  ;�  �  ;�  �  �  ;�  �  ;�  �  )�  �  V�  )�  �  V�  �  �  �  �  �  �  W�  T�  P�  QT�  P�  L�  MQ�  �  �  YYY0�  PQV�  ;�  �	  �  ;�  �  �  ;�  �  T�  P�
  R�  Q�  �%  PQ�  *�  V�  �  P�&  PQP�  �  QQ�  �  &�  T�   P�  QV�  �  T�!  P�  Q�  �  YYY0�"  P�#  QV�  &�  V�  .�	  �  .�  T�   P�#  Q�  YY0�$  PQV�  �  �  �  �
  PQYY0�%  P�&  QV�  &�  V�  .�  ;�'  W�  �  ;�  �	  �  )�  �'  T�(  PQV�  �  �  T�)  P�&  Q�  &�  V�  �  �  �  +�  �  &�  V�  ;�*  �	  �  ;�+  �  ;�,  LM�  )�-  �  V�  �  �+  �.  P�  QT�  P�-  Q�  �*  �+  T�)  PW�  T�(  PQR�  Q�  &�*  V�  �  �+  �  �  �,  �  +�  (V�  �  �,  T�!  P�-  QYYY0�/  PQV�  ;�0  �.  P�  Q�  )�1  �0  T�(  PQV�  �  T�!  P�1  T�2  Q�  �  ;�3  PW�  QT�(  PQ�  )�  �3  V�  �  T�/  PQY`          GDSC         /   �      ��������¶��   �����Ŷ�   �����ⶶ   �������ﶶ��   ���   ����󶶶   ����������Ŷ   ��۶   ������۶   ��۶   ���¶���   �����¶�   ���������������Ŷ���   �����������Ķ���   ���������޶�   �������۶���   ����Ķ��   ����Ӷ��   �������϶���   ����������Ӷ   ��������Ҷ��   ����¶��                                                                       	       
   '      -      7      8      9      ?      F      G      H      N      T      X      Y      Z      a      g      m      q      t      w      x      y          !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   3YY>�  N�  R�  R�  R�  OYYY;�  �  T�  Y;�  YYY0�  P�  QV�  T�  �  �  W�	  T�
  �>  P�  QYYY0�  PQV�  .�  �  T�  YYY0�  PQV�  �  �  T�  �  �  PQYYY0�  P�  QV�  &�  �  V�  �  �  T�  �  �  PQ�  .�  �  .�  YYY0�  PQV�  /�  V�  �  T�  V�  �  �  T�  �  �  T�  V�  �  �  T�  �  �  T�  V�  �  �  T�  �  �  T�  V�  �  �  T�  YYY0�  PQV�  �  �  T�  �  �  PQY`         GDSC   =      |   �     ��������Ķ��   ���������Ŷ�   ����ⶶ�   ����󶶶   ������   ���涶��   ����������Ӷ   ���������Ӷ�   ����Ŷ��   ��������������������Ӷ��   ������������Ѷ��   ������߶   ������ܶ   ������������������Ŷ   �����϶�   ���������Ӷ�   ����   �������Ӷ���   ������¶   �����������Ŷ���   �����������Ŷ���   ��������Ӷ��   ߶��   ������������Ӷ��   �������Ӷ���   ���Ӷ���   �Ҷ�   ��������Ҷ��   ���������������ض���   ��������Ҷ��   �������������ض�   ����¶��   ���������ڶ�   ������¶   ����������Ŷ   ����ζ��   ������������϶��   ���ڶ���   �����������ض���   �������������Ӷ�   ������۶   ����Ҷ��   �������۶���   ������������Ŷ��   ��Ŷ   ��������ݶ��   ������������������Ҷ   ���������϶�   �����������������ݶ�   �����������Ӷ���   ����Ӷ��   ���������Ҷ�   ����ݶ��   ��������϶��   ���Ҷ���   ���������׶�   ������Ӷ   ����������������������ض   ����Ŷ��   ����¶��   ���������Ӷ�      res://Scenes/Ball.tscn               res://GlobalConfigs.cfg       ../Timer      timeout    
   shoot_ball     
   EXTRACTION        AMOUNT_BALLS            TIME_BETWEEN_BALLS        AMOUNT_ROWS                    MAX_NUM_BALLS         Timer         ../CardTray       Button        ../Prizetable                                                       	   #   
   *      -      2      7      :      ;      A      I      P      Q      X      c      d      h      i      j      p      |      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3     4     5     6     7   +  8   2  9   3  :   4  ;   :  <   ?  =   D  >   N  ?   R  @   \  A   `  B   a  C   b  D   h  E   m  F   s  G     H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `     a     b     c     d     e     f   )  g   *  h   +  i   2  j   :  k   D  l   N  m   U  n   V  o   W  p   ]  q   c  r   d  s   e  t   k  u   w  v   }  w   �  x   �  y   �  z   �  {   �  |   3YY>�  N�  R�  R�  R�  OYY;�  Y;�  ?PQYYY;�  LMY;�	  �  T�  Y;�
  Y;�  �  Y;�  �  Y;�  YY0�  PQV�  �  �  T�  PQ�  �  T�L  P�  Q�  �  �  �  P�  Q�  �  T�  P�  RR�  Q�  �  �  PQYYY0�  PQV�  ;�  �  T�  P�  R�  Q�  )�  �  V�  ;�  �  T�  PQ�  �  T�  PQ�  �  T�  �  �  �  P�  R�  QYYY0�  PQV�  �  �  �  �  �  �  �
  �  P�  Q�  ;�  �  T�  P�  R�	  Q�  �  T�  P�  Q�  �	  �  T�  YYY0�   PQV�  �
  T�!  P�  R�  Q�  ;�"  �  T�  P�  R�
  Q�  �  �  �  &�  �"  V�  �  �  �  �  �  �  ;�#  �  �"  �  �  ;�  �  T�  P�  R�  Q�  &�#  	�  V�  �
  �  P�#  Q�  ;�  �  T�  P�  R�	  Q�  �  T�  P�  QYYY0�$  PQV�  ;�  �  �  �  LM�  )�%  T�&  PQV�  �'  PQ�  �%  T�(  P�  L�  MQ�  �  �  YYY0�'  PQV�  ;�)  �  �  ;�*  �  �  ;�+  �  T�  P�  R�  Q�  �%  PQ�  *�)  V�  �*  P�&  PQP�+  �  QQ�  �  &�  T�,  P�*  QV�  �  T�-  P�*  Q�  �)  �  YYY0�.  PQV�  /�	  V�  �  T�  V�  �/  PQ�  �$  PQ�  �  PQ�  �0  P�  Q�  �  T�  V�  �1  P�  Q�  �	  �  T�  �  �  T�  V�  �1  P�  Q�  �	  �  T�  �  �  T�  V�  �/  PQ�  �0  P�  Q�  �	  �  T�  YYY0�1  P�2  QV�  �  T�3  P�2  Q�  )�%  T�&  PQV�  �%  T�  P�  QT�3  P�2  QYYY0�0  P�4  QV�  ;�5  �  P�  Q�  )�6  �5  T�&  PQV�  ;�7  �6  T�  P�  Q�  �7  T�8  �4  YYY0�9  PQV�  �	  �  T�  YYY0�/  PQV�  ;�:  �  P�  QT�&  PQ�  )�6  �:  V�  �6  T�;  PQ�  ;�<  �  P�  Q�  �<  T�;  PQ�  )�%  T�&  PQV�  �%  T�  PQY`          GDSC   "   	   1   �      ��������Ķ��   ����������Ӷ   ������ض   ��������������Ŷ   �Ҷ�   �����������������Ҷ�   �����϶�   ���������Ӷ�   ����   ������������ض��   ����Ŷ��   ������������Ķ��   ���ڶ���   �����������Ŷ���   ��������Ӷ��   ߶��   ��������ݶ��   �������Ӷ���   ����Ķ��   �����Ӷ�   ���������޶�   ���������Ŷ�   ��������Ŷ��   ���Ӷ���   ����ζ��   �����¶�   ���������������Ŷ���   ����������ڶ   ��������¶��   ��������   ����������������Ą�   ���϶���   ����¶��   ���Ӷ���            res://GlobalConfigs.cfg       CARDS         AMOUNT_CELLS      +         Cell             on_pattern_matched                                                            	      
               %      -      4      5      9      :      ;      A      G      J      V      \      e      l      |      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   3YY;�  YYY;�  LMY;�  LMY;�  YYB�  YY0�  PQV�  �  �  T�  PQ�  �  T�L  P�  Q�  �  �	  PQYYY0�	  PQV�  ;�
  W�  �  ;�  �  ;�  �  T�  P�  R�  Q�  )�  �  V�  &�  L�  M�  V�  �  T�  P�  Q�  �  �
  T�  P�  �>  P�  QQ�  �  T�  �  T�  YYY0�  P�  R�  QV�  &�  	�  T�  PQV�  .�  �  �  )�  �  V�  &�  L�  MT�  PQV�  .�  �  �  )�  �  V�  �  L�  MT�  PQ�  �  �  P�  Q�  W�  T�  PQ�  W�  T�  PQ�  .�  YYY0�   PQV�  W�  T�!  PQY`             GDSC         .   �      ������������Ķ��   ������������Ӷ��   �������������Ŷ�   �����϶�   ���������������Ŷ���   ������ض   ���������������Ӷ���   �������Ӷ���   �Ҷ�   ��������������¶   ��������Ҷ��   ����¶��   �����������ض���      res://Scenes/Pattern.tscn         +         -                                                             	      
   !      ,      6      9      ;      F      Q      [      ^      `      k      v      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   3YY;�  ?PQYYYYY;�  L�  L�  �  R�  R�  R�  R�  R�  �  R�  R�  R�  R�  R�  �  R�  R�  R�  R�  �  MR�  L�  �  R�  R�  R�  R�  R�  �  R�  R�  R�  R�  R�  �  R�  R�  R�  R�  �  MR�  L�  �  R�  R�  R�  R�  R�  �  R�  R�  R�  R�  R�  �  R�  R�  R�  R�  �  MR�  L�  �  R�  R�  R�  R�  R�  �  R�  R�  R�  R�  R�  �  R�  R�  R�  R�  �  MYMYY0�  PQV�  �  PQYYY0�  PQV�  )�  �  V�  ;�  �  T�  PQ�  �  T�  �  �  �  T�  �	  PQ�  �
  P�  R�  QYYY0�  PQV�  )�  �  PQV�  �  T�  PQY`            RSRC                    AudioStreamMP3                                                                       resource_local_to_scene    resource_name    data    loop    loop_offset    script        
   local://1 �          AudioStreamMP3          �l  ID3     PTENC      Sound Grinder 4.0.4 APIC         TCOP      Copyright Alan McKinney ���h                                Xing      9  l 		$$++116<<AAJJQXX]]ccippuuzz���������������������������������������������������������������   NLAME3.100�        � $�� �  l�2$�                                                                                                                                                                                                ���h  d X}` -�	��� �W]y� 9��? �wE3#��'>����1�.�w���s�����\���9C��A�wW�2Sh%���D^81��:ϗ�'��N�]�������@       V(��eiD����3s
ª�PN������[jS�b@�&�.�0�F{y8Hl�T��TU�/n0D�4��N���G��7����[zè�Q36��Z����v!�q�3��ӝۤ��]]�d�}�t���-��-g�SV���9��׌?��?;��~���}o�ynb���I]=�}���k�r�������_�ʪ�����	'e��r�������)�4�mԈ�G��d�5S�kV�ԃKɠ��j���?~��dN��K�X[���w�@?=C~���a ��$F�P
(� �� 4L`(�1{��WK����p�N(�L�(�p�ȩu�:��̓�MdT�����h&  KUoj� H�ڿ� SM���"!*i~���'�Y'G�G1'Q�N�k5��Ե��6Zڵ��N��RIW���FI�ԖZ/$H�P���KppBm
w�Ή�K�G�-�"wYl���>���X:�������4Z�}��شhx��O,b[���1��w��s 9�%R�l�@������krO��+�x� AM�ڎ$� ��s(}�%�T��i�øc�3����Ţ��ȧ�Yb�l��oZ����k�;Z �W�z�j8�ev�U&-��C-��7�p�*ݻ�v��Og������V��])m��4�󫕬�<E/������k�~:����ʱ�|�z� I���N�\�����!�E��"IȠ������H(�Q�Y�C�'��Nb��(�z]Yә2( �1�"�El�Ԃi6��ff���8��Z�Enr�SY�u$闐F�5ԓ�ɢn�f����L�l�_S�tT�'$��n� ���h��^�ng  �	*��H �m]�� ����� �F����;"�$Rȕ��0�<�H��I�3���̉��d��Z�0r4 1��ɉ U$C,�1�/�e�#��7M6xD	jv0DB���v`[r�*ʚ�^_��ð]�wEjJ��}���v��Ĺ�TB@�)��	f���T�p<B)QÎ�Xy�A
��f�����_��}�M���n�
 ���8R�2��ש�������ȥ�Kݱ{�Ng�f�+�*��R�O��W�����Ԉ�����^?��P�ϥ$(3rrJ5��8p�_L���L#|�&��B8^�p EI����oE4�"�[$�X�����q��)Q�7Y�0L._vz'K5�o.���(����jٍ���"����^n���4��������0:5:j�J%�D5L(��D���� n�$I�:�aI� ؂$�&N���"x�/3i��<@��1��4^K��:]5[�f�AH�:�"y��#dVbb�2�S���[#�X� ��y�_ִh�{��E���QK����f%��� ��b@�J�Ƌ'�_��Qc��4{�urt|{������M����S�*�.�/M$?_�4��Fz�.�L�?�/ղ�օ+��=�s��ݭhU{W�f��W؅��V~�7��Ԍ��*����0@H�ѫ�,P%|�9��$�[2�-�IM�С�򀾉�	�sLK��2D,@�}k6��9�mn'9�f	f��� �֢�F���H( Z�{,҉k:Oi�SAsQ���*s-���0�m*PYE� mًDD�)�Ɋ	Xh`Xw<�TkP��s�5���c/�:?�D���� ���(�#� �
, hB9�,5�,�б�J��.�o8�<O$���F�X��!F��nvF�jc���3U�W��i�*���;�,zbj
�s��,�E2�ܛg��Q�C�}��=]X�}�8��z���QH��)"����`��a)�d�fJ&kQ�
��@���F�3@����a�J���4��Y�2b+"hd�t�3�YD�qs���`���MN쉂��0-"\I3#d�J�������`�@�.��H��h"��{��JE�1Y�)�L�����PN������=�d  9�eL�"D 4 �n���
�(AT8���[�@/�d�,�"8�}�$8�UF�2&G�c68�dO"�C�8���P�D�E�nT3.��#�.O,�sʤAj>h�0w.����;���ѳ_j'�J�c*,�-h$����JWi�vm'u�н�wԥ[�%4tԊx�3c����@[�����
�"b��4
?,@$ߚ��� �&���h I]��k@��o�` �mK���
�.(���OjZ�� G	[L���8q���x p����q��yh h���
0̰	iĨ�v��@&�C1�r�{�\�ER�+l���v#2kr�&N�t[�RC+�݉%m��0{�,	S(T�=��j5���%���2�Ud-��5���۶c,��:�����Ë�-��j�j�:L�]��@{f��Gii%����	�>��<X�ia�e���8���+s0�ո���U��Z�� j3 �x D:2(��;q���� ���l�K6�Y
��%#�^�9�q�z]e�KhKL��&��pj�~w-s�Gk��E&��?7�{���ʼn��7�������dߎ���U��K����j�Z��ݩ������nr��]�;�g�ʽ7������w��T��M � ��t�S2����@M:��عi��<njaC��A0'�]�
+�75sd
�i�3�s!�`j�	�|̺�嗑 �-�18H��dE�'S�ȹ��.R!��t�>fj�⩩�	-U���k>�3��Q4E����H���W^��)K��˩w􋧇���FA vWY��v�)��R�U8 ����(S��O�84��*���̶�)G3�>���`z�n�+�P^����M<�V�k����Ᶎ��,�Ճ
$��4��;���3Zx�q�H����3Y�R��D�y�u����m��\�_�1� �b]������k[���!^/]��p �$�֒ ���H�w[P�b`��j�P Z�sK�� G.)?1� ��.〬�هǥ�XX�Qy "fN����Mɒ^D�f�,���䉱B��PEh�Ŝ�Z/"_[�4ԓ$�eN��]~�>�1zd<�E&��eYt������Zkn��)��v���&l�ĵ7$  A�30��z���"����:��	@����eAp�'6r�e6<�0.���D�Ș�4R<��Mԑ����58ldY&M]�κ����e3L�戱���Z�y��u)Γ��D�]jZ�>�@�b쉪4Rs���H=4� ��ff��5k�O�VJ��j�D[h�>�e����M�K���[F����/1}��69�!�
�@�E�cC5ZC���&� <����~����6���Rkъ*ʖ÷_��n�n?7J�؍®�l��rÑ�1۷f��O�O��m���6�x39�E���0�u��SnU�dR��w�׊��������Y/s%47�,�+��R6�ş���]w���˟�?���_�ꬽ���E3G�����L��(� 35����6ĆA ~�'�	\� �.�J�!R��!��<XZrE���	8.��.�T��g�����afE�rⳓ���Y��&����B�����]��	u+p~�����).r��
.nĮ�$�7PY�G{o�j��]j@�,�9On�K[��L��St�K����֩����xݩd���w�������������r��,����]��g�0"2Uw���mҕ�������h
 �[��k@ �����@ �mO���*a-j������+
8"$m	��Ъ2��d���&�b��8D�� s )!�mN�����
5s �kʪ��lX�4m$N��UQ0�Ȕv���푻�Y�MƟ밨�R+M�>棸���I��C�M8f>��Uk�4�UM�5u��%���X���;��[p���{���+v�Tzv�~j�[�y���+xo��w�"@)L� r��ֱOVb'9j_�Q�6T�ʆ/j�&?\��C���_����@ {{�  ��*6h��I
aY��mU �C�E!xef�1	�@�@�6Z�.]�3EC�Fd��;�h�&K�*�f�i�}�$H�3Es"��E���Z�H:�q�Z:h�ݝ�~�ju�-�9C�����ݍi�_��$��SͰЦ	�W�x���Θ���[,2�^f���^��M/OѪ�k;E���۽)�Y��u=��)�~_G~r[4�M�0ʂ[o�gr��Vv���E����왤���oS��)jWv�_��w�w�l�R�1i,�eg��g[y����vi��;Z=*v��l�!�Z�-]w�j�_��i5���K����U��{Ѩ9��@!�"��.jz&0^@�$c	�4��lIK�n]r����<�O���,�ĉ�����d֤���{���u�m^�:h69j5-��{���5��_�F���j<�������+��s�bw��e�c��r�kV�����_w֮��0[z��00 �H��01x@L�f@�]���h �[P�i\�Js;Q�[M���*+i���i` ��#@V[2V۶ڳ����`����]��4Op��@D�	�D��I��>�k��r!�W32��+��B)O����?U�j.�مaÆ�սMIB���m�l׵`x��[��=W�V��]�"�K�6V���lմ����K� !3i�R*F%@B�B��P��:A`�^z����uP��j�٧.4,��FU�R�4�m�E�^ܒ2�r�E�^�0R�P��Q�b�3�c����V��YR��Ζ������՞w+J���L"��������/2E%��ʳ�������������$�v!��e, �ʛ����e����އ^5/�3�NAÏ�Ll���[�ّ�`�)��S� A�Fk(Ƚ�v���� B2d2� ��{zm�^�q�F����ݛ��������g���{�m%����ǈ���v����]����D(+^�pHn�$x8�=�Y�K�-+^��[m�N��
��'8H �g@2�0ܡ}u��F�dY�Q�U�L��.��?˷34��BÕE��qq$�TT��͍8`������4pN.�}xy�&�t1cD�m��mŬ2=�B#[�@tG�U��}v"!!6睜QGJ�ɠ�>�OeTT��);p������H! rZ�{	ER�ʚe(�SE���)}�"�S�y!0�T����s��+�V�R����6,ی|v�,�!)4X�cn�i������n�D�&�MXZ�$q�kM�7R��I�`I�  k4W��8Ѐ�8lD�P�Q3 {,Ӓr��K%�P��l-)��:��3�Y�s�=��l��$�,U{&�\��CN1\�cJ��&��J��_^�-步Zv육PA��������M��BCD� U.�"J(I	���((b�8��(��Q	�GGjF�rL�;T�x[�,�U����H�#�D��3a�ܦ�c-yuD��(�^��E�����ti����J�ؕB�T`�,x��ώ�W��0z���� ����u]��(�~�w���}��
D*[ml ��~�B� �]"�.�ar��o%f�֣���61��._mZ����(����M�ƕ?��ӹ�) ��m�cjco0�P�.�F@� A�IN��ad%�ge�X�ֺn�v����j��>;���Ì�{s2P  (�f�4Yr@�R�Xk@!*،��"�>/���Z%�A����66�|�n��b����H��S��,���a(��aE�=	B��i}�"��[D��֛�fo����#�K��lz�T��z?�@8�W�F:ש�j	Ǉ�b�kE#��Q������g���i���2�\%�9j��I4��Y��~2�oi-��%L��7,E�2�p���($�\�]�4��˖8ȟ� �M⾿�t5]�G]�˺"����kr2N9i\��h@�^m��p���'�C�&�ŵ⠐ 5�T�g1KA`)I~��<�4C�	i/S�sܰ�ƒ2�39Cg��8�/ķ#�$��x�<�1jơm�fx�0�(�$ߢ���f#�k-��H>-����siOh�vAHƷ3���������������Fd"J��Z�E�A��]�S�J2!�sBL;MhPBKi5�Q�i��*r�R	8?@�Tk�B�ltq㳅f$�H�1�@,�R���3!��\���L����&�3���:�n�|�ъc��*��K�9�J�(W�l���T���>ū���E���JI�yW�a�n�w����<<sU��@5"�$�(^iR'C�G	_��GYD[rN���r�Fb/B=J�M����H�IT�{Dx~�ja(��_E���*S*(>� ��h.P��}�V��.7���c�I[�����٥#J��~q�Zߕ�:?5����9��lVV
pY�J���-5�0��o����E���q>���+pifu�c5�($��Cڕ=�D'��:�]���[֙��&*"`�Ͳ�sr��vr���c:��Ֆ�t�꾾~��ȍ�^�k6�װ�M\�BR�!ɨ�u��_�=�����4m�����X��T4���ڋ�r#�L����T���LT�J���^׉���t�Ie��ՍM#r����<\<��YZ��F���*j��إ��T��Ǟ�/$��iT�-8���.�1m�_�'*[m�*��k��?��i���o����i1C�ᔥ��VM�opf� H�i%7cq���T�!b���%��Ź�J�<��aa�#��,ł�̊E�+*��`lɢ��,�A�|�E�R��<��,Ը`�Uu�A3f�Ț鱌ĸJ�Mʌ֧Zu3)JOL���9Ht�A�fM��7ZSRq��y��*ڣT"0v�h��>��m�d�M
*�ꌠ�����H�]�~g �+Z?�� [�qK���[-g5��^)/�]%�I�m@�����L�Ij�we+��
;�4L2�k�n��QK� ��eOe�R�C�n�T��r�� Y�T �K[����*O���IA�I)�H��@}�ϳ�G�9�~~�?�����5V39�إ��H)c���w.�mnv�W�&5~5��#��o�t���M�Uj�{����[y����_p#rK?/�����fR1t��o��o,�[�`��t�r�н�2�B�����l��hG`���e�T%#��p����%�/�t�'��o30��wa�g��5.�<��_�ǉ�����e;J���*R�ٓ{f+j�Ｔw$��_ʆj����>T��z�ߪ���cT�4�Sq�{#q��U����~i'b���T7�ygs�����q޿���a_Ԏ�Ө���:6��e��~�<#�*�KHVR����⤾F����Ֆ/�i:�$y�`PXKsrt���� �#9y�f/T0f�#k8A�o��vQ��ݧ��oY4���^�-���{_e^���}W����jޣ�9�lW��(����-ۙZ�.�w��ܠ�|9AQ����0#\e��ץ���۬;{y����۵r7@���-[\)J�[֬�r�˻̿]����tX����� 13-�4R!"�l�D��@$831�1�$T���O�ŏ� ec9 H
hoy�C�M��"2<�6/�a,�.��(�*��:����Z�g���MYܑ�Ѩ	�J�GQ�����5[�)���o�>�^�0u�q�/e��؀�7g�������l��Ɵ��Hf�w%��ƅ��X�^Y�Y�YM�Ԕ�G��}%�c���׫-ռy�������r���s5 D�(��%�+1�!��H�\|(hx:g2��}`T+����Ź����A�}Z>"D�ѣ�H�Ւ�;������__Z���H%�UTR�e����< S�iC���"�+'����|����ƭ�kgt�1�lo��>7�3�D����g�z�ݩ
�6$kkf�W9����v�4��Sު���buO^��ĊB��n�\���B�Q��DG&{��S>cq�gS)4������텭���5�������x�b��?��ϫb�m��?O��P�5m+����$���h��T�=����������ֳ������f�?�V�x�W�ּt3rĊ[Y�p0B�@`4Dze��}OO��������ddӨ-�$V��	�ƌj�HʨYet�	WD���Xsf��K��AjY�Y���dhe�I�vȚ��k�7�3#���ѡ���iT�j���Z�w��/�
R�����浍��?����ut�k��Jn9M6�N`�i���tr%TH@���D�n�ťp4���G�H�:�iLh��+�T�ËL�m��+U�g1Ԣ?���o1�|H���$YTT���b�'��.l��md����B�X�����i.�)�%[f�b���W®v��X�nE�*#U���+�i�kV��E���������ê��"DSU8t�ȫqM�
L�hGmZJ�/4`Q���Î�0�͐�ci�Ƀ!*� �<�'8$��G 8 ���S�"��:+?����H/��^��k  ����` o=���.�����$[�a�~A4Tr>-U�EV;wbot��K�	U!o�7�;�y�ZL�!q�E"̱��v�ci4P#J��(>����/4��}&�q߀%n�<��N��Y�_v�?,�79c��Ř�$�Uk^W�ɚv���9C�έ{�9���������?��/'�j���P��jfD�
�ߦʵa.TZTh~ә�� �1#�5m,!SR��B�@�O�<X"�@����"R����Q���gH2�E�N7I�d�M=1�*W.^�V ��.#�E���bR�n�L�r�1v�&�H�\� ��:�s���۳.}���%@Ъ�+7��֩�DI�u���%<�,�����!�õm;��qXn/^-f͈f!����[���5���s
,%�=����3q����HcUw�o����BoX�&��m�4�mz�(%�.���[1~q����A�(�bX|� �HŉJ����H���T�I�3Ⱦ�t�}$�f��^2Q}��h���ҍY�V�(�u��w��T� ����Uz-���H��LUfEUT��T�Q($�t�˥�j_1�D�HLx趪k���*01l�
�]�����[ҕB�	�:v��L��O,�ʳ��ˏ�1I��oE��>ܘ��c��X���R�C~��?��ֳ�n���i?ύh,Lo����X���s���iJ�5�������Ə��B��X�C5 V�L��������#r���R����Xg0@I2.
9����h��T��&-�t��a'��[5��*����Y���=z��#y˧㸬�c�RE���7 �^ǻ��3��x�ĝ���ڭc2]�Da��u3�r��g��:�bz�� �	NYKW"�� w��� bTA���F� �敕�O��x�Z �2�dh�W�}���T���� ���3s��γ�L T�N���c�CR\p�!N�҈r�ʗ�"�:����-�!)v�24Q� (��O��^4qG�a�Q�p��
��scP��,�`;��#�X�p�c�%(̈́)�ۿy�m?�"Sɚ��c�l�<���b^�Q�u$\]�X���S=�'h�qa`�7�9kzX���Z�!C6�M���u9�y�@֪��1%E��4 �m�,$��	A��PTH�	-��a�eͬC(�0KM$�l`�x�\MȰ��-$W7ZP؄�=�k�"������~���,|S����_�ĉ&�U��}��X�VA$�)9����2D����B[��h�b��8m��K�֋Z��2 E6E-���kKjN��H ۸쑓׹�.l���������H* �T�{p�K*a�N�+A�sa�*f��X'+u�5�[0|���P�U���0�!W�2����a�@F�-�8ƨ@Beڒ/^r�x)t��	ǍMf��P�IßuGdr'��$k8�5���o!AL1���
�^�P
I&]d��]�[�IRi���v�S����d�9+SA�+��K�VTB���\�
ԙ	L]i�4�uTֱ����nwL����x�G_^���\;TLeFr�_�<͛��3F�ҋ�Az�2���}%@���I�K���yN(x$E0�� r���[��'�"p�()AR��L�Ww*��2��ߺi�X0:�vr#���,;VۮU|m�E���;���c�f�C�g���S%��Yi����h�k9`    >qi��3�N!U��x�B�l�ƾ�Y#��t����
ƕ����Y�c�	�����済eǋ��$*¶��T�+���WG+���dB�`脟DGZ������DC6o���	ȚǡX�DP  aw�Wdau���.i)��ٶ��@(324Q��c�U���[�U:(/Q�LS��?1��R�,�����H# �UO�a`
�
�߬� Es1���"%�3� �8��W�[xy5�*{�8{=���}5�;�S�S�J����w\�5��wV0�LH��Nl�Z����r�O"0Fp�Y��Z���J��`�����;,�7Fn�Q���&Q4:|�h_Dƃ��̊Φu�^�ƛ�.)uթ�kE�5&�B��]/��J_gt+E=5�1*/ ڶ�}KMΒ�)��^����bNT�e&�I�����C��Ť�f��("���.��j,h�enFh�ID� `�Y��	�4�Ġ	j(��D)bZ ��2�VĀ`����KH�5��O(�)p�o��a����܉����-��ǒnz���"ܣv�|ՙ|.=tp�n_v��'ܶw��o�,�~�b��^��Tܖ�b0�Ji���#�7?���������_�������|���O�!�����2�hn�D����Gm!�@�텐�� �`�AK��&�Վ�
a���@�Xf�	��-����3��T�<�t�������;����@���'$��j)řٝ����4�&���C8um�(�n7!ؤfEHΠ^�su�wn?�v����oՑ�3����u��؇���o�b���15[ua�N�C;W+RK�����r�~���;�(�u6�@DdE�Kd�Fݎ8���H��UO�k  ѪI��� +3�� R�'?��*"l��Zƚ�8G}�4ـ~2h��$:B
@�������p0�b��貗軭�Ω��M2�h��]�T%ņp~el�-U׏G���ɞ��	2���b��B��\�?�r"�UU�ES���y驦Y�v����'�9k��9�����b-.�Ȍ&$��`��'�W0��9�ع���)�On���k(ԫj럻�5|��_�S*̢@�wr7
NH�Z��@q��-a'
E�d����fXL��@+�'�IA�!�!�8qn�X�0�n��kJj����t�V��ٟb�d���������4&f��V+-�^���%�F{9��n�J����ȣR�u樥R�T�eR�زȳ�*M�P����z�㒪�ܿ�wur�QK���������j�6[o��wS6"�� �u?��g���L��/&��LH�0�ԦdNl<��l�X�ջ��[�Z�Dg-W�X����UYeil��>z�{(���g
�i����SO~���8��5[����ܽ�����?K�c5�����;gҋ6������,J,\z+p�p=B���EE����	�5ՅR�QBqL�vEAi���#%�b�'[|X��S�i�˧њ�/l�"�TaW�yZ�C�53O�����ӫڻ�
��w�ƶYil�o'�+"�ܱ�����oom��Ì'(����z�����[{L3��
�SG2V�r)�``�|ߠ�3jʐð����H ,S�{	<��	�	PkC�W�Υ&q��a�ش���՛\HL�$Лe���rܘ�DE�H���Nl6w�j�j��R��-H��}��.ӛ��d�P70�4��@P�t��y�c;���q�"��Z�^\��!���3h4!e���	��+X"b�Hf` 7y*ȘE��Ν2aB1!c` &)`���L�d��Y9���hڊk�醗�e��R�ɭ�`�{�ʓ�+��O�7���4�n)��μm�5�*sg0vD�sY^��*P�]Ȭuu3sTɛXv�/ *E�YX	�E~g0�����O��)^3�x�I"�;h'd�	L23pss�y܂�]��F����φon�l���-2�����Ǔ1�e��z߱��x��gǨ\c����S��@4��� 2��?�T�li���'����0Щ��$.�H�� ���#k�k�t16��egv��h��q�B��
�Z�(��%$����ў弻I��/�Ld{��<=�o���؛{��wj���[�Ha����QC9�)e�%�+�5iQ�L:d����@!��/nM+�)�NO�s �-d���H��N�c-Pp)9�=��a+?�<�)�$g}�!�����"��}����GL�)� �$����d���X����(�������£�@�kh�,2}���K5*�d�d��/�ҹ < �D0Y	:�ȁ��6��ĂL>9|t2˴|��<�������,�:$�������}� ��n#�k/�q��B ����.�����������v���uB#J�ҏ{�U��U����C&�	~P�F�W�(IɃ�F���qH1�(��7�;|Y���|tҏ�� 3���o>��>Qwȍz �7���yE����Ѳ,!c��
(K���zf6 *��o]��H�V7�;��@��wN�b�G��(߭\\�j&'�;T���)�c�yǳQ�[��b҅ΞbhI���+��K���SW.�)���f����";�e�x| ���"�
�  g��9xAp4�[P�@���JZ���X,E�N����H��P��	D�r�Y�a&�N�+5�%����=�>��㰚;���6a�S���ӥ�R	JhN��.\�@&l��)4��3/��uUU�hC�?��y�߽P���%J��K���U�H@��o�|�p�/��3S(5�6l!�o�{����ś�k$e�SneN�����]��\�����s���&���y�ʷ!�&Y'1�����r���	[�NA�Y� �;�`�-:���h��^՞����ѠO:+=G�Qߦ�m��I4�ʫP4�\���T�~��+�\<����V�9�2Zɉ��>�j:��R55Q�DKk*ìc�Rmܚ�A����Da$!� ���)۽�$("��@�UOeb=��'ryap���ڃ�2����9}��i�lB��\�ǜ�R�c��t�����m_��B�,J.~ڬ���[G�Jg�Zŧ��m(�\��XIF����s�֮�=��AD�0��?Q1��Z��EZ5Et��N��*cN���ō^���Z*W�dC� ��)sp9>Zj�,��&G;��!{��%+�Ɍ,���2���hd;,����Hy���H��J�x8@�iiI�`ȚM+3�����f��� ɵ�ã�Y��Q��?0@�u��/7M/��V<`�C����(��b9a1�[�0+M
� ���k��s�0��B���ø�%}K4�M��
(^@!_-P���,�ќ����f���Q{o���Hc�zӖ8|��:�ZJTv��G��z����=�r���o]���I7/�s�4�I�u�M0 �S��1��� *��7��L���ŷ��y�He{M���9j��-��2�Q�ƭ��Gp_�8��Yֱ�D��_����S0�յ�������,����:�
��Jv%����1tpmphp��k��`d�ox���b�\V#S�V6VwOf����>��[iS�S4����^���g��ܺ�"G����[v��1:���>�n�����wצ.�` aػ��T�d�|rR�rI`-�%�hp����Y�$. D���H�R[K�c ϫy��h YU1������3� ��Ny$�� 2�=�=��R��D��B���}�&�7�'���CMe_����;��&7�}����/t�ϵGݗۊO�@Q�{�kn���v��:��w�J���ǡ�r%+��9tN�$k���W�wZ�mU�&�^�\2��m߾�?��~z�����������������O�%��	UTH�ٮR��J���ۜ6 � ��\r��aI$��,A(�A�����ǂ���'	�a����Pݤ/f��8)��չ�GmR��Xn�]��/r��R�R;���w����>���� ��0�{����#� �Oߟ��z���q8�����ܪ�}vE%�mjDq��%~}h�xY��_�n;��G�ˋ�^���������������ϴ�9�D�R䛑7���HͨG�$EVnyȚ��Ux*6|C'f�@,�hE&3�-�����5�@��%�i�JӮީ��I��P�}��g���κҙc��/��j�I�ŭK7��\�p!�M�j�e����ؠ�,����׷`�E�vӢ��k��%�4�=Cv�K{>j��O:�滇�*�b��5W]�����VS-��?�������Ӣ��*4֪6���]���`o.*)�J@f D�h�e�[/��3�e�U ��Τ��`<rƚ4o2�3�U6t�������Ȇk1��L�M�P�'��A�*fd�=�N�<�a�}���ҞUw�Uq�e�l��V�ݹV�ٖ�r7V쿼�r����㯭E<���J��p�y���������Ms�a�<��1�ރ6�7�"  4����2�PDH�*��Yփg�[�J~�7�[&��z�[�9�l�/�mW�S�eޫj��W�ַ�����������q�or�?[�m4)�|�����>�����o�������j	��'��I$BTeߍ))P5@ڭ/��d�In���HJ��J�wa��Y��	+!a%���e��h}��DS�ɫ��r��^���֓MڶhNq��3�5�=`�P��c�����곽��7�Z������cR5�kn��������s_��Ę�}�w������m�t� A
[�>h[B�^�������ӂ��Uz�:E^>�&(�D#n�<�B$V-�`��Y�A�J�2%O��Jm��$�D8/6��P7��D�b`U�J�5V�>R��ө!���=%��e��R���nA:�ҦE�(����JF?aB�
g���� y��E"^��@UkIId�� #�/nDEA�f�	� �!v�GЕ!_��'�g�>�N�,�$~�(䭍r�a��uC9��z��)V�z����a|V�T�[m�,J�փaV�r��V��׊�DB4�.L��^4_Y�j�����ik��ȉ�� �m��M�ZK3l��J��`�B"Ӭ6XH�?������h$�RR�{	}P��Y,,+'�%ɷ�$e��H%BN	�>�][���7��L)���|Q�U[b5F�X?�fT"O���0�,M��]���W4=�@��ȹC�m�+iʫ�
\�H���J��\)��&&�� P� 5�mPp�i�U+*z��Xx��Qe�-j�&�L('-��(���٩,�8��X�;|��}�!F�;��Ѷ��3F�B�^������k�����U���%�C�W�m������]�̚R����0}�+u�$���������!J�VUbV���m�*UU��3�(Pjꈙ��x��;�!Jj�y��ENF�[���_�ÐR4������HN@�|\Q����c��&�=�`��v�����.'K��a���^�L>� ��Xp�1��٩2s� �ĝ�ݟ.�
KM��m�����#���+���g�&���$9'nD�f���@u���5�W�?�pV���������������=gk�wghJ�$�Z9��
t`��@�$:�!��C�a̫lhǅ�)�X���K���orf�6U���!���X�_�v[N]b���h( tJ�jOA�w�9}a��M�+-�a�%e���\ы���?~�>LW�>�o�W�8J�Ag�啡��>�$R1$����*V�Q��w��-��(�"��f�1}�y���-V�t��s�)՚��X�B͝�T�[ُ�lg/R]�1�n�v�������Yc��R=%���>�G��� �c���3���e���G�uٰ�V8�S��"L8S�<�J����5Z%Ve�A�1�^J>40�+o������c����ѩ���/1�s&�2#*���
i/�����>nbQ0�&�/r�A���	 ���aY*��+<���Y�T�R1z�
��	�UѦ�'o3ZBH'Q(*z��⫅v�.�E�8<`�����k���E\]��hsf;D�?u)���]�b�����YDR`6�R��4$:�5d���e|nت���۹i��B�I%�;Y���"q�~6t�����JGg�wD
[�Wg���H$ SILp81ht�y�=���+!�`����d� y�Sj�M�iʿ3v�8�׏�6v����ÐݩU�J��l���%'��M�T-@�=�X�~�\�^����՝t�6tz�p�^bߥۢJA�X�\[~�YIl�XE�ҷ:��Ӱٯ���3b�|ߞ�A�6���#���!ӂ�h�?�`@ �R�-,���<I6�,��t��_7��K��ybE�L 1gw,H �lh���~�e����:��Y&��̓�F���u�_̽���}��P���ٷ�v���X�����p�$� �����%yX�($�P��Wذ�i�\��K��!����P)ra�b/qhE��Og#75"~i6��Bz���e\��i�J����{u����U�P�tS������*�� ��MA����dd�9�5|#:,�A?��&k3KZ��.�6�Ėŧ��m�aA��j��<����Mj��O/����H$ �I�m=� �Y�� V�-'�� ^.dw3� }[Y�i�o_pm�������{�G��&u{}j�ϧ���;�Z�fw�X  @*��.����v]&Ő�i�x`�����g�k�"2��I%����]��%��Z�7�a��XŽ-Wh��0��������<_���񗊇=�����iH����7�������(RZa24&4B(fw]�vV� 7A��+&d�`㤥��}ijXB"t]�����ӁP�LhGn�b�[�e�$ ɑ@p��H��.(��:����56�D`�^=OǾ�qa�^.;@��8t������Ln]˶��V*X������wvs����6�u�)+[������X���_�ק�C�����@8����&���r4Q!>�e;� 1¡��v�J8��2Y���$�e�
�"��I�9�W]
�9�01h0L�j��	q$8�Zw�a�-������޺����j~Q[��AS�aW�*��ZR/����nG�a��sW{r���*��.E���������r�zǿ�����lJ����"����������������)�������WdC�dSvz��鬶�e��y D�X$�.*]�4�B���J`ḑR�J��GLB���H��FK�k  �	iO�h �)!<��I�e���r�<��X���.k
�_5`��
�@T�f�}������7*�
��+�u�S�w�_�)��hbY<��9ߩ�S�m�̿\���!�yt;Cҫ�駰�\�j���Vl���S�5��:���9�a�C�6Y���$h��Bn�����n&� ~���"o�|B�B�1�2� lY�/�H��3<���Do�Pq��iCDFG��i��Ea��s)[�0�Yr�J۬��=Qf��.��-=3�U��L!��t3/�A�{e���ݗ��4c+��f/���T��bv_��{�j�~����4�]x���|�mg����WT?��A��Wg�� ���/����(�؅�F�j�Ĵ49�x�S���<Kj=�3+,mJ�t���h��׍F�2�g�l������~Ȝ-����x�.7�ɶl3ƻ�s�6m�,�����s����cZ�6	�W��i��0w4��?�}�d��2�[9(a��pP�C��t k���ܕ\�R9�"��{Ifӹ(��_N����ǃ��W<o�/)P�x��|�'�����������P���S�E�G��@�a���kF��}�0�k1�����=�M��L]�U}�G7�n1����%mvRD�E@dE(����g���>���	���JUj���H��CKk,3�}�(�e��m? a��D�d�0xH���?/�~n�ΑVe(ө�幗�>�\��u�s��r�[R8Y��D����qH��
��Qq��R��  �������I�Бm��y5F.�`_$�����h�dR�����G���b^X�D�i{��k׍�pŸc[�4���z�Bk1�Z�f�ҽ̫�}cCX</g�VfMJi>^���NY���
@@ [0�ߡ�%�ވ-�'[}�8�����Z9�~NKyc.��
\�F�w�y|P�H�a�s��Y s��J���o��k�`��M�+g��7!mͫi!�P�3.o��t��b�RZX�GN�����ͥ)��t�d�$E�%#-Z�LD�Q�xn�#�|�6$�@�ʧW�O8ZW��8(1��*���ge#�T���1�8P���79��
��D��_��Z�fg�Jm�X�'�����ޙ�7�>x�����vPf�l�ǅ��%�"�'�;z[�_X��ڊ�5hDr!R�(�)d��������|�A_5l^�۞*cADK��c�I�2#��Zg�2�t�,����[��𱝣��s�\����H) T;J�O1xiIIa(�E+)�1a�%#-��`c�w�ف���[B&7�.�m����"LB  \~�7Se�}R1J<M'�����z�����%�>F!X����M���8tL��Snu�Z����M(�X�`z��~��y�<�U�x���f:�jD l<q/��aU�A
�6��~�2"c��O�� |d 	n�'���y tg��$V�(]Z;�2���TP��V[����Ƶ1&2�`:4���oT�ICHV+wIQ���Kqw	E-T��v�V4���* ���R��8^�,�NP�ogh��Y�B�n1�
%�`h���mn�ɲ��)de?8Gç��Ϊ��( ��[��+��m|�X5��m{}k��������J� ��'��?j���Di�
a7i�q�����I��!�zE���p�	:mq+l��P>�kR�h�5#bg��������Nc�5�sz����H- �IG�	\`pg��a��M]!��%�a'dq�>uھD�t�D�.!�Me|�]�?�A�����  o���10\��dI5Е.��]*Z:6ZV��Sr�,,}* �i�_�"?Qx�M�?���y���S�-�8�-�{UBO��a�y�S�(䂳L^��=�G^�_�O��ˍ��P	��
-�GH�,V
sW^WR�q���Ff�S�<D���$g�<�Ӄv�g-t����l��h�sv2"�/uu����Zu�������WK\�k�09�>��� Z������ɘ�&��`��t1�<�M�H��_�M+� �N\jGP�n��Y2�s6k�Jq�%n���r^ ��g1Ĺ��]]R;�6��\��83�7FC[I�(���I~��9��{A��j�m��`Q!����Z|�l_O���/oXMך5y��U ����XR�I�d2�g�o��v��t�Q	���AT*�0i�q ���H��;E�	,�cgx�a&�L� =%���#p0x��F'��W�zR�U;@b�Y꬙�� ��%/z�y�ں�8���i.%��J� � 2��p����'������R��e�{f�5�ٔ��n'�1j���r�
8� �fK#܌#O�kWݽ�����ko/�"ٵ��<`�d���M/};Vt�X� �V@�@����E,�F�##A����8HL�,
BJ<��)$����+L�%�:6�Wm\���{}jqAB2�
��7�[�͜����#1��2���rI �  �5��XW͙N�U�*9���W�դ
ξ|�yt���5��;�8�I-^�F�{��G�����Ӹ�,�)gs�3u��ͽ'���8������Z"j�7w�4�&I�1>-�X'�9m!`�X�ˈ��A�#�R�!��C�0�K�����Ȉ���gh*-!��h�!��1��[�v����w����H.�vJ�x/1hh'X�	AC ᅁ�!"U����!4�ӻ�ɦ�c�$@P3}0q���$��"�����ݒ�-��D/B���!%��H�A���R�ʄ�i1HmV����QCS9���9��0��Q�n��i3�p|y% C^�A����  ,sT���d��%�b��k�����<�Q�>d��*�C<���~T��m��m����y���v�0M{빓�������efv��L��Y�w>�5�̼y=���]��vvַ2��+G!����2g2�i�d'
������9:�)�ݩ�V�X[��-1�H�Ydu���#	ܒvXPe��p���5j^x�k�$�����L���s�b���ns�^�
�����I�V���@�3h���ݱ �%�8��K�E(x�&f���e)�(b�ޥH*���`A2k�e�xJ�Q�#��<dLģ���U:�%C��������"��������H*��9ŲI�cx�	��#�� !�#&�� ]��'������ ���C����(�^�2T%��Nx�mB*lL��x��%-�Y�C���ډ(n�����|�e�ʗ����������w��U-J�c�����4�Y���:�^�)U��x�W���$�| ��x�G"���,\���|oQi�]�t54h�������5�U��XXZ�=��jW&�&%������~m7��h�վt�%����Ē>�k���������ЇeI$V�;P3����sW%����#�����b���^w����X�恝˻=}��x�����3����p?��æ1���ȱ�cdW�$I6�]���%H�  ���PF�㽩�& �/Ar�����H Q<Hng  �Iy=�� l�����b�  F `����;S�� GI�hk#p"g�ȃ��)��gn��s\��n���]���r���8�wu'�2�垹�c���������������,c��>Հ��i.����IK`������yY�w� �3�]|Z�[��OD��8����0���c�"bJ.*!�ŘN�$%K��y�\���@ic��3C���[4 �ISb&E���l̑�`�&�hl��t�/�"���Jd��̉����Ao�%REB����d�r���pM�x�,�Yy�(�Z/ʤI`/Q�b�{;4g�b*��y�SO�����/X;��nI7��XԲ[�.h̫��j��im��������%tg"���<�b����Z���	:�>^��L�Vv�$�\>d�|�2d�t��R�$<���©�E�30'ǔ�7H��U:��=�+b٩�����ji�8S7(�1M':hgEK0ILb�$j�JgEuI��-��ԙ4O;����J � �>�D�&A�Z��G�Dr�)�$�f����[�#ԕA���%{�7��z���MY����H :DJ,[`\X�<Ț
`�����"d�����u>��m�ƕ�
/��6M�B�+}����,��m֧1������ja�#�)���B_�H��ro�(�WĦD͔G�(��+HQ0TI������E�u�t�!y��ѹz��+��W��K5|�6�"���霶��^3��raM���L�w�W���)E���br�	������Q��t:C7qo HF���&������Z�r���hd_ ϣ ���9�_��
���6�Yfuk��&E�]�<�	.ϱ3���еga�X�!� ��R h��3��D�L���z� @����d��?�J���m�>��<W$�7��?���8J궽������H��:�H/Ap�	X�a��	� �%�������|�/9T�/fPF��P�RDsjY0Hz�J��y(��ѵG3�{���?���̻�X"R����?0tiD��A����Ǚ{���jQ.�ɮ�޷�ޗB�a�l�;�Zұ��W7SD�A.�.e�U���\�?,%ḇX9	�Ќ��>̒X@(�4�k�]��w�\~����Y��y�y�*Vm5��|�Z5��25����)�
�������R�.�0�G���t}��g�n�y���k+� ����0�HJ̍����iu�?����U"������]P0��1P����K!�������o��v�`Zx���c7�e���"���Ȕ���d��m�������Ę���"M��hu 7"Ǥ��,D��i�yK����IzGP���
�c�I�����򌩕W�g%�Q�h�X����Iօ#��s�*@��� =��\����H( S/�hI@^G8�I�N@���᫞�t������& �Ȭk٩US�
��k�]m�=b?skr��iV�6I��x�IYg �0�Q�̵ڑ� �!uON.�̜��Q��3�麙/��C[d-(�D%��-g"q8�v�rB�b�8��yk��O�n.a�.�S����8�n��v�5�2s��<��aÒ����Pȗ�����.�D�����p���{b7i)'%MJY �1��&�aT��J�BzA"���$�+̪�f1dd�	��eo7LR�Rm=���4�Q�r
@�-�1�Q�T?��Y�9���s]�#'F����ޟ�����Ze~�O,�QW�����5��Sr��`��"9���\ո�O9��X�er���H J�JB@`gh�	*IԩE='�O�����hf���ԣ�SEP���k���]Dz����?�q�\}��τ�_���K�&���\�"�f��g]#�/�!O,Y^2�H��e9� )��y��1e����B�Y_(�X�-�����)��If�5+�I�k!R&�&30

(�B�v8��hF@Va#����+L�X����c��)�mKc�H��8�D���>k�
²Y/�|�j{�$ӃA�� ��,l��� )��D��U�˕
��P�2�y2�tB�Awv�S]d�$�]���-S��Ֆ����]lb��_S�;�%2!`�������{=���J�Im��c��d�^V���mgUr,r�4�F���9?� ]QP�Q+DrJ����h �/G�8IhOX��,0���s�4�⤴�0Œ�.�dJF���勢���A��ہ�>m��Ԣ�}��c������I�" j�}��(Տse8�I�+�XF�j$���ilQ �iD���Kڭ��c(�i�)���d��h�q�K�������h�I]���+��h4Nt�N���a\;�@�4���� �%\�-� @�->�ͺ�����6$��KS6Q���UA��G��8lZ42#P\;.�T��u��  �����C�-�C�`�

����GC/�K&�yA���n���/�Ϙ�r0+1�mյ2�g���ƥ���-�S���B�: �)@�H�m&�KoPFZhHIVGs<ǉ56��"Mi��U�����h�z*C�1`JeH�'f	�!�-%a�b���'E���<�|mU��v��Ũ���xZ�5v X�����-���m)���)���5�/4g��b�RC)n���v��S�!��Z[T.����.�U�����Y}�~�L�
G���6��xI-wm�@��	sO���d+$���PJ�52bJ$b��E���kν[�札C)җ�cz��@@��N��1���h!R��g����%&Ig�ž��<&�X��%B�K�o����vU�0��q�s�n��'��j �(�$�����2��.Lx���<�v�E_ȞmR8��MAb���H 7*�P�BpL�H��,	� <��r$���p�����E'\�S��Me��V���o�֬�LN��%n��+�!ڲ��h��*y3�8�n~]D�9�E���b[�Vr��ˢ��a"a��}Â������ݠ��E��v���������"`�gA),�g&L���t�^A�r�������9��햓"�cZ�.A
����k�j AJ'+h���鲊��c\h�@����Bc�)4Gf�"Q$�V�V��g�b�4� ��m���_�S��������c�솭:����~��0�W�� "ڒGb@Sm���dE�i#��SA� 0��q�R���H��"��	h_EX��.ĩA$��"����!Ȳ#�s3<(q;ʋ'�=�sI�����4�i�f���Nv�9��˕�YAz�)�)M��+R˘��s�L�C���)��&��e$V}9 �*�X��n��$��-g9�%�4�#Žɵ�1�$�	� �7E�0��/�F�,Ȩ�����EF�!&a�U8�ܣ��5��T�5/�uc�v�$M�y���t�^�i�"�����bo�����	Vkg��ґI":���"�$;[2N���c�#t��[���G��w��z�^�l�N9le&e���PꍋX2\��2L�Y�&�gN������H��+��!HDeH��,�� �ŁVbt�x��I�C��
�����5L���*�:M�����"�tu7��i#������ky I����
��.�Ț�y���]I�5�d֩��@�@������۳ ��Or1�j�	��"?���Ҁ���K�����k{���Y/�2��9�u���6EQQE^��YIR����?8������/��W���IO��G���@ �BR7@��=��f����d�hMbQBi�>���"�J�D�lqH�<�MXU�Qj�|�8�AyT%����)=aPب��e}n��u��� �8� �DZ�5c9�`'$��tH��P0�9H�)#��y@<e���!�s�pa;%&�p�+I�i�N�H�� �S�`�&�^5D!cd��9�7����� �I�v� ����(�U�>�4�J;I3u	&��*�Y�a�ć��c7��~������Q��&�.�_�xO����0E�A�H��F *�#�� �!���:�H{��0 +�@W\h2
���7�R�C�y��Ej8�`v��M#�۵�h���	H�Z��@2�$n�����/M� ��Kc@���nJfj�����mj5<��}���dh��J*F�@�<CHv#,�@5e ��	�%tY4!+d�e��.�>�D�KmV��\����Y� �m�����t���\�c?rV�}D�]5�q*^�=��5�,��M*�F#z�Ӥi����N���܀?�� 9��:���(NpJb��>�Rv�MФj�u�W�B��UN�MQ��\�[�$���Xo�4� D) ̂E�@�F���=�j��mL����'w  �NI ���dH��$���,�8��r�a�`�#���u����q�� ô%�B9�l�E�g؏La`��*� /�F�����>D�p�{��x�]�#���-��i"A�c�0櫯`u
�V (&��ր �����,�N��Yc\ABvE* q9�(>`���4 �n붳�<+�s��b�;�0��(4���Q�u�7~�SL�忔Q(�  NKj@|�h�����d�����7@H�r]�* ��TH���x8����r�U f��"����q�#a7���$��Y�Q�pSi!����r%�� ��c��l�.	r?�z�Nfc���x,��@��;o)��	Ź)�!�t(~�w�@ O8� ����z[���g����)�0�34��@��̓�z_�d@ '�Z%����R�@At�dC�Oe z�~��Pi��TH�m C�%�(d(� �-4c�g����h��N�R�:ʿ���+G�H �
��� ��9�TT����2�}2va8������XX��i jYZ&��	|�X�3D*g�WZ�^@��?�3���_��P %nH� ~^�_"j@�17KY����x��H�*�c��O�/c\�\��  �ȑ 9����dH��lDP&�2�H�C,y��l�a� ������G���[�^��ys�-a�]�j��P�_�������� [�" N��$*Ɓ1�3~B�*6�̐�L\<�Ӿ�j�-�$|c,g��.���AFF�D��s�"����VM�30�|P?����2)�^'&@N�d����YҒ��L�YG����P�J���Z.j�h� ������ش�V�a`�(�:x�O%�����[��� }�� ۛ��DH�+�Phx� #U�@�` ��a�� ڨ!�b��u�.FA��
�@�L�+h�j4�  jI$$�'(YSw�	`g&"&�@��t��@�����������p @�H�Z���j��`|0���8����T�ҧ{�߯�������
  �� =�Nf�+ �8,g��H��  i   �� "  �    F ^��@�\6$yb_����o������jLAME3.100�������������������������������h�  i          �      4�  ��������������������������������������������������������������h1�  i          �      4�  ��������������������������������������������������������������hO�  i          �      4�  ��������������������������������������������������������������hm�  i          �      4�  ������������������������������������������������������������TAG                                                                                                                            �  RSRC             [remap]

importer="mp3"
type="AudioStreamMP3"
path="res://.import/ball_matched.mp3-e5f101aa4e1a23c5d14e187a422c7691.mp3str"

[deps]

source_file="res://Sounds/ball_matched.mp3"
dest_files=[ "res://.import/ball_matched.mp3-e5f101aa4e1a23c5d14e187a422c7691.mp3str" ]

[params]

loop=false
loop_offset=0
   RSRC                    AudioStreamMP3                                                                       resource_local_to_scene    resource_name    data    loop    loop_offset    script        
   local://1 �          AudioStreamMP3          �3  ID3     PTENC      Sound Grinder 4.0.4 APIC         TCOP      Copyright Alan McKinney ���h                                Xing        2� 			&&&----===HHHTTTT^^^gggssss}}}���������������������������������������������������������������   NLAME3.100�        � $�� �  2�"Ŗ                                                                                                                                                                                                ���h  > ��` -Z-�$�ke���r��0� E �	%�F��ϔ3��t�c�}_���������Ϩ�@  N�������w�` � @�h>�~Q��?�������������ZR?��6 %
<�	W�@3I
��L��@�#���)��`A���%V�	L�s���Q�}��e��S��7j��g�5^�n��f,Eߧ�{�`�z�Ѓ�^�?3�׮ʚ�f��P��l1O~�����M;ҩv��͊���9-&p��f�*�5�ۭ��{���M�o��q���������']����𡊿E��aC�NK�Ɣn~&����,V~��
��u&Ax����^WG�W��gy���MjW9��D�xU�\�tmU��i�m�Ϋ�r�Ys���2�B@+7��L@�xIZ"Z��HM�i�J�U݉>��!��E���[��&7K�C%N�jBD���h Z]Za`.![��sU��� Յ*��� [�$�=��J�ML������-��o�d��� ���u$��Xf;N���4za̹�m���4KOWM%+&�F0����5Uɦz/@ YZ6��"?Ze�w���a;\؂>AP��i�U�S�j�ۿ��W�c����� +����� ��"L��dT<HxX*e�K�#I�ᦖ�TƝDI�9�劧�	���4A΋ilm�s3DZ6E�>i��߱'��a�n\g�<�M��⵫o
�`ͨD�X��3h{|��nұ9�a���xnr�4��u������o��5W(�ͨ�s�pu����^���"�$}��8h�N��.ʗ��OB�.���q��-�F�,C"I��N_�_g������� $"wwFE���eR���D�HZ�����t�J|��L�@^fb���kp�Ơ�i�f�"t��x��U�r��1��D!�J�[fx�U&6�n����h-�	����o  ��JO�P b�{S�� 5�k1  B�q�@�<L��a���A�Rdð`�Z|0��f����KZR�1)�Q��'3x�y(��f*����*bp�������Ce�����k�;0��m���*�D4�d��Y�����F��]���\�fÉB�1�5<NXjAI��*ϝe�����Sl��_Y��+�=�^�&(�V7;�@p�e���s�?�������������������������������_�L� Y���]������6���tE ��1��j���ֵ0r��� ��� 9 `b?zT���l."xzX����M3�ѱp�7��'G��T<�F���0��������*6��i]rɺ*�YD��&�,�
�!���9Y���\/�R�%K�N�M�mIH_($��[��A$?�q6R q;j����"9���X!�%���V��ē��Q,�`A�N���4�0�����&%x��Q9�*�ꖂ#]�)�wհ0is��@sc ���HH&�9��D0L�5CP��W�\Ŵ��-:%dTǌ~� 5V��nk*����LJ�%q�a^KA��X7��|��H�0���-<��%W��1Y8P>��U�Y���V8L̛럅N�X{���7��z�H�A IH���/�w�[��
`(�����Ǜ��Q�[� *Z��%��[ix#��6�^�ջ���%���P�]D�xP?��ɩ��C�;����{}��N8�����Gw�,�~�Z�� ,�� P�QK:�R�B/�mV\f=G���z/;�V&�(�<͉M*���I#q��F-t͢\��N��8N�ջ-�$�R��.�:'�A=26S�Q�	��M��%�U#c$���I%����뢂����+t�t�k��0-A�2 @ `�! �#��	qC&XT'�x%gJ���hW��_V�e�7A�m�� �GN=3�豓
 ��F��e6�fع���gп�?���B�%���4�����LSś�R`Cl�e &��Me�+T�5�MG����.)֯l�z#��6w�C�#�/M¾Ϩ�p�?����{�O[i��N/°_�\X�m�Yvĺ(�UV}�f���<(�L�ƣ�"e�!*������5�S��P**�PB��!	�)3����Q��'h5 �  i�cA�KbW8����������l��wS�꨿D&����[����������"(�c����47�Scw��*0#\�Ea-aP@�3&!w�O���h W�Ui�y
Y��4 !9m9�� 
Gf�5� f%}X�CP2:���֛�$�<�l'#��K��CI��^�W�}���y`���s����׻7��Y�l�w`8V��[v��ˍU��C�3ˏ��ح��f~'������qs�1e�ˊQ^�X���m�ܖ�� �" 
u髬$ɶEg�� ��;$��c���#�P�5���e�E�cc��;���Y��N�F)w�'2C�\AU͙��4�����O��G�V�g�&����I�-E����փ��'r�I�#�m� �(�	X�J�A�6Ot�N,��8*s*��	QuE�H(0��GF�'�v�\E��	HP�,���FиV�Q�&��W�Z���f���8�z�kF�S��#�^	z[P�~��@@Gk��
�.��Z��TɣP� � b��Zu���MڲHQ?�~[�m��ub(���C��K��R�B��P�=Ba�:V39�g!�}EvL<]�ހ��a�}��\��W��Q����?��nF		��� 5��H����-k.26ן @L�x<  2�A����*sU��κ�r�!p�y%��w?s����~�#y.t�*�7�L�_~���	gJX�6�˵�e۴rW���+�����>�ƛ�����~y������g>]�����a�y����=g�j���cIR��jk%H  ��`�AR	z�9�tę)r^6�0�Y�����ʧʊ�̖!P��W��V5�5��4�[{ӆ��b���h" >S��e  V�I�� 9K1�a��H)&��"$�E(a�˶m����[��� 2�ye|�q�t��ج���(LD�-���������Q򗊬��DL����N�H��2T8�@����eFW����&�|�fW%g4`�(��q]������5ט��ʒWV�By��Ѩ����p��Bװ���dmTq�A6�
S� �]�4���9�5���9��jD����pK�{$�ɑ�Fl��u3��h�\�%U��g�$'�M�����_J�|,�4�/�{+&���Y�w�WĶ�^S���+ѿ�ޤf�go[�7M���\��[��%n��,j�z���|��
�z�|��*��+P��ue5J[d)@k��q'�$��i� �����Z�z�׏?<��=�"Y3�b���SF��O�u r����P7~��M�T�@4#	�چLC�Ld��}�A��h�C���$ ?�=�;X>Xb�B���]t4Qޖ$C����UI�r�kEh�Qb�54�R�G��$�e�d	 �� Nxy�*�Pb$> ���S--�\�Z�����5����H"��RMkKڃJYZe���K+�0�A��&u�.<�L���0�L���fu��9�'U��*�t�cS�-` #[�͖��ud����Z����$*�#��O���
3����r���$  �..4����=����H�P�aH������g~����b@$� ��05�a��z�Zi*�"q[��ˮ6I�X�V���m"S�BMu5��L�{>L�)5���UJ/;#z����������E��ʳ"8���  &�Ts&8�^Պ����ٺF9K��@흂 F�}@��)ފ��RM����MK�{�f���&��ab�Q,jkySY\�%ة7�1ArZ�9�J6�R��Ar�s�*��߮��K,��@�� �H�Y5�J=� $
8��#���/�����3�<�p$@!G�~��H
�4���j���:�{W��y�+hĵ���<� ����Y!F��a*5ج�i�Ur��E�������r�){�w�!�Y@�|E�:T�	�P���r,3��HPTu���&HL4vJn���#D�j����!Hv/���.�W���$؍�d����)������H)��RM�	+�u�I�a+{OiI7�1ka�)e��uPPX��/UeQ��
G��$�h��fv�� �}�#��>���-�$S�G6��IH8u�\�V^H �e��(�vsr0�l���zOO �R$��媗K"���+�Mң�A���Z������II�/�o��\����e�g��z��7�ѻ��_����D|2���6�@�M��9bA	b�$kl�`Ӭ �1��R�&�D<��f�p������2�'�Y�TQt����/�i�m����B���uz����O�li{��ϛNO ��5����W�����O�;���5�B9 �Apa�4�^@a�0a�`��\�X�%jT��Pj5=�ÒC$�D#Wj݇��яJ�����/�q���d��,o����k&�̹���=�jQt/����ELWm��i/�����,?��� %�6�j� 8阃�6���_��KU��}�F`�
�2�i�������H��R��	,�xjY�`ͫ�!-a��)f)������+rH[W�0Bӎ��z�	K<6���� �����b
 �
�k�ā�:���h�c"�Js3��D]���zp�u�;��I�*h��_Ek*b���,�XY{��C���k�~���,ȀD�ŝؚf�7��}�W�pɽ����aZ��[���^�2F�Λ5�]H����T�E��@�u��O���>�. !!�*%Bsk�j¢�YE�X˘@��J�	 \62��nm�]�~��A�C�l\��Պ\�~�L�ǐZ �zW�����1D�+ ����jq�r{{cO�(X2����b�)�$�-X��O�L����ł�I48���w�wJ�D�Pȴ��h{�HHd*�,���7OP�Oꛨ=�;̹����)�����0��U
�s��^�r^w^��d3�A��m��ݶ �UB���D�2�D�����H qBK�	[�x�i�a�� ��tB!���&�	m�,Tr�A7V�1>l�8(h�V����&}'|�jg1A�)n1��6��U;Tޏ�����\���6t�g�̬��j��9Ϲ�s��T����)|o�)!4�s��	���\���p�����J�\R�Y�a�iV�_�ӥ��[��b+��<r��}���r�u������
�C]���.z��o�\���� �j���a��/���R����>10o;�2�� � T3���c�!��T@�|�n�J�G2��F��|�����`�.��A��]|�p��*4�2��/�y�)WJS,�H��9�m(?�ǈF�1,� �[�[/��Ac�q��[�� �P #2D�]E�烙����%^��������w�"�K�.��b�σ'�&���:\uw.8]���/��狐�ʬ�4(H��ga^����<�EA��}/���J�b�Y"@����B_�9J��� �)��@X���%�1�	��U��(��7�(�!�U����@���,P!1�,�p�A������Lȗ������H& �<�keXo�i�a(}�!L$�	�!dY����ݞ�9�?��0�?Y�p������{9x�XL������H� �+j!�h�uB���S�+��}U�e+^�F˒��U�E�1��A�SdFH���d��*��6�u0ht@��ֱ���1:��a��׼�g�eE���T{K�7{0ԯ�����@ (�y
��YF���6
3IH�a����Ӽ&���6��Bi4Y��5�Q�XxB����F0��G���۽��I����[%9��6���a���m�]ᾋ�ͳ�[/s@�x��'1��	dR%3���ikd�3�{)v���;�N�a��_"k�\QB�X����w"-O���C��Va��ZƜq$q����u8A0�y�*�   bI��[�СA�S1F���@Z8�$ep"O�,�
�I׋�t�z ���ÚmJ@,�P�l��'���LS�8�R������Z�F���H)�|A��	D�c�ja�mMt���ҁ�!$���e�_�,D��UD%���C�a�V�J@�\�� ���@TI�UX`��,1�K>��<qV������� ��g���D���_k�)�T@0x�C�\tA�h�;l� G]]�U!X_����*��)�1�� HT$��id �Kd�D��]U꓉�������4�*�u�D厸�1�h��,u�7�~?c����ӯ��.����-�5��������y��&���� �� �D��J��M���_���`��Jc>.?K����4�cn"ϚZZ%5\�a����4�$�#�|�>��q���fg��w�Mq����7ܳ�[�*�2D��M�� E�A!n�ɖZI$�w�nC�ah�h%�K��v�2��<U�".[�~
1�Yi��M!n)�;��=�g5h�I1Ds����N8��-{�<aa���f���h���kf���H3 N;L{Chl�8�e��LT�#���%4��D�G��� �0]`/�,8�@�V�)l�U&���S�_��#o:�hN�balz�,l���-Ǽd�#�b絏��[$�.��a����<���k[�^W����(놿㳊�2  '[�A0D�\#Uޭ���2����w��1O�¸��%���L�j��A�����z ��ؚ�tRA���Ù��5_[ާ" ������
(�z�����`��� ����,kBQ��c���9���4R��D �
�$��S��� ����y�E_����CP�>p��K�9���'����(I�c�L�q����(�i�#x*xC��"B'��С���?����h�B�(�k&<�lgh�e����-�1a��#���c�!z%�����M���(�Bc�Q3�P[$�㳴�T��߾dtR��p�V��2������  �J1C��c��>$�20��8?(�a�_���1�Y00	��&�%�������X�z�_u�p,-�U@�Y{0��,gIRI���a��?Y�����7��.���cC�T^!��9��e�8eJ���<��^\x�7H_��>n�6�GJ�Ց��US#��EcА����X���b���$`/q]�1��0�+��]:?�P�F����z�",�e��Zro#�-k�!�$���gk����*��8�҂�y��'��S|� �������<[TJ۞������B)����!��
n����MY?��oͼ�ܺ �@/t։.a>@�`W����aJ�;>#@95mM&��F�m�ɜ�F�d�E�H!]i ����H�/5��&E@i9Ma#}`�L$����⥔����p��񩠊�V�}zN1yh��$�~�X�E�Oҋ�P	
kR�S�H(0��3�*��N2]�J�3�
^%��",܊$"���%�_ᢳ��n�./�^z �5��UP͊���ќXp�x�ÏiD��(���Q֒��.7 M9���-�a���B��<��/sN�0[,Z��A�A4�(3-:�z���K[��P�(eԤq������-�4�5-i �g����  2� ��lVE�Sn3ex$	
���f"z	�TP�g5Y<Ȉ@Hwe$@�0|�lr�XR���E���2��^fWp}�H1L�����"ok��F�Z �#` E��a��Fq��C�����F���Lw>4�@�Ƣ���v�vPK�$���Է<�ְ�c3��kcyl��6�g�Х�;�4��4�يAZ�d���h2 >6��,EBbf8�a����,��o䵃&Tl�@"� m N�ې`�)�aI� 
�U� �����@h��a|6��?+����ЦZhrGXf��z����n��0E�&:B�(�+No{������|w�=q�s��@ 7p=��f�E�N�e��+ء�z}�����f��h���6�Vb:`�a;�2a�*��O�Z]�8|'���aV�cz�v�`����	�j"M" <.Z�WH��H$�4M�OY�i�3��h�.#dW��Xijc�Cf"�j.7�;}��毒�i�P�ul��+j���J�7��z�2�K� "@	ió���H��2FS4 ^Ũ�e��0�L<Ɂs����t�(�&/�vLj~ԗ2��Z�	B�'%���^�����/5�	�����]��8ʣ�_	 $���w�������F/(�a����8�1���`���6�Wf�#����}�)b#:���S+m)�.��İ���}֧�D�W�-�)_~�x|;���1�o䊀l��a3qmu�hj8�	�!F)�rg�w�e@`��)��$U���4�.P����A�ѩ>���r`�r�ج����<�K�uw�[Ӷ�֛M�f�ak��x�e�� ͤIRϠ�����
������	V/p�8�7Vr'!���v'of��+�T~�����T"�1�kA����D4���1��z�����'�o_����4(��*U`�#�ŀWi����&$;O)h81`swWܶz#Y��ˁa��������>�Z��/�RY����#W���v�4�F�\�d���H, �1Ż	=0[8�e%�x��<ǡ��$���P+���|���(�ILD8d��NC�_�mMV�V�(�o]���v�)[��Rf*�$@�S
��c服���[U�����%�zԪ6�6�:$ٰJK+$�`���Oj;�RD2��tx�aX�����Rc�ڦg�戚c�X8O�I�r$PL�C3�E��5���?��<��Ư.1a�+j?�����%6�"��$�<a�-H��� � 4It�jJb ���A�g���#�5:�'�[�WtL88�z�^{sW��o�i% �н��֮�16�s!��C��^�ߣ�Ud /�0G���H �,�K&E Ze�-=�{��L�.�P�"I�����pW+���G6��2G	�
�� ��c9mZ�9*��38r��E����X:	Z�/�	��&Ӓ�x�_�yh��YP��&�$��8F�<����<����00DL�?�E>�!aM���o��4ѝ{����$36�V��=�q��P��T���?��ݨ������W�`B �!$��J�y
Y"�T�!ͣ�Y��ځ�Ny���;Up�HTg����X	
_+$��+f���\!;=�K�=Y ��-k���������f��Kx8I���v�����BPe"!��@�t���q�J�$qy����+BFx�t�}�I�۝F���Ӥ�s��e����s[�A+���u�t�L��� *
����P!���A2+��+֜�)�����F��pTS?\����iޡ���p0��س�DO�m������v�"����th1�&H�,2�U��-a�i	��$΁;ci��(D�a\:��x��[�ȥAP
��V2��l���~6�X�I\vl;�������E%�9�����3�H�ie�m�t���
*� �"q��,�'�Y��nX�4������� �0@��gaU�xODih`����c�������A�S�H�b=  I��	�U��#��ǡ|�5<�S����� LL��� �wHS��7˱���׭�l�px#
n�۵�z篩]�0�eJ
i�H�4E$Ҟ2�+J�*!B)���h
 �#�k2�L嘺a'�
\����A(���$��qj	��!(< ;�����F~����>�U�G�%i~�wob��f��~�P�Ii��賢��K�� � �w�%1E�B;�-��[%�e$�@tA��[P�e� �"�X�4���]U�a��>� �oY��df<�RM��X�m���0LR�c�WÍA�4�)XgЀ%4}�F����c��#�Z����~��4k�D���j�ʖg�f�mU���u�Uz���� UU�]����c�N�"�W�Y�0K0�(d�04��${�E�P������C)If �ᮏfmt�H��^� �	%ڞLv�;m�&��W�e�j+�6���W6�&-0��$��7PH���H Bv#ES3�Q$h�a��
4�%�$OaC��"A�]x�ҡ��D�CR��W��ﷳ������i$�C�4.r^1�}ʙRC����(�����s�������'u�Ǖu+}�bEW�m���E�rr������}=���u�dۻ�q�dE�qԦL�/���t�U=^6���@ba P�9Ө$p�����h�F-YӢ5��uB:آ���&�v���:���Z�I�H,!|#�	� ;P�b�-��Yj]85x��y�e�qq�b��T@TY���yrf��YH�k3����V�7����;MY�e�Mj�(`�j�y�� �kã���h���kL8F�x�a�z	�a#�=#�3�u���x��߃� &��pD�>�;R�t�6_g��k^E�F1�O����!������E�NX.�X�!�*�rY��`xWj|��[���oWR�V�{���m*��x�ֹjV�A����c����KsM��i� dE��dR�D\�8��!5 �$_D��p>"n�=:Y%bڿ#hf bӢ�T(���s>���;�w��([ri[����������"�?��t �6��*̙8�u�ʽ�I(�*��m�D�i�SyF.@����]�jG�����~�*�tR&�:�$����_(�!���4�M�����H ES3�=h�a#w	�k�<�a�����R�dD�&GC��W<bJYpb�Nu�P����w��i�.X�X�E�G���@<��>�"��9m�5O��%FX�Ud���Ձ�Y���u5B�n ��p�_��t����a�܎�ܚ4IW$Ʉ%e��$�DK��7 ,�V����fuAP�)��Sy��ó��!��(0Q�xD���z��������nc��!K"#=�ɦ��5!�� 53�i/DA� 'c_E��!9$k=
��o���>d�(�-O������U	��۫@ ����BS炅
z�*��4��h�*ޔ�q��T�z���կ���th�#Gi�H<#H�=&wLY�2A ��t��ԣ��BX�A<ʪ���=�x��jT�ڠ �T``;��LѣT�k�1=��ʠã�h>��0��؉T!�)�$p��ξgA4Q��d+�.���fB[��l�L�4�6��٢P��w腌�ު��svJ�����=-���h'y���V��j��x��<�8�� �8�ŔyaSn2-i�l -�|�C���_�����M�*����d��,���mB^�����t%P��y]7lS"���3K	*���dx��th�dG�1x?���-�	Tc�0��d4ǥL��5��/��{�����B�%�I�r������J��&(�zyu`�©g��-�L�,���<�sX���+�h�h�e_�����~�:�	�-�ݪE$A1' ec���ARꅢ(����8�M,�"�G9هq-��]$���P���E���}﫡Ke�r���PrI.�}�E8o`����J-͒�#�ɡ9_5�a���YFJ�D�
�p��ʽ)��U�������"�rIX Xl�f��g��>� ��tH ~����B���1�>�i�p��b�č����E
GgI�,t�U����������(*��d��nΊ�*^�5h��()ɼ?@���~=,ٷ�d �S8��KOs��II3�&\����������$����H @rzFY�s�����4�W&�xYĴ�I9?�(&qfYUe`�[�����G{AF�vF�@��̉&�D|s^���#4Q<�����Ѩ�X�S��|<Z�!���͟��~���U"[�� 	�Cڪ*�}���nU�r�=�(�qU�W|W�����dr]���dh�dFQ!4�D�)#ca!��� �
��`���F���	p�g�٠�@�㦂x"���l	��u!� �ҡ0O6�hD�W��{�E����}���V]�M;m��r�'�.�2�V��3�V�f���9#Rdu��� }Cl3��������� 
���<_i���e;G�e
��JmH06�b���O� /� SjgNg۳�p&bs�k�(p(����U������7&ԥ�OP�r���$H��	�� �.b��a�`�` O�bh��@m�A{�Jf1C@���џ�V�����������P?����b�ߧ��CLYߞ�|;eG�G��]LAME3.100UUUUUUUUUU��h	��  i          �      4�  UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUTAG                                                                                                                            �  RSRC             [remap]

importer="mp3"
type="AudioStreamMP3"
path="res://.import/ball_not_matched.mp3-7836674db5142ae95252d3f2c8797b5f.mp3str"

[deps]

source_file="res://Sounds/ball_not_matched.mp3"
dest_files=[ "res://.import/ball_not_matched.mp3-7836674db5142ae95252d3f2c8797b5f.mp3str" ]

[params]

loop=false
loop_offset=0
       RSRC                    AudioStreamMP3                                                                       resource_local_to_scene    resource_name    data    loop    loop_offset    script        
   local://1 �          AudioStreamMP3          ��  ID3     PTENC      Sound Grinder 4.0.4 APIC         TCOP      Copyright Alan McKinney ���h                                Xing      n  �  	"%),/269<?FILORVY\_bhjmpsvx{}�������������������������������������������������������������   NLAME3.100�        � $�� �  � �                                                                                                                                                                                                ���h  �
Nm@,`�� �wG�� ����70    ����h    �h�% ���p~���� 9������������i#��,�7AbC�<>����A��?�?����������>~\ $f�����V8@FNi� ³��
���h�[.Î�
h8$N32�H�ً��A	���t 6a/t���n���	E,��A��Ã��7|����w ���o�SM��-t���^�<�z	dH@  c���ۉ�$�'v�l #g/��E0��v��ofX���l����E9�mF,S� �]���C�ueC�?����}VW������隯�ʹ��E������R����   ���  :�F'梱�we��΁�,O�B�2 N:�fa�
�5FKcD���:ra���O�֙p�'K�됨�,F_�:;Щ� ��c}��/U/��:O��Y6|�p��'O��������i�M�x�21L�}_��V��@	 �8  &�5�61��*cĀ,h�#��@�����h�/h��r` u*
� U�;�e�²�(=���
 �9DQ����gN���e��))d��D��� ��$й�7��<N�C��N���@Q}�R��	�@p!�U7u� ��Y���D�@� :�[����A8fT�fȣMh�&'��@Y@�`XƦMS��H��8�,��j�������r`�0�`� ��� d B&`���[Oܽ0Y���4����FK����ɝD��'=l�oֈ�<�G	��PM$S_*��dz���p���*�O����JO���$,n���M�d�苣���1�DI���p�d  �Ҩ�Ӄ̄����Cǒc ����c!`tj}�F&�N2[����L�J���t�;?��e:)��u���+��P^t��n,@PG�i�$x;z�Ng�������2�(unS窜����������������P�!s����Q���^��F�D���o޾������Mm���2I�+q�%�)L���R6ש�#P�`&ęt��oS�gh�":  (4����s��$1������$�*� �ɀ��)��|��1u�܅���_��u���a�r�+eF�'��4����a"3)H��>��S�Ѿծ��Ϳ�a� ,��f��NU�8\b�%Dn��𐆘��V��H9&�B�ݿ���hSY]##�� 9CĤ {
��i��)����!� Q�AI�⹘A��A���
d!�h&pe����h iQ{���*Om���gW���$��}���qx��@����Q� ��A�Qp1n�N�&�ɒA�w)7S���Z(�-DXz��:<f�Z� v��8�v�#�bg	���RM�1s�4]�8x7S)7騸o�2Z0�	"1kO~��PP�y"T)1�]�M��0�_ �iPgV��bxz/ p����S+���M�� Ed�� �P �3�T��œ��P�r�.2c�M���"jȨ�;�Y�$C���(�FH��V�t00<0008�د�y��XP1P�����(R��ߙ��b�\g�����0������b���}J��������^f�%4+׹�e"�����썒>�`�@#W��@�NX#��N�,(x���	N�' ���J��V� ���U�h$�!.E#�V���K��R(A	���Hؼl�S�㈳�I?��0���.�'��E=I.���R#�����_��p�j�K��@���P���D����5���
A�dO�銱Z�"�5虍B6ɖ1�����Ʃ�S���]1㑈ի[��9׶e� � ��t9�s�����'��b��>�``9��i����C�;���Z	����A�B��7��%�*p	����\���!2��vtR	�Jv����H�uYT�xi`��j/mq�)�Q����)��60��I���=�՛ZH�S�d�F1S)k���`؊D�J���0��*��e$RoUBXiW��G����y��I�#_��3G� ��Lc���� $���S�$�J�(�и� �
��աABe�+A�}��l����"�9�o���x��lDj`�����:k7b�.�3�^�2Xr.U1)F8Y��H�ĘY�zA�!��Ƹ��^֯Q�b#$����
a�ȹ0A]��4n���}��Ǐ�PA1J�[� ё� ,8 h�� ��X�	ձe��!`H��.1ؗ-,��=r8{␃��>���]{����,}�k���14�G�o@���7�hTu����j��H������T����H�E���������KӀ��� mH�F<(�3�6.f5�*"_AV��/��p"¡�G]��RU�<C4(�����Ȏդp�'M�ϫJ����1L]2,ЗM��YT��ޱ��������'5Q�/�����2X�.���Ȗ���
�yP	�%l�A�K��IچAp��10��$"�.�����h�YT{OU@�J�m���mI��-�;�)��6`�،�&��ј`*��f��!��AN���ʨI�q��lnR�Y�+�m���# �f��H��sO�9�Z�Q��2?b�Cߢ�?�I ���	_��t�z4.n��GɄ))9�9����!�ܬ���c4*[&@9��0��P��̴H�BL4�toJ��fnq���b�\�p9����b���t�Ł,������p�s��n���h�]� f�6a3?n�^ə���4�n,q�s&�E�ſE7~�w��. L���<�.{!o�Ԍ�?B� ��@�O� ^)1�DM�P2,R���BR���D_�ؘ�x�i9 Ƅ˦�t��gK�x�?�[r��TR��ތRG7�l��Y��_앣9�;�l
��j�%���,~8�eBr�͓B�U�d�H�oV�T��E�K똲���C��2��Q�'W�}gȉ��L� �����"F���z� �0ё�
R�8`8ٮ�@�0�Կ���B܆�b@`��-b}�����Fd���9���4!��赛3->��D��Sp:��T����O���!�_�t������&�������L.�\ݿ�}\���Bng	���] �ː
�Լp�l�& K]	ū1�B�h�#��)Ԑ��#���h��[S�/�pv�Z�k
N�mQ��XB�i��� ��V�B���(�6���0+����*��*�.����1����L	��"��2v���7��?ْH,�o����!�O����m�1�#��hljd�����4Js�
�j  |�.0��)V�q@@�#ԉ4@¼s��*�K�*�ޖ�b��fq���IRߥ�K��SQT�0�tD��6��D̧��LL
V������������$�D��O���>	��K�v�0�A$,��Lt$8�0 9��-1�VP��0�,��/��,�v�����E���JD��>q�%sb�9y�7����	�sH`���A,1yHh����/&�`F�jdld�e4L+R7Y6o�Q6.����W_�P�w����PʈCP���i�ZISe��A�uA*dJ'e�V �CF�a���q� m@�����v�aH/0a��1�?EdT�)ύ^����u�S�)�Ħ���I	��C����C��-�W�J� S�׿��DG����H�r�'�籥������d�� ��Z������E	�� �������H��Z�{�=���}q-��_G��A�,*}�����$EBs@7i:�=Hʟ��	���<�-����\C�3���G��i�՗W6�d����n6����5�" tȱ�-k�2k+�R$�?���!�E ��e��c�s�e
/��A�6F������<jq��܁{!Jj��p���la03G00ԫp(��bS��x�3|_�,WPKY��QXi�Y�&�� �����vt�hbD�|�Ri���7ڰL*��2����Щ��8*E�t�D�ȼ��`@���\v�4����'���b`0�&[�����4\T���;�   �Tp"��r*4[�!C�\�ж�弐�m?��Mf~QX�������֓��6�}��u�N��]<8	�G1��H�3�����2IKIRH!:�u�oG����h�)�ݗ��G��3�h5�h	]b$E�u��,Q'���ыU�?3�ё ��$^5^����ד�P,+��f#p��t�@�9�8L������Ť��L�����v�����	˩�&������#� �7Qs�4��칦�Fɭ�82yA�zV�29�$UϣiM�~IEKs� ��h�&�JO�Pڤ�np��
�@�&̳U�cv���:@<�i�> �:�]Oޤ�/΅�%�o�����H7 �W��:i`uk
�b��SMaQ����{,i��5��2��P�\��1�G>��T�ǌF`�D�`Ueg�W�Mt�Q�3�:},��J�&Tp�̪c��'ҹ׹���V��9@W@
�f_��_��Ԥ:��7�;�_��{��otڧ��r�JQ�_3�&Nژ� J �C	\B*��:0I����K8^�ƃ�U�R�iK�t>�3vҟ�l��.l�AO]�_&*v+��/|����������>>#�o]��s��+}�9�^��(�5u #I,���4α���KR���)�&�m��)�c�W���ȃ��F@   �I$��!�X@�(�ѡ�O��U:��XQw��3�D�<#)��lk�L#3�+~�t£9�J�㗑m��N�l��|�g^��O��G�"��t*fS>��s�N���J4�h0�2�i�ѯ�@�h��M%�F�����Bh�h��H&n�'�3u�1q$��9 �������X��(�a�a&&�h����*foN�;t�ݥ��qƵ4�ڵv3KJ֝��"�i�e�R���O�����u뚰�6=�Zծ�\/�q`���H2 rWV{o>0|ʺ�p��Pa_I�!���*�����O��Z65W�w���w������	�k�֣/���b�a��`��P��ՄG�����$"�� �	�\!5	T��`���i�����Lm����Qm�ϫf�r�_�r�ËG�rE���дѧ�_�戂�;Q]{���ы�N����i.>�0�Do����?�`��� 0 � 4� ��g�e� �`f�i@k��o3����:V)e�'�i&�2��>z�	}�Rb��_\jι��n9�����t90F�~���Ԧ��oUk�M��&��uV����+��3E��@�����&��0 I 3( ��V CuB�xür�`�lQj'�Mo�����|����@*�$�w_�C�=jM0$q�(�h/l�?(_�
PZ
o���~{�������_��&$�z��^�Q�:?��ϗ��k/V��g�h�^��Q�(j8i�$ ���H
 �W�{,Sx��
�m���_Y�=��o�j}�7�@s	5
0��wl��D0��	8�����ae�S�O�V^�JS��M��Čڮ��F @��M���ɓ�b��c
�� %���__��̇O�dH^�ֲ֢��A�"XXDp> I�LHUDC$�O�DR��`��H��C!�����o���]<`dph���G�_�J.�|d�'ޢ#�5�(���Q`I&����o"A�s_�D�����^c)���R���d�	2uꪀ�B[�T�ΐ��_85�_aE];H��T�h �IRJ�������p�*��U���^�jc��)��dҭ��2��@e��oX�֭M�	�#��l�OZ��^Mo[?�E��ʉ�}Q�q�J�wms��6:`}%��� �i��},�@Xȹ�$2�.A�0���¨��aRtYF�аl�*ԗAM1^�&b�~_,�Ҭ-x�Z�*֡�.4�'�e���A��I���.�du:!w�4vQ4ش����0��S�P�?�d��j���)3We��b�s�i��]���-�$�SA��VT���g2�U ����H �W��0E���J�i�nO�Y]챮��++����(Z���P�����*�}\��_�@z�~0�ǔ��ԙ�۹᪍O��d�
�Ȩ뚤����Qu��@՝i7M�1�М<@���j���z�Q�q
_: u��1](�n�\Ʊ����vAH��U=�',��j(�=o4��@��
0P��SĐČ�8��&a�R�@�IP�v|c-�赋��P:���w^����x&4ͷq���%��I��a�FuZ_Q��I�E���[$�Db��('��Р��	:i,"C��d��u�>^�`U���s�m�~ng�,a�\�>!-�[v-�h�I*�"M��z2�M�]�
�f�>�t�[ n�<�Gު�3��Tl�/��Ӣm�g��Y�)��
O^�E2�3�ԍ)�i����&��!���KJ5��p"X�:���=_b��~R��C��� ��q�x����-O�U�jG�on.����~�Ͽ���)2��k�>3�Сģ�z�5��`yĿS���{R�.����\��f�@Kwu�0 $2R;L ,�XV:�b)��$%�2p�����H uVU�lkЋ���i�za�K��^C*������I9u	�
�7�N���"��"^�k��4d��?��rtblu$�.2i��d
��p��RS.��:M;�T���I,�h�����9��>l=
g��ղ/i�4Yu*��4R��7f��A(�!��q��@��1�*� +:�$�+��w��̶�(���>���N�t�Q�O�o�c8N!q���2Qo1Z.�C�N�y硈XZ'��Y:#����)�����n@Z�[1�7������F�2�V�`����  @ 0 &�`q ����UR R�P2���@0r 2��j�
�:C*�)·-L����䉥:�(��U�E���;1.��Z�]���Yc>1��<(n��,f�"�:]&�@*cM�Ҽ�Ҋ�`��y��j><<��'z�j���l���D�H����q]�f� �    8 r&J�a�l,�8@b���(>=&��hP����Q���xmj����Fe�m\�F�S.�H
 �H,��ܘ���w��e��V�Z������H�$�^�	B4�4BS� �!�)��^r���Ò]�孤���w��`����v��\���Ҹ�I&�b����0�y}�W�}u���!�ϱ��{�����R�# �Q�Oe032
��Bp���L�8��
e�Q�������?c���$�ޔ�3Xc6� �K�U��H�8s+����� � ⨖�̓V��<�/�(O$�~����H6 M`�{<�`���Nm��U��E��mʿ0)=���7Mi�&G��2]��l�Z�F�C�J#�m,\4��M/R?�g�d�/�V�v]Z�Ԃ��	ʃ�G�L����	d\(,N0�� yt�����#mphɄ��c�,W�;j�o�r�r�����d��A��%k��������-F34����T�Μ�+70!�n��󪪪�u#�wEb`���&R$ؔzg&m�RY��@ZZ�;�?w4�G��W"p?&!�7��}^    "� �������$����i� ���B ψT$�R<�+v���P�w�5l���������|���ܿ
��x�A�������2��ԋ�*�FL�F���������G}g�u�� ��p��'��A�t�E{{u�� �����6�M���8dCJ'ظloyF�B��8�@ ؀�H52 �9 ���P���p�fK��eM��1P&���4�9~�Y�e��v���v������e��e��ʹ��c�����.��]®w���6��������g��q^�o"É�ݐ�_�(0G�Y�(7�����$��V�~��`b|Ĭ���G�UΈ��   &��`bp�d��I���5�d4 _E��q)�\���=��I�����H�=_���¬*Nm����Iͼ�����y���/aʘf�k�~�i�Ʈݗ��W��`�NjD���� ���}5e��.vIG��c(@�A$�aCP�>�2��皎;��u���V�3A��M}�K�S�\�Fb_�����x����  � lS�0�C.61A�@py�A��8��h� 
a�`cAEzn�)���B� � ��e(�6"U�Y�uݾ8��6�?an��[$�lT8����ž���n ��GcTX�D�
�.
�Hz����3�+�Ғ/�'H$O�L�g/IR�]����5��}4M��=����]yX�aahLs|L.M}z�B%��   @@w�B�!
k)|@,$x\��}�.��d�� 5`��Y��1�x� 0�/-Z�K%��Ի-��Z��X̦��c/�IrX��2� q@��)��c9jS	�٫���ص��m������u�}n�������P�#�6��u]���A����bJ������~,�r�E�����@     �	�?%%M˒h��@O�R��jp�����
t����UkH2g��E
r���j�9_�ϙ���
ߍ�-S��aS�<2mi©j_�*ԉ���$q�u����1q?D��byW�W�B.i(;N���쨾�o��L�������~̂)��{?�>�M��!  
�X���"K/���h.SFR��"�4���;ev�=�X�طq���N����s�yz�u���s�Ą1`�UF���H) $�aS�o0�M�Dm��TفOͽv�iy�����s�럨4���������t�z�2?���b��|x��JIK��<���[g�mW���Y]�zv�[~��� ����`� B���0b��`���0 Y:r�`!�1Жʨ%o�t�����٦�c	�~�g�� (��O�]�U�k���6p��A1����&M�W��=�������L��e�xɆ�_����Y/�|��o�����F	�|���שm�N�r>�������V+��C|��E�qUJB@ [ ;J*.�ɀ�^�4DB���l�Ad�A^@�7}ԗI�\��'l`��p�J+��L�$J���3ə R����S  ���O�"<������3}�&�6
:������ �]1�/@�'���k_O^��A�Fjp������؏�����8x��D(   �P���s(F��	  �3`�h�a�H�)	ce�*G;R�; �� ��9M���82r�7�')9rQ������z9c@R����W�Ģr�|��QE��s?i��Zl�������Ԩق)4v ���a�$�:�e�����0N������8��zh��q�� 8� ��Ō�Y؁��C��@$�s7��q��pr ޑ@�"WbE~�v��)R����s!-�Eb���H��pR#l/���
�m�M?W��������s�-ܶ�@��6_�Ü�1r �	4<1�0�r�X��( zh�'�V��м��U���L��RW��8����fl�_j���'��8`����~�M֮��\\=�o�VYW��<p�B*'ѕ�u!����2 �X���`ИPJ,��C ar�e`V�;Z]~b���k�����K���Կ�Jh�)��uf��X��Uh"ؾ�z	�����<� �5�U�4��H���-��L?��E(D����_��ߧk	�(�Tp��z^͹��� �A�(Ǖ���=���(���國d�dH$Iȑ�gg&�]'
�2�&)�X�3�B���{�{�d��'u�,)��]޵��r�?���긠�r5�wY��Y�U�u�����)
�`~�1K_�����氌k��#��K�C	���}ޢ S���%F b `��^J(V$)\p-$A���Z�m��!�J�1!G׮��{����i�{]��GCȍosYդ�{�v����a$ f����ģU�%�l�����f�����i��z(u�����jVF�vI�<�q�vS<TA���8�����i
�j}�d؄r�ځC�zM�Dmɐ    � 
��WTJ�:������\p�`���H �bR�o/0��ڎjc��=U��~C 7�q���fL��~C!�N~u�T��N4b�zy���#i��߇�ud�q���&��T ̋F@D�\�x�:J�6�{�Ջ~�1X�q/ɢ�KM�O���z�ߛy�'L.ݜ`V��ˍ#���0�r�����7�Ҕ�L"p�c���� �R� 	 )/�
��T��؉p�+<��D���=fR�ƚ�������W�ͺ�
aAx3nj�ǜL�b{�.0�+��UGMX�����)�Qrp\�{���Zjs��,�b*$Y�O:^s&���hg�711�����Ȗ�,~��	�!H`4�T��hpʱ�G������ת�f"S�ӢvSb��f�.��e;RN��`:��rau؝�ɣ��X�j�y[��q�5�!BCZG	|�ۓ�-�dy�/d���������q���ɿ����E4Gp�KL>�s�l��?��6���V�� ����c�    ,(�P�(�Eɇ�Q���g2,�3W��]������19�>`!8���������\�}V�������n;�[ӭ�����(���1���4��5�8o<�^�=j	�Ũu��U#�`�W$�x����M&���*�33��.��H0WJx+�����1f7�W��=���aw;;��~�k=�
B�`H(H$�� y�'S1cŃ�F�b�@  ��@�"�[��9M$�~5�X�/_{[,�]XZm&:��z��[8\��j5��* 8����H) x_TcO/��-zKm��SكS�,^�t/j�����1��&����9O��LN�7H��!z���Z�r��)!K�x_Zǯ�[�]W8h`��sQ��}�[�03>�T�PT�^�N��N��A����-��P  �.s*
��)��C ���) ��jR�#P��e���5W��WL��L̴��6�E��W�1A!�h��*��t��_������DS>v9a0Qh�ۊ곘��GQDjN��og�f�W����D����%e����r?�}�Ռ��+�T� 2�X����ܥ^���l�*�������_0�<���n�_�*"�K˂ځ� 	G,��4G}�����T���<A�N�T���PC0L�_V��{�E�
�F���]�«,���ka���tܡ��'�Hm�pe���e0��}n�P�߳�Y�/X��r8��i��{#��~-" ������V�vZf���������@��@m���Gh* �FaJ����$ �E�!��ʁ�ۃ ��
X���1o��5r������4"����D�k���9t�Ī��V���?'����0�9�s���p���Рn�믖�+,J6Xv+�)��U�)���P'����W�2-I�6P��J�����1�8��+�5�HV����$�� 82uP0�-D-QF��ƃ�y�F4T}]D\yǟF�0l �$���M&�w+����n�~�/���ۺ�+|����]�1(���)����ǢYe$ ĴyI���%���H< %E`��+/��,
�i�уW줾�e/*���ȵ=�}S���K�<O�{�a�÷5�6���+����>��#������	��G*8��j�1C@%�<0XY_2ϕФ�dߋ:MQ�ev*��d��+s�X�.�A�����5���#Rm�����rV��	,��8����7<&�$�����rO@�d���=���l�Q�l/��;>RM��[Q5[�w����{j���u��lr�uG�
;�
.^�P���b$#H_�p��V��#�I��r"��o��V:D��W]�������ת��yjv��H���,��=�/gGzYۙ�)�ݹΘP�g��Xu(�dSJ�dr�1פs�����|ȏ��3?�ݫ��7)V��yHB��=\���$(FA����VB��*AK�Z-� @N%:����Qx��L�
А�t��!4Ex��C�6��UL�v����Qb�J�n$�����Ѹ���𙦩3(n�@�mI�3K�z37MS@�k��)n9�S	��K1{�5��'"��"$%�ӗ̽��h��ѩD������ȝI$����2PF�`���"��H8��� ǆ����&X�$c�42f�S ڿ��~��;*��WҼ�j�9eYd���e���6�,� *�^z����dY�7�;��7C���H5��OU{,G ���e"�;W�»/����%lW�(n�]��%R�,aD(���O�E���G
��~Oσ@�@�Xw���  !���I��DYRq��� T��[��K
�еy ��4?����Wmʁ�r�[�̆Y'�X��l߯����7)�,`�
	�ܞ���8��T�3��7{���P��q �G$V0�]���B����ɉU' 4��'Ο���]կD'G;/W�_��	Ѫ�D� �0�P%�{� �T�8 �ݥ<,h�DKqE"1��jJ�g�W�q�Z�6m�b:���oJ���n��R�#�{�����^
��I�г���CT=����������������/��s�<T<4YI_��:���$�ŕ�o�nċ���w�jm����2E��X#(�3nJp�1���S��,<��N꧞:]Fb,E�N�>��Ꚉ����P��$�����q�L_�����P>��h$��KR��i�=R��3���"=<?,�Ag+���� ~8��r�mOT�� �8������툵U�@��5�e_�J6�(��<ę��4�
 0�����#5������G~S�.0(�Ɂ�1ǡ�p�0�U��'���,�DC*�׻_~�����_�@L d�	-���?�L�f�w�����H2 {`��l/���^m����Q�,\º7)�����zf`zY
v�]\��zb�]^��S�Txz"�bP�K]�יVc����:,c�������V�b�bV۷���%�� `    ��a�J:筒���h鹅.��a�j�;-z:�6���4rĭ���L�a]�K1H�+M����wi�r�����m� �ԢA[��<����U�t-��^����7�pWc������z�6�BS��?��1@�L8jk����DF�c#�Ȏ ���M_�Qr;�	
��\D`�)   @s Q'�HФBj�16C1��ѫ2��L1n��2w�@%��.MO&���@����_)�.�V`L�]v�g�SKi�����s�Z�D�D ��G5�c��{���S�>W&��{��_ދ�Z��\Ɖ�\�}rZ���26�Ӂ9V�9�����\ðhkM�S�=� (�  ��_���(\U0 ��y�EcB�Q:������ؓ�Ȝmj�3����S�I� �S}�x��ilV�M��m,<�@�^ �2X�.%p9Qז's�7���[��9Ѷ���ǖ������ڽ�=��,��[���:����kI6�ښՙ�����}������)e�y���0`Y�N5��}�����("Y5w;o�D.Ly�u�@���H��`UsOE��L*Nq��1�O�,���0����2t��[���C@���cP�y�/�Ɠ�"�T���"� �=�$S���{�j��٬E�hkjDK�P���h� �P��^,�-F�9]}�5�h�B�����긺�8)��u      �T�.�SM �O����1�1�e�&Aj�%.P�5��ԓK��n�雞�jg�ݝ@s�R_�{�-�٨��B�6�eY�u��zy�iVy�_;�(&�*F6�jF�\b�D�}Dd���t�s¸[�s��`ml~����^U��AkQ�O��}���@�� (&u:m V3h"�*! ����T#�]�8<lF �5} B�E���5� 8*q.���J��{/���=�}�	�M�.k���x�a�k1`�:1�c��*E5�׾�����s�  �ީ�C��}͝��� ��,*�l�|n?�{�"���r&��P{~Z����*��bR_�Iv@    �P�K��0�O;��D�v*�"��RN���,j �����)��ʱ�@���ѡ E%��!�O�w~�jf0��B�T�k����m���)������P��u�?з��3��^����� �f���H���ڌ���R?�����D�YԎ��LU�PQ3 �O8���B\ǿI#�xI�0��`��!�R��Dh�F�J�'�]���G��b��}AԊ|�9�H��L >`�G����������H1�CaT{O[���nmb�T��S�5�R��y���O�\�KNQ>��(dY<��]w>�� �I�B�[&����N�5����"�]��N��^�#U��a���9b��@    �DI�* "a/88�"#&ƻ���!B\� �gORi[���`��Xy��hr�?8T�r�#oI��if�e�zy������A�@���(#�{-X�ݔDZ۟��A����c��)a*֪��?\��}����`C0ɪF�̟�M�Q�Î2*�?���$(��]���֥E\�b�  #�F@(4 D���p�9P	+���
<@�~ϙ�a>Ѷ�5����SA��^��Ṳ�U(]M�36/)�M�(��(*rh�RN��I�G3p� �p8< ��� �����T=@��C�b�^��Q�I�2�T4im�?�����?��_,b�j���E-��� DBT��ts2�1�b!������ߐ��2}h��+9��}�C�ȉl:����9K>_�U1�r��|�ճ�����c�#������[t�����}��������r������u��LP�*BgZ��W����^�B(!����1�#A��ܢT�4 08	Ȯ�`̬Q�JE�j
�����(�� `J�uI@�G�i���%�bis�f �kEſ���/�_V�8Z���H%��_��OC�ʎeb��W�J�0iy��Ѓ(P�U����+U�0'ͫP�� ��!B�\��	���#0���̤�XXJxlp��I�TE���|X^G��(������_WV'8�����T@� "�����R� �SmN��5�FU.�{ɫ]rC��62*�}����[���Z���շ,���C2H%�=�i�Icu����|«Y���Q�����ݺ��P�ϪT�A��t�96���;3?PN�,�����Hs��_�a���D8
J0|�ڄ�&pl�5@͑X���#�]�20Y����]�]q�.M�E,,��(Q�ze�,H~ְ�Jә�R��4��pW�\~#��gD���MUO���y�����_p�z!��(|IQ4������w�Ѧ%��U���U|O�q�$��Y-��)    !r@�0D�慓bB��"�@���0ɜp�x!�cQړe�ҹ���z�ڔ��D�-�g��r�������b��[�@�&`��~�V�558�E���"vկ���QS)�g�\ͧ����p����yq�.O�-�T��3�6�s-P��oqࡪ�_��ן�d�G� F*�U�$ H� ������%H�		(���@HzI>���G�N���)�<�%Â��U���H�5daS�h/���^i��U��O�1�0)!��]�8l�p�CL�5g7+����Ki龇��e�X��Ґ��E�}�����Ul����ֶ�N�b��5-q���ї��sȘ0�52Uk!sm6����6=���/�bda1�#?�)�X0 $    f"f!Q!D�6����(�+�d���І���
F�	�f~"��S��D<M-�fC.��H��'�h-ԫ5�h֥�-�t�ɂ`��� �-�Ĳ�H�KD�a�K�8��IB=3~6�l��������o]ԙ�i3�1F�Z�$J[����Q�z"/��/�(��1X�������D�qP U�Y�P+-X�5 QU��%p^��3 ,�e��e�v��;.�y8a�
�aڑJ#��_=f�ܻ~]�s���n�	cH}G�c00�����*�<�����G��@�=�t.�浲�ݍ��У���`7��OJ3����=����p
զ:�����,�U�2��+
����:a�Q98t����C�qDkW:��n啥;ʬ��tP�Z���F������U�M���W�w���KY[�j��"�ê����mO��>^��we)��,�:�[��Y�2�[>�!�&�
� ";
�
glNB�cYN�b��l���u�|\ qq0p��D2��d$��@I�3 `%8EJUΠ4@��v�#�F�߁]RєH�7⫕���=�Wne��8�uq��u����y���1ޮ~}@���f���\:v���a�����H/ R`T�O;�l
^e��Q?Q�D�BS������*̋=�3�L9�T=��#`uF�e6���W9�ͽ>�N�˴�a�>����h�@ �  @D�n�*��mD�$�t�w��
:E��dp�����]Z$�1�T������N�4�ί?��w_�r\2i�*���m�A�L0�D޿v��9�6f9�,wϔ'd�X-�N�Y�����֟C��`16*�"OI�U�]_n�d5G�+6�0���9B�:4�>�A3 �! �D  �P\i�&<eB�/��b2��L 0�ռ��;���"�8�5a�;	S/�K-ܤx^ڵh���w����I�e )Ah�����֚�[A��"��f�A#��,4WF�G���#��E?[�TO������x���(o�Kڀ� �@$R��*[>!1 G���c#`᪯(��D�H�aC᳄�#��S�x4�k������ڑ��gKL�|:_�;#���AĒh$�vي�)Eă���d�����9PN0.��ǔH�.��G"Y��
������1����  @&%�J 
�tg���
 ��3�����H�`Ts+����ni'�1�S���o������W�R�]�r�,��6J�n��f1fz��*�uٔ<hڍO��ir��i������w.��A��n[�)���)1�'h�_�c�5J���W�L�S9t�.Qv�;�y��,ƛEz���u
�v�SwO�A�a�8����   �4�jڜ�P!���( s ���t���ၨ�
��V�<�?��l֎7!Kr�X�3�+���l�mZή7+efժ�~����R�	x��^�d�߸�$��Է�Ա���!#�^��~�������D,$��J9[X���]$�5>�����)�r�k�F\�7@*��TUTD1����X����\QW�L�Ʃ�)�Q��v���\b�ِލo-ժ����t�|�aS�_eE� >�[H�>��o��h����RM!�*�<l�%��{�i�*�6��������B�x�����#����m��'��|1  �����b�442��$���9H��qK�,iS��[�'n��[;8ӥ!U5��������ve6�n�����tQ�����,��%{�%^�ǔ����A-(Ix��Z�5'����� z����㛞�����������W��r6~�uv�ދ����B�      h*HK��!�a�Q����剺 q���[���H�
bQs�G����~d��E{O� ^�d�j���(�P[N���@���C0+ꅰ]��i;pp�t���G�3���ܱ�vhao
�����9�6l�is���Nö�e봭���ʣ��gUܛ���]o���L�$�&�D�.D��.����1�*Ah�0h���+���h���D��}���4��O�-D �3T�����9~�aYqU�����W)�$ʭ��˳�����ϭn�we�>yws:��U�\2���2h�X���er�Z�Ormu5����:������]b��{��W5��3�� �����w�� �B9Jq`h�Ѳ��:��&���a� �BO�
�wEj�#�|�ICwq�r3j	A�]�9z姯*�I*�����3��޻Cz�[6e�����r��kkXdZ�gt/������SE�Ur�t�V��ɠ�;%��w�l6������p�T�N�U��L�>��Z9��oF�������sn��48UT@XF0wfj��@2�A*5���l��� 8%r&c�,���pm���ܤ������Q	QprI_z�m#�q��3�+�b@u'�aC�,:[����t�a��P�lmΰ�������B
�h�7pL��q[E�V?���n�gט4�������u�! 1ǟBH�cQu�:��F,B|!���"��#����Y�~s�=KvQ{g%�K3'��m�׭�s��fv��5y��7V�1Bˊ�۶lֿs��H��u��-;���%������H7�`TsK/���~k	~I�Q��0j}������U�?4˥ZI#[1qF!��]D��0�#���Q��وÐ4X%���%D @�|�����M��T,i�
&&8 �V7�*��Yz����c�PLe$��3̶��~���F1,���9S��sÚܪT�
0_
(�ԓc�y���Q�w���{�����.m��{l{Τ�����
L�0�3�;��nfm��J{4p'm�����3������(��h���MЈ  (��iz0S0 	��(S$*�SԛY ���H���,<Ӷgu�u��"��ZE�2l+B2�����&�Ш�x����O��6����If�W-�א�`?�]�N^�X�Y׺Q ������k��~y�I��+��>�?�Z��_�7Ҡ �fA�Vx
����hB����AH�۲�ڀ3!Rj��9�{TB�����Z婏�j��_A�ifcF6n���>>*۔(N�x�F��L�����yz����z0�t\݋,���Z�k���,��b!���K��f��HYs��"��4�O�m�	Q����^�az��   f��v`�f%P@HH`h�̡)���=
 H��SQ����}��]��7/�:i[��B����|?T}ʟ�S���%���a��v#��7�Rc^�މz����H4��`RsxC�+�oi����IͰ^��/鹧��dK`(�����y�O�e�����t!��ƒE��(�E�&�,�,Ǌ��0QF_��M��?���0��8�^��Pn��$�iA�z�H���
�+�ڻ��FB�Rk/�qW��}��Wp�E��"�!���I�"RǶ��f�s���W��b�ܭQ4s%�`�k�ç㳴g7��7�u6�Ew*V[��ۥ�Ro���ɡIZ�_9�m������"���||4Ԭ�z�)b!s�W��Ƣ�@    9 o�6�
��HDՠ��ɐ)em�E[C�j��1��"�_(~��=T�����)(e�Yݏ���զ�K����Պ�gX$*���y�.�U_y�z�3'�����0T�v�n��3X����O��wd-XZ��V����gC+DP�����Z�8_O�(�&�� a-�I��R�!%4$R��+C#Q`�e�x�y81�i�W�`��D$$���q��>�~=�d�-[������}'`C�5��V��$-
�/�yB�P��n2D>R�i�\�
k���}���ء�������-��_)6e�D���@�|>5Yh�;	1@D����0 @  i�!񆌘 �*���`��j"��/�����Haڕ���������H�@_Q�k���^kn�}K�,^�x/�y����</�\6{�i���h[�*U����[T����s]�_ i���d3�^JH���]'��,.��n��]<��h�2y�Mv��|r�'�H��4��z-;�o��6+�����D��g3sZE�� �K. �sI`����B��Y��i�av�>�גfb
zjj�Z�n+!G���b�*A��޻��1�u/�ʜ�z���<	 �`�)Φ���v���;�D��$�a��Jc�0���X;N��4���.eH���U�4�Z��ޛ���y��Ŷ���7����$��  � (R�-<2#�H���Z��	�Rd@�aK�F����ֿQk�t���h�R��v�Ngg,{��aW��:�Z9�H�݆w�I�$[�z쾻�Gn����K�\�J�H���~�c��{il�C�v�W����O�4�@�;�����jU�p"K��� � H1DK�*<Ʉh��1S��R �
TV��-آzUI�j֨S�M'"���R� �؅��U��+o/�yj��SnC�@<�Qc�#�M�rԙQW�x�L�dI8�u��2���_�N&u� J<b���*C����t�lK슷����ހǏ����`@%  
̸S � Zw&)�@-�o��]��+���H��`S�OE�����a�~�;K�,^�m�鹤�Y3����V1y�u�b!�p �G&E���.��˩<�������g��v�$�nu41���Vg[�^�şדe���҈���?7�P1L� �Zw[���݋��Bnó3]�7�W�={Zӏ�-��ԈE�с��V!B8"�	2ԧ=�`E
�+g�*O7��H~E��[�jRy=�Т5��F}��=g�<����f�!V�5�6F[�ı�Dd�T�� �p�h����jUBMD�b*�^��mR�A#���6d�],D�H �  ��HglE4 ��� x`�J_� �]����Q�.�a(��s�U��P��-�\�`V���r�n��UGKz3fUL��ռJ��W�N��1�zEB�q�e�����X�t�Y?֭G��@�I���5�^�Y��[I�D�.C��� `" ��f5b�������V�!DJ�C	)��f�8!�D��֣̆��u�Vhz{�
�%�b�XgAܻ��s�ַjiM|CEu2DEh����H���,�������@Zy�6����p�]JSP�����������D�Q_���n��� H��{j�3'�55 �+���@�6��21?Ä|��,��J*!3.)�O9���gv�����e�/o#k7���H�p`V{C�
ne�e�O��Z�鹗�0��������Ih_�5ݲ�n˅�僵����&���<<(���Y9����@�Pㅣ��D���Zó;_��\� ���n���!B`  �4�
�Qp�3�I�4�E:�����,4c?�4H�2�j�.5�N�Ɔ������(4	����/�;�[��^+��V���ƶz���z4�k����%!`����o�I��.y~
���ny�~�~�4bK�����̇��aS���9�! Ie�&��;���5([S]�N]��_��@hq-�k����zap_O����)R�h�x���f�XkN[8�i	�|0���B��7��z�}5��x�V���.P@P�����{��I�5�zP�����[U��z�:�B0��?qŎ��ۖz� ����c	�	 @O�,�HV	�[NP��T� ��H	Vu;��E`�B����0x�S[�(㠝�^�Ӿ��o��Q �w �\���t�=3�=.8���hph��(��-�fQ8�I����X�s���������X����5:�t�%ZO�����"`	�����
l�t�rJ�+A(��;}��i NXH6*�U��ٍo�ť�.~�is��Ǥ�����.���H�p��m��꾊�}����H, A�{3��e�~RɁY��*=���w�9F]�z�����ݿm��
D����2G�Fwb�������U�S��%��h%����v�dG�(>�����?�t���ct��>,�R�Q,�tխ��_Xo�1�i�z}�,�B�I�_��1���ㆾő���(r���洞f8\�,�>W��V;���ޠZK������8���|��#�ț�p;��!���q����M ��)t}�5x�Y㱈�LP��(FBz�{�2H���ܻ�-��� ��Q�I�t7F��Zu��a�k$i���2ΐV,�8����!�/���Y�����IS���|J$�#���-�������h��	�i�H9�e4��c{��DZG�<�$J���'�ZJ��#X������?
�r�uK��t������k���b��K�-/���o�ACc�����Ie�Վ�V%�@�EF�)ܫ[��Ni!6feKa}c]z��Y�7�F'���J��\X�uJ�ثP��j�EBpX6��QhJJ�� ��"$p�	^�%(vQ����H�@O��/C���
�e�~US�<O�a�+=��0�5��E�]��'4��YeCf��ɽg�,;�֛���IM!��<V'��WdqN���E��(�, �`؎ov���a������J����C%G�UZ�[ħ��)pC  n(ƅ2OR�,�	tH�8����w��4�I��l%�8*��yh�Yd��1�s�k^�-z�{��x�WD�I���t�r�w|��r9]�h~M�:v���O�<PaGM=p:&u�?�?:�I���@�x=�F@�*L�
5��"���5b�1��t�"i+�4�K��H�������<�_|�-ϝ�$��q����Y@��NQ��;���y�޾� ��V�"2��Z�� �q*���MK���.-ыo����1��òxd�	l�Z�r&�I6�&$�(:E9$��ݗ�Xq+�EA�f�ⱒ��S�k���2{��3���Le�1��ޠ�7�Է�t1߇���������$�`|0��kI�:Uh��eIrb0�?�G����>ξ�T��������fR�D`Jj�ν�E�A���c8���H
�r`V�/+�Kʏe�QكU�=������Pe��[�������9��q4�(d^�e��p�����=p׈�ο��5���'�C����醣�b�d��(���D����4:�q'8�p�Y��ws^�G������ub��P�1� �E�$9-Fc,A�(��&��rՠ
 �LU�RH�J.a~-;��VO{�U�Kޯ���<�����-\�Š S�J5~�mw.�n��`�,�w�%0���q��l]s�{��b�pp�~�[��#9�� �U�	J��1�A���"vD� ۴K�6�� ؑ1	��1�je�R�Ti�����;�6Y덄�'+��1��%�]�Zz�=����|�@ K�o,�X��FO���m��J�G �.����9W��F��4�Xt	:v��-_�����l)u���q���k�2��AM6��`S��*Jq6#
,�lk8"F�����z��ά�n�Tj5g�s��j��m�31M���3�pOAb�Gko�Bd6)Z����N*jZ��[�����{f�O�W���s8�����H��SQV�Y��T ��CP#"	(뾲��C�&�(@��%�j��b7���k5����B̜V˩N�]Φ���z�.`��BYJ����$��ه�j�l��X����H/ ^�{-<ҍ���eh�RUAS�=q�0*=����m&5\h+��P��4��W��:����$}�����Ӑ�Z�FcpH7(m+�@�{�J1���Ƀ��ʖ<����G�9b}��~����#_��ˌ�DyM��ik������@��l�6ϼ�[\1�����"� ��x����̍�c��*F�B0�bDGK��n{����\P�������M_\��d�I����ԴX�t��O"k�jL� ��fƔ�bNe�DTfn����M"ӻ��y	�_�3&�Ұ�g����Q�0N�5Y7�nOfclb�M�+|$}R@P*�5�/�+�~��b!���`6���{�����Y�8��-��t>�)ibJ��*u��ɇ4�L�"XԸ* �ہpФͺ$гBfWj����w�4��+�QX{�ŵ}��� ,m�ct�����$�IҘ����n=�V�T��H`ɷe�=_�IJb���Fäa�z":9�a���03X-C�G(�c�'�@��$ݞ�VA��E��!�}F���wi5.��7�A���˸�k??�b���������K�-w���H)�q_T{(/���
�`��RAUU젾�?��=��L��i�&^���<��*@T���������",����I�]?�J.5�^�Q����k1:�㱠�"��yf�,FJ���"�>gDX�RL���2jV����]-k���b���~?b��y��1�eߩ�7����_����v�e.�X�0�1qW%�L
�_��;�4a�o#)��}-���M�&��￺��}?K"0)��z8���4(� A̕TᶭD0C���9	L��p%P��N7��k�N��~��-�;tY֏V΁�H���p��ij\�� L����_��0��H�����v�5u���"����q��p>����#��?M�N9��m���:�K�UB�����e���+�q�e�4dn��'<�3 �A�N:(s�xD���P*Q�ɷ��Y.� �V�~�U^) �/��"ie���R���nD�F a#L�)��Yĝ� �dG�����D���k��5�}��cDJ&�?���?�\r�UU0]�1�6<r� @�\�Z�F�O��7��	�bI�+U�n�f�b�sW�Y(�B���H �`T{M,АL
�a�M}W�,�J��i������"!��E��)7\ս�df�!ęYi��F��խ�֮�P9l�X��&E;�$'�&R��������!ִ��A�`G4�q�\EhNaC"��3�b=NEde�Ԛ1��fF8��������%��
���Fb���Uq�O�QHn��~��^AN�1�9K�L>졚s5Þ����2�8?����?w)N�|�����T��_4�3���!v�&b)����@Ѷ������ ��0���	$��j0��eH�)p��./;ܨ)j��.E���0� ��-��?o��z �` �z���-�hN~�u3l�*ْgק6�������Lb�h���.�F|�E�TPx�I���R�멇�-9 �����b�"#d�:�X(���'j��)�?�?� @;e���[�ۅأ-���U>	���ns�۳x��\���\�<1�HA-�Q
 �8��ƅQ?NB+/،���x�Z��6E��ᦟ�p���_����e�$��iߗ(�����j���n�����UV=���^�&@%)�q�� ��FZU��TR���"������o�~�;�ld�E~U����wz���knw���rE����TT�'�Ԧ��^A"����%�{���9�� �%�u�����H9 _�{2 ��
�e�~m�]�<��0)}��0%3�"�;���ݿ����SS�UB ��RIܑ��fL$0;"�"Lu���t�T�u	9%��
���h
v�ͱ�f�k��<������s8����d��F�{�ŅL�#�zMB���7Tʦ��n�*�袡ѹWf����O�*X��z.��g�F+Ҳ�����S$	v��@3��[eR�e������K=n�W����i֟O�/=`��_5��������b��q�ƫ��FJ� ��^�U����Wq�Gl��HC
TP\M{�Yi�!�����Y=��.���șH J��"MHDl��0�@ �\�Q�1�5Wm�؍��>�3Y��^K���q��¹�`7%ao;��]��]��vbLk�>�ۚm�'s�Y�ɡݶTe���G�L�r��cj��K�5������+�Xb67(2��N�-�WM��Xp2F��U��G3���H�``U{/C����e�~Q?W켯�80*}����%�~�����fTc���aI?$߉FFf噶�{y��������#�8��L���W�9k������������^)�γk�RK<�Q���r;H��l�,{����3���b�Q0��7epUZ`r_�S.�DL5�����BHX�\�8�&���e��x�'���E�sM��QΆ��7�5��O���O�]Rh��,*f����E[��hH(H b�5/��^��1T.���O++:�%�ԛa�&�/�˿�)�Z��XC�*�D�򶅂�W��9�f�?嚉��ӵ{�jE�#9r��\b����ixIӂ�i
6ث�o��1	t'�M�4��X��;����Y�s��!`1Z+�e��taq�q�V}�F��UR��E֙s��Rx�
���Y�H����`��Q���o\�m/���s�5[36Km9в�]��b�q^ۅ$
�U��9���NPZ�W���f�J�0"̹�q7��	�|�Ǣ�P�a!�ƅ8E�vY�<���7��W0|䙼�������2�2_hφ�!*���5�-!�W*	8�)D�:.ު0.�f8�.������!g_����?�g���N �X���n��8��%ESO�6�+l�d�9��S�V���3������H7��PV{R����_e�~R�}S켸�0)=�����u��NT���HH@��d��HÀ��7d%	�<���Q2O�[�2\ډ�~�WD�����_���������.�b����)������q~�5D[6 ��뫞K�x��1�T����c�ing㨔0���w�����k�����Aer�,�`(�p�c����1U,�5�9��Q�}"������vg/��yWi"G�՝��5����w��4żw1%�\�	"|OV��jU�:(
$B���4Ts(�*�w�A��cY�f+�U�5��%�?o�U�f�w!��W� 0%Ţ`d0R�#8#H�p�U�!�q���v���eVf	tl��ʘ��ܯ������5jD QhS���gW\�N�^�U19˯$XLHe��~��� �@�(�ʻ:L��~��R?�����Ed���G�w9 R]�B�g `�����H	�W�{. qIʿab�U�M�<��'�����*@-��8�>�F�)��1k��jG��_�Z��n1��t��]��\�%s��ꏘ�B�e>9sv�5���;`D�@��~�G�Ѯqr`X�`[1����=��(,b����}�2;�ݞA�[62��͚�>�5��f�a�fх�
{��U6O�F�b��$���2�|��ʃ�h>�����YC�d^y�A� �YQ��.�(w�T;�t�O����/���C p3�m+�w��B(y_�&W��	��C֞��Bȸ�.�A5)�u�q|IS�2����N�ٖW��oX��Ę�$j�X+�*ĳM#�z�y��;���� 
 8�ɲ)�E�E(�X`{�)!QS�<P�
1K�����5G%�B�8$�Qj�2�H`����EWĆ�D��N��I���e�-�f���� H1��]a�Mf�����m��"��C��5�pt��J\y��ȍ�F��Lc=��ѣQ��.]]����~�Ბ��,S�"'��f!�iJ`ϗ�0v�,I�<!� Xx�����H"�����O��)���H n^�{+.R��ʏeb�S=�Y�v�秪=�!���*f-�4�aܷ��;�����u������@����9�k�I���Y����><���6��fb؊��i�Ć�Gi=e��Èc%�e��D)�r��ߓUgjk��Od�U�����5y����Y�`�IM~0���k@F���v$Ҽ]*���=��6�a�ζ�c��*�!��y�����|'2��n�Ui�����.����Ga�I%4V���3N���5�lF>�[�>s˙�Ë���*.A�j�
HK2���g��n��u��B]<��
H�"c>�u�m�mM�kV�tt{qӦ���#§Ē���e0y�/}�.`���Y���o�$j�:��Y�ƻv���eZ�ݗ	�$�鴮t��~-�\���j.q%6�1�59�t��w4���O��{�i��g�lh�AtS&Q+տw�^6zQ0A�ܞ��Ή�X��0�<�mZ��̮j[i�y��`l��[b���'o���5�71�ڷ� ��uU;h��Z\���|���$��!%�~�G����(d�y����eH��W(���e:�gNrA�&����h �NU{&/���
i���A�^�R')=���"QFj�E����(q�l�t��)�kcV����]����^��Jr�z�|���Y��bI�b�"�I)�9~V�:1H~�,�'��w��b"#[t�Ҩ颎a3(
�C"���Tr`�<�������
�63�;YB�l�+XLA�%��$�1
�c�5	���v1U���H�,C��eac?��SS�Ž�x�?�c��9�\�`�<<뙴a��--vM)��p�N��=N�Ҷ��!�#����������j��?��͆���)�ca �@s���o�FD��I���0��w�X�U��@AbA���Ftbm�h��R����U���z_h@����z�ꡕS^�g�c����y ��e:�I�`&cS�:���m��s��.�����b�Jn������ 7�;e��ٗ�����fOMQ]� vMA�$���MX�aJT0a͔2�S1HP���a fh!���mK%��Q��x�]&9Ej����7��ԪSZ�5%������##�ٹ��;7���/��e��)3 \Yˡ�ou1���.:)���G��Ǳs�M<�� >e�ý���*�S4pWB���b܅pg0���\�(P�����)s�Jל�t��޵+�V�!����-����H t^�{	/����oa��Q��Q��4�)������y����ʢ�<�2`	�yԚ�eڜJe\�����D�PDD��.��=�:�}�>�]�bs��G(���*�k�� s������p�t�b��$�k�"hh	B��`��(��s�����h���o^&�1�q��ȍL�C�Z�v�:%[Z�K����m�5D�!� &#k�Q��ӧ�ޕ�BM���>���8n�j#������֞�Q>��%dQ��^oɦ���XeJd0�fe0��I�qc4qRÚF�2�+"0x���b T/$q��42څI�Q��YI��Kr`Z�Z��+�!C�����d.��l/BP�g�ꐚ�yKa:wqU�4�z]�_�����Th�@Yc��G�^��Ş҆����?�?�����	��da��N 2�ê�����tk����+�%�5>:������>g4����QC/��%�������8�i�T����c9)� �����`�F�ׇ�r���V�m�y�!�4<���~�������ײ� �ڠ�5�E %8�[g�݂��] ��������H �WP�(��
o`��فQ��0��=���~����+��I���٦�nنAqe��XR��ͅLs�,.cWV�*�;��"ņ�
5\R>�	�P���P��H�L��71�$t�ҍ������Hd)�?8o��T�e�Kc�JU
	�MD��L3�gKɂ�A�&@ᕉ`ȓ�?H{$P�kXV5�n�j�k-vs[���QnU�LL�(g3�{��.�|b�,a��������W&5`�g�������Rq�%����ݪ��ٜ�B�)�F�$�۴T4���o��s�ޮ����sU�V�4�u-�������"��x�C�Kn@),B#�U�P��60�+��1��Te�qaU$��1�zm�������|A�k���wY}

�\�GA8l<���8jŎr��Բ�~Ù��0��*����=��;�qg����!�ϙ!p"��\gD��A1��Z�%��S�x�Bc
�1��U��gVYt��o\_C'��[��5�|xՁD�+A��2XӳMK@ce��y��qr�v/]W�ԟ<���	E�  +G�4�3s�����F�=�����B��~��H"�YD�ѿ�r�D4�-J&+� �i�$B�p�.#��0�����<�?��㙷�I��z�x?���[�`�@�-�V�(�ڝK�0���H+ PS�+����a�~QM}M�<��_0)=��ԀզZm8�aA7o���8��.1ץE3U���Lu�hw	n� 0@
  �fa@T#`��GtHrG�˕�,A޴�K1+��O���x�/�9ׄ�P�y�ƕ��>�������?���K�fԴvls��_4���j<^z��ߪ�.9�#�I�-�3eٍ4����?N�"��D�Q�*$�fD��fL�Y]e�4E��z���ݘ	R\�j#i���[�b�_qC�:�.?�φ�:��ބ=[g��.��'�V)��,q�H
�b>�TY���p�u��s�F�l�s[�8�|p�����ꊛ��(~5��
��D8��6���)�Ef�B�1�cki�U�Ys6\�lJ��X�G���c$Uʞ�Ek?�������{���<I[��/����7e�!xM�<o�F"�<�N�����i)/��ֈ$��ZK#�[v��m�b������#7Z�u(x��Eb74h�=�-��f�)�`=�#r�W.#o#�����(�4'��5��v�s��nl��&�R�����b �����H& �_R�,r�K�_a��P�AI켯�D0)����P��{�����-�䥥Ϧ��z�	�<AdV~�]��"!��.S��[�t��
 O�z��%4$�8X�PR	��v��Q�;!و�����4,;�yT�h��>�����i��I�X��<�yn�@�W�Rs����f�!�L>�nXi�2�q�9�d�6��!HuR��!}�ufm���m�!�W������+ͭB���%��gЬ��H�0��& `'X`i=�Z��ɃHAT�(�e	��T9�_���ZI�μ��� �&&�4�3�E�%��Ʒ��������v!	jͫn+���\y�xq���v�.�e(�&&�k#�������C��}��*�Q�Y�-���i� �ӵ%�$�4���Cq�-#T�$�aн�n#�+��Ԟcy�vy����O���!����bZ�p;�ƽ^1���.7.j29�d�:+�p�<Χ32�wc��T4x����u])wS�e܁aQGr���j���{]U�3 04D�i*Ɋ$8��$�q"�/�L���+@-���כ��ܟ����H ON�{"/��L
oe��aAA���J0(���(/����_,.jk��f,�ԯ�2����rST!1%�*���w/��iF�:l��� s��*�����D9�������V�fN�UAC�&�L~H3�������%���_4*y��ߡ��I��1NT�E��M��a	�wb�ML�~�*��M/���N���?��%iR��-�QN�hV}YoiǏ
,�ݼ��B�TXLr���#*����0����WR�J���(�2x !"c}�D��q@��f+P�B�)�XޮV���f�=�V�� ��w���zϊ�[v�n�w������K���BT�Y;��Z��2��ʦ��cF$r*��E�T�W�H� �3��GU�2��Ը�x�I�8��x� K;(0)]�(A`�,�t ��\�^(��`��Hq*7rY�f|aq[����*�؃dh|�s67"��
��q��ړC��s�=7�$��,��繸�ӧ��(P�+a7c�����9���B$3����O�t����	N���=�8��S��M�2�%"0%:`���5U�񢱢-J���!Q�	�ی����H�6`S{/=��i�?a�~�}M��/�=��)���jr)Z�~7s%f:j�'?��`��)�R�ο�~�$�H	bPu�K_9v��;sN���dT.4!cN2D��U1����b���
�5��W���C
�F�_CH=�󎘊RA�b���Q0"N���"����b��V�*p�H�Q-��6Y7���B��w�u�*[,x7FH�6���277!�xRᠳ�&�Rd��a�����8i� bM�����k��k�ܴ4���[������N7����ܣ:�*�U������pۻ�t���^��m�/xXuGa�aV`CI:�au��&zb'�ή�՟���7Jٱl�R�qj�?Za�2%R��U�Ɖ�-D�
�8w|uf��38�8(b���tM����!L���:�2'�9�a�q
T)6B�,��at
�b�	\&��ĩf\�0X��}k68M�����$��5�n����]l-rLN������~B�ê,��gf��y�6Q��[-��w���]f������xym�_�:��@�E��ԩ`�섐,BH�-lP�6A3+���LE/���H h`Pk(/��l
Oa�~�}M켯�7�)=���H��<^��q�o9K�9�q�"M���oF/��R~��a�o��R�1QG��#�=R��]�X�K��Ϲҕz� x����Gw�*�U?*�6,���|$����
�������&(9�z�FT�Dd05&�2��x���`"�1��
 32���tK�*�%�1��^ͩ��Ɨ��Jt��^��������;����Z��罈)$=��5g��8�0^�G��t�5Eb9Q�h��8>�P���q�d�����i��5�r�rՈ�j�/i���	�#	v�B
 �4T�$�C��[[cHb�miv�A�uE�=M.���گH n��^C����D�rfi�;�k\���EA�V��  �F�w���ۓA�(tD?�D�����z��鸢*�c�d��c�EM!	����\y�D��K����w�T�P�L�/ZS�;����/�&5n���#S���?���R�R[�/t&�6��u��
��J�?B$ڡ�a9u���Lͫh��F�����<�8�1���Z�s���+ã��[F�v{;����dg���¡iT�@���[d����/�^{�^n���r�I�1�7��B[�]��n�.�#�.c?:����
bd
%�'Q�2��e�q����m_O�4��\K����H6��`T{.��K�?a��Pa9A�=�	/�����AԲ3\�E(��1�¥[e��}j1A�]~*�9Hʞ�#*�F%`���$�H��R,3 }JN�SB�Sba�`B��c�iT�3n��ʉz��ɧ�Y��:T\s;�w�,�~5?��e�N�"���E5�[�C1�,����
 yY����A��w��ߦ�GH���
���7�����*�@MX�������� [a� �p����������/�	:?Uءyzxjî�q������&;]�+8��l�����^�}�*ZPL�2b��m��q
}��5i(|7�K�R��	���������IL�8��FJ
�\UV*#Y��qe�)��ΟP�Dkҙ����0	������߾]S^�j�����v�B�'����q��~8�����+� Ve�7X��d0��Xi���Zݢ���N8�&�G:y��  TR ��}�D ���[�x��5��y����#n�T���zbe/M���syc��T94��b[���}�:��А%���&�Ԕ�Ϧ>f.�Hუ��0�Q���Yf���H3� `P{+.0���a�~�]9�0�(g���hE��jΖ��`����D����L��%�`BRm���(�*K�k|�V�N21I�(Xce� ��2�@�9?Ez�S�n�����8�3�e�N��H��|�\�WG�p�{���$8V����⾻�huTkD���߾��"Nc(v��	��+3.2�@   l��J��@�����(msQ5 �9i/ͩ�b[�y[(��lX���C7��ژ[��Y�r���m�U��0'����k ��&K*��aS�}��g��:9��J�ZP���&�ͦ߉�P*B�� �����@5d����L���n�	�%� ,?��+=�e�Z��%���n��̅n+S��;t}4�Y�R�� n�/�"yF�GM5�ćvc�r
���@�uW^���	�Ü���蔖�{�Ek��uT]��5�� `j9盻�`Q����d����H��`O�	����e�~Q=�C�<��`�潕�о�tT1���e�?bMI����8BW6)�\�l������Z���0��ᯩ4!~H���J0�&(��/8��s��.2h�
���U�����m﫜4�*:<\#%.9�:���Df��1���"��w����Ā�Ab8���n��E�vҀ�$i��B�M9�������ɿ2���|Z�pW�L�r͵L��&�	��K�]VB�Y��&}��3ܡ�`(Hp�Kj��S$P��
���j�,^�ݻ9��T����?���ǲ���d�ɲV)۴B@+ÎX{�(�pܕJ���hsG¡��r<$����+�<"_�="����P��*A��B�D���oN���|[�*� A�s�~EG�H��0>4hLD0����!v���Ѫ';��z���*4EV�H 	%�X��i�X�P�
���y�k ��Z��f�X�8�D�S˨��_�}�a�IۘG$n�tej(�Ms����}�M1B��U��g�[�1
��Xho?�U���
^�Wt�/�ce��{��Q�ɋ����!]/��T)����@��{=�ʈ�A
�40`DP)-^��Le��ifh,zDZX��Awմh8�r�XmlPWn�$���i�����]�z�q�� @��1cS��k���c�fJ�E���H. PO�/;���a�~P�UC�=�����ɣ!1BTq���o}�����R�ͥW��ECfK��_pI��LC���	�)V���'���Rn��6�ɘ�@3F��¾^��α��ZܱE���4�;U��lUn�Vg�7�F����ԫgh���Q�=@S�D ɪƇA�v�#�1ę��[���b9�h�!��g듯�k�}
C3��7\��%��Ҁ=�0��	g��L�F��
���l*#ؤ�L�����Jm�?�DgQͬ⓾�'�Bo̎o+y���u%"��z��c��I���yg&E��b��}ZEi�ڸ�.A�)�#ŷ}�Z_?�\q�\G��m7j�Tobd)A"B	�w�QrRAJ�2X,Ta���0���z�CT���ǟ���Z,sXVy�<�u�5u������χS� ��խV��_���w�=7��X�F�`Hr��z�y���D!� ����������u_�:�.�[V��U�40�CX���IjH"Y�́E���䙬� !
�a�r����kӊ8���'3bz��-=&�}�|���V�!�ي�4�U}��d���H* #NQ{/+���a��57��\BZ�'����8�J:܅(�hP�<AɈ�v�ugq0�����a��N��E���a^X>$�oD�*��ǼNH!xa��"�s�r�9���̆)5�9��Ã�J��vbL�hX�_������֟�9V����3��@�(��p!���<]���L"�C��8؊s��\�7K>�0&�	�&����}�	�"���"(t�d�Q�Va� �H  AS�P\S�℡����b����7��/�Z��G����y"U����&�9�>x��<u�w���7��v�B⃡P17U��.�o����'(��]n��G�]�� P��0�������mlPxX82� ٱa�?f�cħM8p�,\�p�t.ePZDgL̀��S)�K�:z�`�
}!զ��o�c�Κ����Jx��[�
i�ߚfi�e���E���R��u�l�=ol��^TN*Z�,o?Z�*�ﮏ��5����њ�����q�F�eG0�u5hn�� ��8	��aǉ�H�\M5����(P�@�`T�)��Z|%��9�W����Ò��p\�����H ��XO�)/��K�i��};�D���'&���%k�U���]�J�K�F��n�U��9fs�Fg��w��ZcE�	���'꠼�ҍɫ9 as��#��vW��D]���	vf\�\M 4�hA!JYtw!Bh���! �⅊:5$��e�hd-Ֆ�'y���F�,<F���(��mk]���/�ή~R�����D "�U�EQf�&>5��QN
KLc3�h0l��lS��,,:��{f�R�8�ǉG��Ԭ��ۻ@�(`�!��ۼk
܇H
��\O�B?�q� �U�o�f/�Z����c��Q��^j\5+���E(�?�=��h:(�F�XPq�V�AF�꾝UXh�
QA�ٷg#���D������G��ZcT*��`"
	%d�<28v��H �����-��Ä{ե��"�Ԧ�����ʀޱ˛���lw(�*ܧ��s����Ս��0(�<�SY�pw�@�xYf�zB ��2��U8a�:�Gn,�����U�Nwn"��r -I#�\�������w�R'�݉{1%�[�^�,f�#�v�G}{K�}c���n��`���H��XL�+���e�x�A9�=.�&���R斛����xk��r�鐈ak5G��P�VbU����G�l�M���H��Tep��^����Z`O@��3��V�J��fq����|�A��Q0P`&��X�ᦀ���!��4��l4��M�KcP�/d(!|-τ�s��> �z�����v��!@"	�t?�tڣ��j�1mq�_0�`�\�7��?S�5nMK`���/��Nw�|��+�|�6f��j��Q$o�G-�.��X!������܍�v�Oh6\W���@˵ڭ5����_�x[vQ6�=\�R�?��\��7n5Xa�x���5��m�Cã�{�fK(Ő��~�Q1�
7��#��GS^�?{�� ���r�Hk�B7P�(�m�)��R��@WS�"��F8�t�,Yp+��&)�w�.�`M��I�l�SG�i���5��m厱�ye�9ރ�)�':OK���Q��1h�����š��:�ޏ_�+�M��B9���h�������Y��s# ���Ob��6J@���|1�Х��K�EEn����Hp�����H�SM��C���ٝe��]A9�=��(&u���E.�aQ��.ٖF���8c/�R�?����9�P·�����h/�I>P�����K㛩mlx�0k.�\ө�Ugd�E�ʲ�����Z��>� ���r��%����A΁����ߐ4��g�=c����]��)޴LomSa_��o�*���C��C�����&1% k ��>�(1���\Գn**j��AJg=e���G���J�	��`鉻�Fܚ���K�����dI_"@'=��d���'	*=u�W9��4�aL�J48���XF��������X�s�5�U]N��u������k�T� �p���C{�]o��E�a3��o��㥗�M,=�y,x��^�Տ��� �������p �IaR�K$b��J2��K"��@h�#�]穨��ݡ������=ݙBoe�nR߂���k�߽[��*P@$rLt�d����f�bi�c�4l\�vێ8���"B�(`�߯3���j��� x��IV�Ķ:GKJ8iBD �]n�D�@D�GL��'�/�,v	S+��ٰj���H�lML�&��I�i%��?9� ~�;'e���QH�,]�Wu�>ը"��������wJ������B��M��6�M�RX:G>�l�'X��Q�o��O�ֶl����@`F��\�m�߷��q���J
 ����$4"�&X<���+�Q��U�$?~��f||[������3O���5W�~�w�9�T��vm����E,yb����w�H6�ZPP�M2f��jѣ,��sz3�E1��(`��y����b�Lq7��WEa²
��5�B��D PJ,*�a�@����tQ4X��G�	��f�cKǛ��U�_�w�ￎ]���O��eJ�L{Tr��1�i�^��IĴ��\��@*d7���5��E��" TC�|﯐DD_��k"�B���@�� R�r�d,��2b����`
s��!����X9Z�\��3�O�f�0t�{��f� oM9���~��L�:�\� x�P���T��e�|!��V6�.8`����q���F�<������8y�h`Je1��V��Oܡ��p�H��%a;�8��ua)x '#�3��@�I����H�NNLk/��i�mo~P�=7�=	�'�������Mt+�u"v0��\��5�.֭}��r�U�ֲ�?)�M��7��it|	r�����3�^�jHf������<�_��Ez�����|"\��
48����Gd���*�@�����\�(<$�
�2a� ���O'��D�z�P6�u�c7?P��2�h���ǵ��r�oox���(�Y�È�g:�0�j�g���1��������T��,�t��:��Q�yW�i���|���!٢I#�LX��r�X��ecLE��*�i�P"�<�dΈ�����rG�k��Z��e�X���n���[?ֿ��>�8G��=���J�[�HL��c懟��V2
����������Q�A����s8����1yH�Ѐ�  ��<^%�Ȍ�pD��M�C���6��Bm+�_�F�$E��i���iqc`�Щ��Z����j̺?r QS@�V��"�c�9��y@���d��*��,%�<�4�k���~� �IaZ��8`M�$���ZJ?��ֵd�R�<�S����6�$�������H��NL�+���e��O�7;����&u���3�̰1A��/4�����T�2�D*#{���O�"����������	�"e���n�G
��Z����z}h�!4U$ ��A)8��A��"^Bʵ��(W
-!��C�?�����]���_�>7�%�܌'�gBc�*�������|��P��(*g�+L <����4X.d}Cn��������;�9���8a���p(��zԍ�����A��ЇsBF,��[
��'K^,6�	T"[~Pt?��:��հs�K��l����y���Ϧ����i�����"��f:��X�*`*�c�p�WyK�����SL}���*�Iʰ�F8��%i������dа��z�U3�Yp!���@e�fZ"$<��a�v[�f�=7yf�Zʣ}'�n���S�?�ߵ~c4�I���ʢV�K��PխULƬ�ij`#�rW�V��a�!����{��h"s��u@ 2�I�g��D£K; VQ3�U�!�j���w�
ڴ?!˲��/
�D�L�<ffh���^���0�83 >%�����H&��NL�/+�{��}`e�;/켸�͠嵧��s9�5��q^V #���A��AEҮ'�W�Y�c�L& �W�U����F�[]��Cm�M��pQ	�3"zgɥ��{-.~�����R������[
E�(���Xr�7�~_��J�@�0`U��~�ӘV�B��� VRZ�° ���{��]łB�R��sӯ��J��1� ���Ph�,$L�"�EݨbmN��t@kE�kΔG�W�C.}0�5�) �ݼ;'��-|��
��]$�� t1�6�1�:�^�&t�ۨ�PT��uNCH�J�0$0�[���UQ�K$�T��BI�eH�a��[�y��ֽQ6�k��q�`�˲|���-��v�����o-�	����=o���40��M%Z�f[���(��UQ�D@U�ƿ��b�c#�&̞{~�� 5H 2P�%ܗ�@�*O	�
p�Z�*���H�NL�[pv�	]e�x�73�,\�Ӡ�}�/Um��֓��4�@p�+7h&�E��,�}��Z���;_*��,0����]F�Ss'��NU�.�U}�T�%�K��?e�-��"՛t�7�|����K#���D" �D���$	�28$Y�R��E�t�)�����c4�35���{9��/��j���'�ɞ4?ll[:rFO�0@!M˘f\�ф�v����:�Sr�2�v���d����w�PZ
!�$��0�I
��h��]":�+j$�
an���h�J���9מ��G���4[�U(�Y*�V�|������ެ�����|��>ژ�5�R�\���H�{6m��:� �7����b�=��G�J���}����(��9w�Fm��_����	�t�!��#�Y�E7-���ޣIkn�z�RP�Z�We�i�ފ��K��(�����n*
�$��|_TĨw�����s��{���]C�Iتr�;��� % �q{T�؂��e"7��LP�i��� �7�=q�UWU�������JN%	y��E�~ӥ#A�J
�m��9�)������H& PM��	T�g)�aH�N�75��A� ���/wdc�F1�cyCݑ4���My����83@P4 ��?t�p�y�C��"���U@g�:Ľ���]�o�R�W*F����A[]Ō&<���4����f�7���/z	�E�m������rNŠLK�+����r{�AF`-Rc����"��H��@_&�Fnzx�C��7����2�ۙG2��u��(���4`"d�kD�����}tϝ:O��D�T����I��L�J^ʤRV�R�D�hQޡd0%�.]]��N(p�)6�������c���#W�p.sqܹi�A���/[W5�og���@�i �"��U�� �2��"
b�y9	?��]V��K�L������[��Y�Sa4�b�ְ 12'%�S !�BiXjd��t�pq�8�!p�k �����Z��'�
��1��<`���>-�[G=/�v���7,xG���H' �E�K,/ z�	i��1/�im�� %u�#��)a1�������%P�KVV�� �xYW�Ëe֪�A%C�����'��@@(3��2BRi�4M	V�������u�׍�L�U��^�AR�<�Nm��5��{o+Z�����j�G��?�N
7�E]*�м�E�Qԫ�ގ( C�* �53_�DN����L#�ݗy�hk��SOX*n$��]�b@�RK%�	{,�mv!CV��	P�5q'���uU;W��e���J � >�p�Ms��R�N����Q���:�Rq�DSmӿ����?Bl��Fpp�v(1�,0����z�B"աB�Tb^֕ĔlrL�MOA5+�R�W[�E�Q�VAM/���-D3�����a��~����Ia&��h�Zt�֜�����+i3�縸*T{)Q��|��TbF.��H3TP5l�N!ͯ6@^�,���#�F���H $ML{DRt(,e��P�91�I� $������f���Jcc�#��˼5�t���`EO�8v��$��V������4��bXJ 0����L���Q\<�h�	!@�Nw%�~�������q��k��ʷ�����z5�@B C �X�� �I�O(%�8a���K�v L{4��^n�����H2ļ+zM߹C>*:pSP���*�ϼ��s���Vk�e�%��]b���u�Lȩ��m���[|Z�1<���1s�;bPZ�* +�@��;6π��2�Pe<^r�­G�0Z"+�xc0���=�G�fV��Aqȁz�Q�8�FU����A����ޯ.$�� �����W!�®�ouT@�T$
C�8�>y���no�ELG���[5{���0R�!�@p拤��������L̊�uRAH
#�$��z�W�n��ʙ�/�Z�ܲ
����=������2�w!� c�]4��W�}����4�rN��ٔP41�c����A�)�\eU )�~��zH�L!����qo��Y��wb5=O-�ks4�ԌM��k,�� ��ʿ̫�����{���H! �NJk[ri(]fg�OY7%��������"1�/�Zb2(<Zj)��=Rn��2l�^��s��Tlh�m���?��&��=E<�㨃�}U��
ʪ���06 a�@���4�HPpH$�L�Jհ��iÈJ��U�n�r����s����7�?1CwI"�ʀ�@��!�X�WdIf%S�4����ae�˧�����Ƈ�i�,
   
0Z���LY�5n��T�+��!b�_�nz��W~�79�1�suk�X��C��������_��I�'�8xeH��:��x}�M'���5��M�pZa�>�ч���ҟqa!S��ڟ�^������M"V��,c#�|�^EN��G��U�rK�*�ՑsDKd�|�~$+�>RDɬ�IS2�����;K�}5=#dWF$_)��1��H�Ԩu{���GR� ��J	@#2�ɽp�p�ø�|-��c�,�R�P�_&I���u1*1�4r[f����H��MK{+�wh)=a�~q)�=�������x��S��P�=�{G�����e\�<N�
���.I�(��3��ڪ8�)�ʛ>T�{�ujgL���F��G�� 6�I@��<�����3n���*ѥ�<;��R�i���Y��斻Z���S��h���}��v�s� <���]8D�3:oqy��8��Lt�D� �j�%u?����_�a�zR�T[��4����!�Y�<��k��"�`�$$�b��FՑ��]CgѺS�$k˕��}͝B���]��d 
d��WJ��N��
���2�\R��z������ք �=����(���DƸ�����6ʅ���(��1R��E��6�%D���1*�Б��z�
ߞ�p|�qi��?����ܞd����!1���m�.1o��$���n��H؞LQ�����?�Y���Z�Z � ��va�A�z�ϕ������H
 �AJ�c�rH9=a�~P%/��AƠ$�����Yr������Do�>

V4z6��m�RZ[��o����k�
�k�~O�I����n����Aa�ra��R���v��g3)Ho�4�k���X,0fB�6RZ��$I��e*ūsq{P�-/�B�Z�F��Ea���+��~#7�s��8��Kzc[���HP|�U-�!ϻ}R9HH~��NbDQPeX���K�P����{��W)W8&6�$^�n;�	� �d�ei��f�����L
��%[��8�d�������O��zE��2Rj�1�e��g���ް��&!3\��Wrf�t� �R��W��KN��6OC|���異�dy�l�A�F��w�6�
8x`�@ޚ�
����h�����1n0�S�)b�I�\��y;$|��G�ra^�_��� �pՙu4�o��������B��)E.#�m�2�U��ܞ�E(D>�Q�l���Ǳ��1Mi�xH@I���P5�J�4ؕ�T��6��z�dt/���?����|��{�Í��m�⚢��t�����^�m<�o�����H+�bAI�/C�p�ie����~AƠ%u���O�����w�
w&G�CD(  �w��vP	N	L� L6�5+^��U�<��
N�ہ[:�l������}�L�����jg�߭�i��:���0��lգr��;;� ����%��NR�0�	� ��	�:: �B�)���B,K���b��@I��.E��-[����Dĩ��������S�s��Ի��a�7�'���>�1�z�T�5�=]aOV��@�t���U� aa��d�wI{ !��;8��*��P�'��X5��P�vJ�6I�q"ǡ~0Œ�1��2�Ϝ�$^��B��[��bW"I����<z�4�s��5�ӡA�n:�$�Gm�/H�߻H�!uڲ��@x�'����?�����>���U� J�����T�!	�����ǕThլ:�r�;�ùJg�E����ڵ�j��R�R���;�YD��Xr�9���H# SA��2."oh9=e�~MI	)�=ɽ #����1$T�Y�J�)���ܚ�0Hg/Ի_�`�D+0�6�JR��`9�aU���B�D��b��!
�4���ri��k\ʠ����`J��ۦ/x�g·��3��+[��m|VMpTp�����V Mf�x��Ͽ7w��K;I��X�D���\}�*C���R�<��X�cb,ôQ���ϚGZ�Q�t��7@�i����������-8�Ŋ���7��!�)��*��$x�����ޖ�$M.��" |7���ΐ��H���R��"sKb��b�#+�an?=�$r���lSj�68��ݻ�U�+?���˟W��Xp_��2�����x�E�m�Z��%�匨ݺ�{{���8t�UZ����Ż��K����B*qa�3�Z��Yf�n�����m��ð�nd�c�Jա��y�xګn�,��.����.�Gc-(
���h' �@J�XC�pH)=i�~N�!���	� #���Z�(0��¤E�b���4M]P��:& rC|s�?Ӹ�a`�X�����?ѴMwQ����ʫa��!ѧ#5�՗ꩁnL��̈VR�lֺ�Qh	�ۯ�5�b؉��c�Sxc�k�-���U��F%?o��`�@T.YĚ#=�H��+��Ǌ�L!�A�B�h����ܖ1�:���)�f��«�Ћ! �ky��QǴ��5�fi���y3ƽk��K�R�|\��ɿǜ�s����X���bhݺ"�����	�� u�ͺ����ʥIK��uS�#D��	X?L�)`G�H��D�Iٙ"/�b�w+9QY�b_����^R����\�y��Hy������nB����FN^�Q�}�w��)��ͳ��X��x�[�ѩ���ս��_^&M!��aU��&�5�l`!�� f#R���֬�� @^��*��AI��Z�����h��@F�/?m���e�~i+�=6�� $��"PR�f"����kyR\��(
��>Q��|)��:������Ld)y���-�U���l�������swA� �K>�?���Lu�4��*s��K2�D@P�z�F\�p��5��3@��$J��U����ʻ��s.ANbF�Z�-'���%�3���7��.E�BI�S[;�-$�q�>?��ИYxeY~�^�YyQ��Zڕ��g��?���Q F�L	�ՠH�0T�YKh�f�8����f ���<�����w7�M��c3����<bn�o��_l��w�z�~?��Q��Wg^��e�j�'��Ӿ��6�o��[NZD�c�Wn���$2F�� �ۿʄc����adT�*}Qc�;��k٬�p�ĨlK�V����Q9�cD*����i��P���jGOF������
�>S��n�?���|h�"	��ow0�1)��BQ�۵�0�@LB����H	 �@G�/GqH�i����<�	��5���,�~m��[\
-;��z�q嬠�m�h�e�N�MNs��5�_�[�՜��G1� �2m\��V%�h�q���>z��#.k�j?��UpٴQ`xv��EH��;�&KʲESeh�����(�Q����ܕ����i��
��A�>�ǚ�c��,�'�x0H0sR�����^=�LWGGvy��!�ϫ?���GU>PU��@ 曬Xt#Bk���b�G�/���%�+�{9O�2�s"j����s�ٻzS��}��+~�ǸoU%5�������4���,)�/
�SOϷɰ�BAV����Gb�5�	��.i����rP2��5�nȷ��aq$*��Uo|���s�S<�Y�c��OG��5��k/�E� s�^�G?k�^ŕ�@j�/s�Bĸ�"|ꭟ���U��u5�����(G":DTYM�At����h �@I�-�f�Ie��!���q�%|h48e\�d��*��}jS;�E�i���$����F�(��
7%C�"7"�6����d�"'��4�� �QC�g����l�Z��&�K��nz�BC�,d�!%�����8�O���~\�ʤ��-�Z�~V����1��yR��g�IN}[?����L������'���8d�o���_z�T4?#�뮫����a��~y�L�(	-���t���Pqr��C��@H`��H{)cxr�Z�U'�}�v�5�[�gxό�յL�V�t	
 �1c��K~1�e�n�%���p0���Zy����r��e��¬�����yD!��=Z[�G,���\ԌR"�x����	Nee���ZL�ݏVK0����s3)�D,#Y�aͽ�n��f8�C!��z���md����뎫��l�K��lj�6d��Ɇ��Z�MH��s��7>ޢ"6���H��AH�E�`9-a�\�,�	��5���*��Zء��T�:����O��7���R V?�ljV� 5���Nfȓ�C��q\���|;�]r�M���{�ب-�@ځ�^8&��z��X�bʄ�y����h�*gΕ��r$U�`�~5�؋U���P�+��NHP�@��t�_�Ie�z����Y垘�X���E�0   $9����!*OAqJJ>���͌��n�!���q�����_4���*��5SR���t�r�[��r����~Y�&3�p�.n��mkl��0h���N{�P�
:>o�m�{��W�CL�~�/�q����)���ثiZ0��xۆD�z�C�
�%|��R��"�5�XOD`��m�1_yi���5�|�PG��t�����T K����W4d�*��:����o����&d4`Zf�r@?T�  (�q)Y��OI
ir�6M>R�W�����U���8�3��U�����H  @J��h&(�a�~��!켯�\��5���?��o>�/�P�$l{D��-AA���Ʉ3] O���>)�a�͋"(-RőI�f��']���D�+>T��,s$ӂ#��m���g�pʖ#�<Z¾�{S]sK�Qo���ux��=��Ղ]<�t����se�Ù���pQ��p��_��yJ���
�� ('`��eq����q��ʽ��#N#�>�\B�-�R�������;X3lC����?��M�0�.�r�p�<���z����R7i�e�!�f�ɼ�ܢ ��	\X&����Y�f]�Q�����(���.-�q�]C�s4�_4f2�ҏ�J2w��l���v,/c]�K��K�U+
��nL��O��!|��ꃰ\U�%D�"�]��9!���T���Ƶ'�}�&Oc�<����`������6t��X����"��05-lNr):�ܭ�j�с�1h��������H4�8A�K3 d��i���!���Id�b姏 ��T,i��%�)��T��(�b0	NK���z:��O�妊���Ǚ�6��=U���)5[���;�ӴUN�i�{������` �BY���Y����;��т�L`�Y����C��%K-�zU@���~�����}�֋�{Rc$�q:lx�5�v�-d��hn���d��'0��ت�,�4��[���TH���qA���.�P��0QB�y�Aj��6-�j��Y�q�B�ͻ;ys*���p*[�.���q���a��p\@��MO��#��� ���Fu	4 �?(�a�d&����J���h	�Y1��/G S&(�a����<��㵗���C�[� p�>��8T�Q���2:�o_t�U�V@�+ߞ��yjr�>}����,cwUc���)MB��%>��K��`�p�;�)���M:���ap
`X���g��$��Yg��D��o��D��M�#�v�j�Mҳ2���$��E"N�_�2�"~fD�j�Zt��<��&��H
�3��3 {?(w&$Z�r�ҝ�}�skܦ�����u�$Ȉ[��?�z�@�6�����w�޳��X|�s�-7$o	^��mg�
k�V�\���ӵ~��`�[���}���j����?�0�R�Z���!�L�a��f�2��<�w�t���lN�W�l�]�o5����j����<ţ��9#�=�=C\rA�����.]������9���TaU{�i�+b>#�D-�ԇ���U��Ֆ\KQ��[}%�L�%oˣ�˒��p��Q��s��`������h" �0��Y�O�)b|���4�p��u��8f���R��Y���F���<�1M�U�Z�
�T��Q�:؅pE���[�b]�j��r�?��O�?"� �1oo	X�ɏ4���N�:�� �B�ܸj���3Kg3�Tk���̦n`W�=�����=&���U�o#�ƀ��Q�[�6�$1�	zC#��`b
�JĒ�w���k�/�	��˟nf2�6�u���4�1�Q�
�%}?�Ox2D��������9��bY,3&�����d��<M}>����;K��uc�u�Y�������R�ѳ@��Ԉ�	�M/z��
��*{�$��'�(��Y�:�8���+�*eHpW���]�r�Q&
#b�c�kn,��a,�Wi#���h i0�{[�J	Oa%x��<����"(Vh�5*8�����ҹ��p�lT[��쉸��^M#����:
�r��m�a�q�g��}]�QP�u�;g�7��?C{�x�"���<O����� 6��u�����@B�m@n"�� \��2��{^k����ƕ����G�n `�J{�6�ڏ�����t��p*�c� ��NJQ6ѱ�9�>�H�r;�����.�i�@̪��ֲL���?������Z�{�
�� �����#*�nx
��l��(]�/`K�����q���.ʑAo� |�^��u���*�zԲ耆E޻�e���(B"���=U�{�x��v�94���Ok*�+��[��L	�55��3a��M^�u!ZPČ� ����h D1Hk�C���A
V �����8�#����5����F�t~9όy �bSv��s��rÍ��Φ����"s	�;4?$��`#����P�-����w����Р���(�"@I���l��!�#P��6��D'�@7L�+}V��ŉ���ٜ�3l�U,����fImMD�cQ���'(�yM��uB�oLن���ngJ�C��į߉�*}��'��Ki�f�T�k����E����f�VU���c{DB��7��b�H�Z�����g��ǰz��b�M�-�A,��fEr�%UA����b�q�L��Vx���ʏ��j#b��t����#FPL��{m6�l*�>'�{�����?g�w�*	�3��C����+�� ������h	 �0�k+�VE�<ϲ
ġ�a�"������aQ�Ӽ��`��
!޺km1��R���8��Y�|0�v��t�e�4�:��䌢&�%:�5wH�k#��@�w�Y�l\�(�L�t����Q�wh���@e��4��^����(�N�E�Vťy��Y�|���͸��c������[A��Ƅ�������;�Q��r�X��JaJ08���k\�	Ѭn�-ŚW���{�tvc2K2D!�0�@��3
���w�Lh��FƷ�#�ySg7y_=�;��۷q�Y�<Zt^4J!Y�D��k�7�v�1ss�9��F��p���Pe�v���</���o�)�}�c?m jF�`���PL|��Ibp���Ca����h /D���O��=�������c4��>��6������a�d���x��{ ���5k�ym�oj��"|"���J����1VQb�Fe�[6���k?���!�$���n(�{�hLE��S�6qU�m�zgSG�
��3\����7[�?��p`	a1���^��Y���F�Fvm�-����� �
8����� 0�E0�p����� � N�ʐ����T\����x�ܢ|��˶k��M����H�/@YG̔<e���~�4����������!l��X��Cn������!�5l�o����r�r)	���Z�������0Fh�p��B���f��sv�b����ō��S	&X��Ј�+�Ϩ�raa���{���h �(Fk1}�Qv5�j	��=/ ���*�,�c��2��T���8.Y�oJ��e��QҐu�V8
�E�y��r�+`\; 8˂@o�O���?� � (���EP�ըda�K��Ķ��m^�O����5��������d�t��`&-��ϵ5�ϟ� "��O���������tI&�P#�ք��p����(f�(�Rq�;٩���J����'uf��|�Z���=��~]i�t;��A��9?�������'�� �c�A$����B>��u�8ꮰ��aX�Lh�������-*q����ަ���j8���J@HH����i�0����h
 �%��x�<D95���A�
b��)0?g�`K'K�ٞ���X�9�sz�@�uh��e�m���|��C�|���v!
��e4>ޟ׫�����	QYU����^�/Ƃ����I2�\短J��b�<������R��rA��=l�l��ʵ���Y��{��K��>1!Q�6u
s?�Ć ����NG.�9���z��_�����A�9^��ؤ�[V1ͿQ�kLRv�"�����<�<��X0I��m�~�[/�eɜ�S IDq �Iz�$5@�.�T���P��	�Wc�D̵S��m�@ SSIc��A�9���^���_��
J��YƲI����cj�Lș��Pu��h
:U�����f}�F��C
u]�����h �'Ghx`E���6Kn��L=�@�㴜)�@0�0|9����L��5��Y��dʞ\���d]�>���{����S.�e��V=��>�2��F��X<J���s��.Yɪ9���z��?�&�X,6�˱��8�.���}^�����!35��D��.�rBP$��7���:���x�k_)ur�!Ғwg�P�BD�x�:�a�v|�~��_Y�&�]%�i{���9�ؿj.r�?���QX�3w^%���?v>�C6+,=h���R#��b*��B�^�t���PU��`��C�O�H�V�5;���d­�+�i���i �I�;,+�V��XG�����h �&G��x�@�ȊM�������A"�4PH��O[��C����h�^�������o��76<�9��1���֟�����@ R0� >���1+ H�8lE
N���(�LŜr��)L�������p8&F�(p�B��Llw��RvX��Ѭm�Ȩdb������.��"�}�����e�a���$'���Z
�߅����̡�/-�N3�����2��w"���*Ο������2'd2&���������>��뾲H�6�le2j�]}(���I�.�"b|�{]�w)�������$�nW�e5\&\�(J]�#��J���th�l%��x 7$ؚ)�n
�H�\p�ьV��G���n��e׾��e~�����귣���E��M��r ����7������� \�  �!<Fu �d��՝1/3&����R��&����>$����&̯�ns�n��ZL�JQH�2\�0��B��#g8�
��ZY�F��4^��H���M5ݮ����?ŀ4Ů2�v�1���G�Ƿ��������٦���������H����U��T1P�7r�c���i(i�w��W���� 56C�>�g�+��th��%��x0?���5��!���`�"�w���D8@�:7�|a���	���YŖ�&�n���Y���Ѣt.��K��yu��;��������r:ݖ��)��$��C�	g�׻=B[�����n�Y?���6��)��m�KK�
����=M�����Akl���P ?��ʏ1�l�=R��܁׾7��?�g�'������F��ܫ_�%	`ӟ�D������@�@u�X�3���r�����@��#-y���Ӫ����ƛGܙW����*&JnY�����th�G&E�k�6���(ǥl��=t`�����6�RÍ|Mzk��Kd1I۹?�t�Ӡ�Q7����V\��5�~�&T�d�T�4���@� if��RG|�4 ���`���U��X����pc���^N��D�z�<���ʣ�r�ġEc�]� 5�%2��$�i�C�|І��vӏٚ��2WP�x���Z��]��OT��j�|5��Ag�W�V9*� <�Q�4�c�{�SM|��dtkK_���n�D��Y1ܕ�UA��$�LY��9B��z@���th
 q%�Q�KP-�8�D�z��=r�������*��>���U��%��!��0F'�c��{�w���X �	�&�fQ�*�-�R��������T�F��  ��*!X��&*��X��6ʰVdc��Ŀ�Q	B2�qV�P	��R� �AK����Y����R��S���*�G�o_S}�u����(!�˅��I,YO�R!�����Mt�v�+r:����p����*���WA��1�y�K���~co��u���B[@��'���-���q'��7�^ �H��dh�!�hP�,�(�(�����/���hP�@7eY@+ �9KY?��@/�!�j����/�,���e��W�
&�� I��<�� 7;Va�J�)5����d{�#��_�S?���QI$�m��~>�w�b�+���쥢5i�3ɡ{d�S9S3�5"���M1��r�c���U��������,�S@���<��ٍu�;��g��FǬ
�:����E���L  ���dh��&GhX�$d	'�t����h��t �ܭ���'_�CF<���wL��R��t'��r������M�Z4�?�w����) ��w�_���ٙ�ݒ�'��:�R[fLt�@rA�Q yD�h���x�:�l�|̠qbh^Z�`;}�(���.#�4�y�w�I7���*�bj�6���J}B����c'����9d�&
�MY��Zw������bȋo����<��M���dh ��&��<01$(v�JȇH0�r�d4 ,�j0�wר�fm1yqA�@%�;����GF�U����;� &�P<��[�(_�}"�~�Oj�_�4�͉��S�LVݵ�����z������5偠 �x�p�'Kh�*
"l�ն�,�Lò_��#����r���^$ ����(tTQm�� ����2uul�"P��`���Z��ud��RM[D��8(���x2��]��"Rγ��dh 0!�h�x��Yą�n@�bt"ș�87�H�����WzIWX8E�$A�N�x�w��E�����U?�u'�n��Sߨ��vj~ە�xԏ-�<L���ǙSH�������)V���x�rx��_��n���d����,��	��+l�%�+�+��DҞ�v:l�xwA��� Z����(v��ė���߳\����R�Zn�#H�݁������-���w[�m������dh��"EP�c�5D�EjD�@���#4 �<w�r��Ӳw6����r�� �E��AV|��������d�۶�M�o%xf6���0�g)��"23��`PFD� �K�n�b�h�������ST�d� �K8>���n��>������r������8bM�s��C��c�#������IZ@ ����0h��P���Q���J)@�O-�Z�	�c�X�I��r��oAd�P��Y	����dh �['D�FE3��e���ET�}�"� ���,�i!���/����jV��q#.m�E��~Kk���U�=�6��ձ��EI9$m$ۑ�Js5�s��Ug��,2����\�u�Rs����������t��mBr&���<8۵���H&����dU�����	�(D]��2�z�~�Oߣ�nH�$�]V,W��.�&�A���Yڭ������6��۫`����dh��. F�`�!�� #l������u#( ��^��/�cLu޴�?3?�L�{>��j����sڊrV��`���D�kc֒ �]�L��ݘZ��� �em ���n�/�a�dT�NG~��������� ۰k�l���Gլ?��_�Զ�~�'P����)�(B�j��@1�D�EdB�E����?{��$ �� ����%5��і��W��V�c�R �H�@��wB��i �����dh	��!D��3�#�� "m��Π��!����.L�8sV�+�|ϳ���H"B�4	ǀ��P"������  �r4� ����U�21+Z�B�(=~�/K �ӎKml=��xA���.�o���%೤�����za`K���3
������G���k7���\DV%���Ȣ޴w�{��_���!�U`��O��E��ctm������`(!�" ����/�%�,��	�^@b�'K>��H��� B $��s�	c��R "� 	,��[���t �������mn�������(� ���6�ΣF����R�  ?+����H��  = @�co  �    C T@ ��������������XU�T.Če�LAME3.100������������������������������h��  i          �      4�  ��������������������������������������������������������������h0��  i          �      4�  ��������������������������������������������������������������hN��  i          �      4�  ��������������������������������������������������������������hl��  i          �      4�  ��������������������������������������������������������������h���  i          �      4�  ��������������������������������������������������������������h���  i          �      4�  ������������������������������������������������������������TAG                                                                                                                            �  RSRC     [remap]

importer="mp3"
type="AudioStreamMP3"
path="res://.import/pattern.mp3-81ceb9ddbdec8cbf839427ab2a5905ff.mp3str"

[deps]

source_file="res://Sounds/pattern.mp3"
dest_files=[ "res://.import/pattern.mp3-81ceb9ddbdec8cbf839427ab2a5905ff.mp3str" ]

[params]

loop=false
loop_offset=0
  GDST2   2            ~  WEBPRIFFr  WEBPVP8Lf  /1@����i�0����	D���=m�7�2�έd�Z��e�˛���1��U;{*3�0��U,����x��O۱��xH����ަ� nE�/y�/W�����5t ��O�C�V�������7�%u��ZR�i�)tf&��'�z	MJ�"��a�K�cC��E�Tk<�.�y�]�-R΁��6�B�H�)��r��@�O��c}�}>�A�'`�X�>-}�>�T�)�m,�i� ���`� ���x�ib���������M��%�:�%�9mp*�\J�;]I��8��1�ahz�&��y��=�!��~ �\�o��q�������#� ��%�4ߍW�n�<��T+      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ball.png-ced949aa27aa6415675b42ae2cf4b2b4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/ball.png"
dest_files=[ "res://.import/ball.png-ced949aa27aa6415675b42ae2cf4b2b4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST2   2            �   WEBPRIFF�   WEBPVP8L�   /1@�6�$I��T����#���!��#�7�o�o�L�A�A|0��"�B����=�� 2�*{@���u���*�r�>h�2I�Z�Q�;���GN9? P���-���p"��F��F��s�hh��0w�F���#���."�!*��lT�/�d%ph��f8A��?bsd��p_\��P^ 0��D�.��!�a����_     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ball_backing.png-03cb860f542a7311283607ef7c30e250.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/ball_backing.png"
dest_files=[ "res://.import/ball_backing.png-03cb860f542a7311283607ef7c30e250.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST�   �            L  WEBPRIFF@  WEBPVP8L3  /�@% e	HR�ED�Tm�
#[?��8$��5.�q��%���N�sH�r�F��ڶ�I�^��O␸׸��
��B"q�.p�=*�������  E��'�����˿�g�w�I�*����E^E^W����e�������o%���Xh��F����ZkYS:M�^��N/A~�Χx�am���'?��Y�����Я8/���O�\��T���q��'^կ��s�/W�.nK'��\�d���䗓w�Z�T��C���`m'٢
'o0/#6��H�u4�X`�}@S�nX�3�q9U#B�R)=W�>��/��M��^��9:�̉��_k�Te��991�N|�~d ��nx+�3w�S���i�W�ߪ�&���ņ�tl�iԯ�Ԯ���S�n:6�4�[���i��Ʃ_N]�&��F�!x[5����i����Ҩ.PR���w���Q������:)�$*PTl��#B�5�]���h�Ul��#B]4�n��SbQa�~<������M��5��/R;"��O�0�d5 v��B׌ku8��\��'ר���#�U�Lm�6cJ��3��"I6d��-Ԯp,�� �>#�\�(.��1���ʙ��a�5W�V���K��N&�n�!��g����A;̅�qbW0Lj�,p~NS�=g�>�S���=f����Q�uR|��m}���e����-�)�$�C��I]︹�=〹�a���uR���[~D���<,S�O*iz��xB��x�/M���M���0'>�QrR�c�2|yɘ��·��:��aZX4,NX�U�^�]0�M��:+���p`p�v�ԛ��)�9��=��6�[�}�L�Ĕ��`l��GL>iأʌs{��^0��a�>��*�+�w���j�w{���Mr���\��paհg�N�;ow��T�4�}��1%�f����� M�_���\�C�Cu�Q��U\m�L��`�4�����T<��aK&��o��tR����"W�D���o����Ru��t���b��M��]ǾV�̂х�*��#k�H7]xj�4npj6���n�9=$|h�n�����M���#���#+�@�" �i�'H�hm��K�4��y�{�e!�M�L�s��Mp�l6������	|��I3�O����2��X*�Z�	���R�����S�?�x<�>��9�v�
s�?x$x�ڢ)\þ%����权��K71%������s��m�4W�W��^�f�&�w�nk
x��i�9���N�0�}��Э��SU\��S}��/ �?��Tyȗ����         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/no_card.png-9ffac4d4c4ec80d305a331ec75530f0f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/no_card.png"
dest_files=[ "res://.import/no_card.png-9ffac4d4c4ec80d305a331ec75530f0f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Scripts/Ball.gdc"
         [remap]

path="res://Scripts/Card.gdc"
         [remap]

path="res://Scripts/Cell.gdc"
         [remap]

path="res://Scripts/Extractor.gdc"
    [remap]

path="res://Scripts/Pattern.gdc"
      [remap]

path="res://Scripts/Prizetable.gdc"
   �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name      
   VideoBingo     application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png  )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres            