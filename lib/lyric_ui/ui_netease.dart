import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lyric_custom_ui/lyric_ui/lyric_ui.dart';

///Sample Netease style
///should be extends LyricUI implementation your own UI.
///this property only for change UI,if not demand just only overwrite methods.
class UINetease extends LyricUI {
  double defaultSize;
  double defaultExtSize;
  double otherMainSize;
  double bias;
  double lineGap;
  double inlineGap;
  LyricAlign lyricAlign;
  LyricBaseLine lyricBaseLine;
  bool highlight;
  HighlightDirection highlightDirection;
  TextStyle playingExtTextStyle;
  TextStyle otherExtTextStyle;
  TextStyle playingMainTextStyle;
  TextStyle otherMainTextStyle;
  Color highlightColor;

  UINetease({
    this.defaultSize = 18,
    this.defaultExtSize = 14,
    this.otherMainSize = 16,
    this.bias = 0.5,
    this.lineGap = 25,
    this.inlineGap = 25,
    this.lyricAlign = LyricAlign.CENTER,
    this.lyricBaseLine = LyricBaseLine.CENTER,
    this.highlight = true,
    this.highlightDirection = HighlightDirection.LTR,
    required this.otherMainTextStyle,
    required this.playingMainTextStyle,
    required this.otherExtTextStyle,
    required this.playingExtTextStyle,
    required this.highlightColor,
  });

  UINetease.clone(UINetease uiNetease)
      : this(
          defaultSize: uiNetease.defaultSize,
          defaultExtSize: uiNetease.defaultExtSize,
          otherMainSize: uiNetease.otherMainSize,
          bias: uiNetease.bias,
          lineGap: uiNetease.lineGap,
          inlineGap: uiNetease.inlineGap,
          lyricAlign: uiNetease.lyricAlign,
          lyricBaseLine: uiNetease.lyricBaseLine,
          highlight: uiNetease.highlight,
          highlightDirection: uiNetease.highlightDirection,
          otherMainTextStyle: uiNetease.otherMainTextStyle,
          playingMainTextStyle: uiNetease.playingMainTextStyle,
          otherExtTextStyle: uiNetease.otherExtTextStyle,
          playingExtTextStyle: uiNetease.playingExtTextStyle,
          highlightColor: uiNetease.highlightColor,
        );

  @override
  TextStyle getPlayingExtTextStyle() => playingExtTextStyle;

  Color getHighlightColor() => highlightColor;

  @override
  TextStyle getOtherExtTextStyle() => otherExtTextStyle;

  @override
  TextStyle getOtherMainTextStyle() => otherMainTextStyle;

  @override
  TextStyle getPlayingMainTextStyle() => playingMainTextStyle;

  @override
  double getInlineSpace() => inlineGap;

  @override
  double getLineSpace() => lineGap;

  @override
  double getPlayingLineBias() => bias;

  @override
  LyricAlign getLyricHorizontalAlign() => lyricAlign;

  @override
  LyricBaseLine getBiasBaseLine() => lyricBaseLine;

  @override
  bool enableHighlight() => highlight;

  @override
  HighlightDirection getHighlightDirection() => highlightDirection;
}
