import React from 'react'
import {
  View,
  Text,
  StyleSheet,
} from 'react-native'

export default class Localization extends React.Component {

  constructor(props) {
    super(props);

    this.state = {
      latitude: null,
      longitude: null,
      error: null,
    };
  }

  componentDidMount() {
    this.props.locateUser()
  }

  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.locate}>Locating</Text>
      </View>
    )
  }
}

const styles = StyleSheet.create({
  locate: {
    fontSize: 28
  },
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center'
  }
})