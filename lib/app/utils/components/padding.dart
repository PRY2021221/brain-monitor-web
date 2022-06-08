import 'package:flutter/material.dart';

mixin CustomPadding {
  static const EdgeInsetsGeometry zero = EdgeInsets.zero;

  static EdgeInsetsGeometry only(
      {double top = 0,
      double right = 0,
      double bottom = 0,
      double left = 0,
      bool withResponsive = true,}) {
    if (withResponsive) {
      return EdgeInsets.only(
        left: left,
        right: right,
        top: top,
        bottom: bottom,
      );
    } else {
      return EdgeInsets.only(
          left: left, right: right, top: top, bottom: bottom,);
    }
  }

  static EdgeInsetsGeometry fromLTRB(
      double left, double top, double right, double bottom,
      {bool withResponsive = true,}) {
    return CustomPadding.only(
        bottom: bottom,
        top: top,
        right: right,
        left: left,
        withResponsive: withResponsive,);
  }

  static EdgeInsetsGeometry all(double spacing, {bool withResponsive = true}) {
    return CustomPadding.only(
        bottom: spacing,
        top: spacing,
        right: spacing,
        left: spacing,
        withResponsive: withResponsive,);
  }

  static EdgeInsetsGeometry left(double spacing, {bool withResponsive = true}) {
    return CustomPadding.only(left: spacing, withResponsive: withResponsive);
  }

  static EdgeInsetsGeometry top(double spacing, {bool withResponsive = true}) {
    return CustomPadding.only(top: spacing, withResponsive: withResponsive);
  }

  static EdgeInsetsGeometry right(double spacing,
      {bool withResponsive = true,}) {
    return CustomPadding.only(right: spacing, withResponsive: withResponsive);
  }

  static EdgeInsetsGeometry bottom(double spacing,
      {bool withResponsive = true,}) {
    return CustomPadding.only(bottom: spacing, withResponsive: withResponsive);
  }

  static EdgeInsetsGeometry horizontal(double spacing,
      {bool withResponsive = true,}) {
    return CustomPadding.only(
        left: spacing, right: spacing, withResponsive: withResponsive,);
  }

  static EdgeInsetsGeometry vertical(double spacing,
      {bool withResponsive = true,}) {
    return CustomPadding.only(
        top: spacing, bottom: spacing, withResponsive: withResponsive,);
  }

  static EdgeInsetsGeometry symmetric(
      {double vertical = 0,
      double horizontal = 0,
      bool withResponsive = true,}) {
    return CustomPadding.only(
        top: vertical,
        right: horizontal,
        left: horizontal,
        bottom: vertical,
        withResponsive: withResponsive,);
  }
}