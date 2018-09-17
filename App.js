import React from 'react';

import { StyleSheet, View} from 'react-native';

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
    const location = { latitude: this.state.latitude, longitude: this.state.longitude }
    return (
      <View style={styles.container}>
      {location.longitude ? 
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
