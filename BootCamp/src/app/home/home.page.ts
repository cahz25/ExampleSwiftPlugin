import { Component } from '@angular/core';
import { PluginExampleProvider } from '../providers/plugin-example.provider';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  constructor(private pluginExampleProvider: PluginExampleProvider) {}

  openPlugin() {
    this.pluginExampleProvider.callPlugin();
  }
}
