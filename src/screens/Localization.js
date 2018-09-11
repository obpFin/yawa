import React from 'react'
import {
  View,
  Text,
  StyleSheet,
  AsyncStorage
} from 'react-native'

import { goToLocalization, goHome } from './navigation'

import { USER_LOCATION } from './config'

export default class Localization extends React.Component {
  async componentDidMount() {
    try {
      const userLocation = await AsyncStorage.getItem(USER_LOCATION)
      console.log('location: ', userLocation)
      if (userLocation) {
        goHome()
      } else {
        // todo: locate user
      }
    } catch (err) {
      console.log('error: ', err)
    }
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