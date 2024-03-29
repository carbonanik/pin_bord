
import 'package:flutter/material.dart';

const idealDesktopWidth = 1920.0;
const idealDesktopHeight = 1080.0;

const idealTabletWidth = 1024.0;
const idealTabletHeight = 768.0;

const idealMobileWidth = 375.0;
const idealMobileHeight = 812.0;

extension ContextExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;

  // bool get isDesktop => width > 1200;

  bool get isTablet => width > 600 && width < 1200;

  bool get isMobile => width < 600;

  double adaptiveHeight(double value, double idealHeight) {
    return height / (idealHeight / value);
  }

  double adaptiveWidth(double value, double idealWidth) {
    return width / (idealWidth / value);
  }

  double adaptiveResponsiveHeight({
    required double desktop,
    double? tablet,
    double? mobile,
  }) {
    final adaptiveDesktop = adaptiveHeight(desktop, idealDesktopHeight);
    final adaptiveTablet = adaptiveHeight(tablet ?? desktop / 1.6, idealTabletHeight);
    final adaptiveMobile = adaptiveHeight(mobile ?? desktop / 2, idealMobileHeight);
    if (isMobile) return adaptiveMobile;
    if (isTablet) return adaptiveTablet;
    return adaptiveDesktop;
  }

  double adaptiveResponsiveWidth({
    required double desktop,
    double? tablet,
    double? mobile,
  }) {
    final adaptiveDesktop = adaptiveWidth(desktop, idealDesktopWidth);
    final adaptiveTablet = adaptiveWidth(tablet ?? desktop / 1.6, idealTabletWidth);
    final adaptiveMobile = adaptiveWidth(mobile ?? desktop / 2, idealMobileWidth);
    if (isMobile) return adaptiveMobile;
    if (isTablet) return adaptiveTablet;
    return adaptiveDesktop;
  }

  double responsiveSize({
    required double desktop,
    double? tablet,
    double? mobile,
  }) {
    if (isMobile) return mobile ?? desktop / 2;
    if (isTablet) return tablet ?? desktop / 1.6;
    if (isTablet) return desktop;
    return desktop;
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    required this.mobileLayout,
    this.tabletLayout,
    required this.desktopLayout,
    super.key,
  });

  final Widget mobileLayout;
  final Widget? tabletLayout;
  final Widget desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileLayout;
        } else if (constraints.maxWidth < 1200) {
          return tabletLayout ?? desktopLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
