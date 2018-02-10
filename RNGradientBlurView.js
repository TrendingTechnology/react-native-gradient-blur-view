import React, { Component } from "react";
import { StyleSheet, ViewPropTypes, Platform, View } from "react-native";
import PropTypes from "prop-types";

import { requireNativeComponent } from "react-native";

class RNGradientBlurView extends Component {
  render() {
    return <GradientBlueView style={this.props.style}
        firstColor={this.props.firstColor}
        secondColor={this.props.secondColor}
        angle={this.props.angle}
        colorRatio={this.props.colorRatio}
        fadeIntensity={this.props.fadeIntensity}
        blurOpacity={this.props.blurOpacity}
    ></GradientBlueView>
  }
}

RNGradientBlurView.Shapes = {
}

RNGradientBlurView.propTypes = {
  ...ViewPropTypes,

  firstColor: PropTypes.string,
  secondColor: PropTypes.string,
  angle: PropTypes.number,
  colorRatio: PropTypes.number,
  fadeIntensity: PropTypes.number,
  blurOpacity: PropTypes.number
};

RNGradientBlurView.defaultProps = {
  firstColor: "#c8ffef",
  secondColor: "#9ce4fd",
  angle: 45,
  colorRatio: 0.5,
  fadeIntensity: 1,
  blurOpacity: 0.5
};

const GradientBlueView = requireNativeComponent("RNGradientBlurView", RNGradientBlurView, {
  nativeOnly: { }
})

export default RNGradientBlurView
