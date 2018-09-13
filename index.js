import { Navigation } from 'react-native-navigation';
import {Platform} from 'react-native';

import { constants } from './src/utils/constants';
import { registerScreens } from './src/screens';

registerScreens(); // this is where you register all of your app's screens

const tabs = [
  {
    label: 'Yawa',
    screen: 'Home', // this is a registered name for a screen
    // icon: require('../img/one.png'),
    // selectedIcon: require('../img/one_selected.png'), // iOS only
    title: 'Yawa'
  }
]

// start the app
Navigation.startTabBasedApp({
  tabs,
  animationType: Platform.OS === 'ios' ? 'slide-down' : 'fade',
  tabsStyle: {
    tabBarBackgroundColor: constants['COLOR_BASE_DARK_BLUE'],
    tabBarButtonColor: '#ffffff',
    tabBarSelectedButtonColor: constants['COLOR_BASE_LIGHT'],
    tabFontFamily: 'BioRhyme-Bold',
  },
  appStyle: {
    tabBarBackgroundColor: constants['COLOR_BASE_SAND'],
    navBarButtonColor: '#ffffff',
    tabBarButtonColor: '#ffffff',
    navBarTextColor: constants['COLOR_BASE_DARK_BLUE'],
    tabBarSelectedButtonColor: '#ff505c',
    navigationBarColor: constants['COLOR_BASE_SAND'],
    navBarBackgroundColor: constants['COLOR_BASE_SAND'],
    statusBarColor: '#002b4c',
    tabFontFamily: 'BioRhyme-Bold',
  }
});