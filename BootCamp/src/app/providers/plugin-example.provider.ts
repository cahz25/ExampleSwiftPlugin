import { IonicNativePlugin } from '@ionic-native/core';

declare var cordova: any;

export class PluginExampleProvider implements IonicNativePlugin {
  callPlugin() {
    debugger;
    cordova.plugins.example.coolMethod('Hola', (response: any) => {
      console.log('Plugin', response);
    }, (error: any) => {
      console.log('Plugin', error);
    });
  }
}
