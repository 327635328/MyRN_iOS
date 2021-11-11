import React from 'react';
import {requireNativeComponent, UIManager,StyleSheet} from 'react-native';
import PropTypes from 'prop-types';
import * as ReactNative from "react-native";
const RNTTestView = requireNativeComponent('RNTTestView', NativeTestView);
const RATIOSCosts = UIManager.RNTTestView.Constants;

class NativeTestView extends React.PureComponent {


    callNativeMethod = () => {
        UIManager.dispatchViewManagerCommand(
            ReactNative.findNodeHandle(this),
            UIManager.getViewManagerConfig('RNTTestView').Commands
                .callNativeMethod,
            []
        );
    };

    _onChangeLittleColor = (event) => {
        if (!this.props.onChangeLittleColor) {
            return;
        }
        console.log(event.nativeEvent)
        // process raw event...
        this.props.onChangeLittleColor(event.nativeEvent);
    }



    render() {
        return <RNTTestView
            style={styles.defaultIOS}
            {...this.props}
            onChangeLittleColor={this._onChangeLittleColor}
        />;
    }
}

RNTTestView.propTypes = {
    zoomEnabled: PropTypes.bool,
    onChangeLittleColor: PropTypes.func,
}


const styles = StyleSheet.create({
    defaultIOS: {
        height: RATIOSCosts.ComponentHeight,
        width: RATIOSCosts.ComponentWidth,
        backgroundColor:RATIOSCosts.ComponentColor,
    },
})


export default NativeTestView;
