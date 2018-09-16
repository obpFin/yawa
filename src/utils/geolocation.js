export const locateUser = () => {
  return navigator.geolocation.getCurrentPosition(
    position => ({
        latitude: position.coords.latitude,
        longitude: position.coords.longitude,
        error: null,
    }),
    error => ({ error: error.message }),
    { enableHighAccuracy: true, timeout: 20000, maximumAge: 1000 },
  )
}