import { Navigation } from 'react-native-navigation'

export const goToLocalization = () => Navigation.setRoot({
  root: {
    stack: {
      id: 'LocateId',
      children: [
        {
          component: {
            name: 'Localization',
          }
        }
    ],
    }
  }
})

export const goHome = () => Navigation.setRoot({
  root: {
    stack: {
      id: 'App',
      children: [
        {
          component: {
            name: 'Home',
          }
        }
    ],
    }
  }
})