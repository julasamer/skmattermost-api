import { electrodeBridge } from 'react-native-electrode-bridge';
import CloseEvents from './CloseEvents';


const EVENTS = new CloseEvents(electrodeBridge);

export function events() {
  return EVENTS;
}


export default ({events});

