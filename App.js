import React from 'react';

import { StyleSheet, View, AsyncStorage} from 'react-native';

import { USER_LOCATION } from '../config'
import Home from './src/screens/Home';
import Localization from './src/screens/Localization';

import locateUser from '../utils/geolocation'

export default class App extends React.Component {

  state = {
    latitude: null,
    longitude: null,
    error: null,
  };

  render() {
    return (
      <View style={styles.container}>
      {this.userLocation ? 
        <Home/>
        :
        <Localization locateUser={locateUser}/>
      }
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
