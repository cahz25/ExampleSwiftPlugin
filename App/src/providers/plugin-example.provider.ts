import { IonicNativePlugin } from '@ionic-native/core';

declare var cordova: any;

export class PluginExampleProvider {
  callPlugin() {
    cordova.plugins.example.coolMethod('Daniel por su culpa', (response: string) => {
      console.log('success', response);
    }, (error: any) => {
      console.log('error', error);
    });
  }
}
