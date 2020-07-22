//
//  CordovaPluginExample.swift
//  MyApp
//
//  Created by Augusto Hurtado on 21/07/20.
//

import Foundation

@objc(CordovaPluginExample)
class CordovaPluginExample: CDVPlugin {

    @objc(coolMethod:)
    func coolMethod(command: CDVInvokedUrlCommand) {
        var pluginResult = CDVPluginResult(status: .error)
        let echo: String? = command.arguments?[0] as? String

        let view = ExampleViewController()

        if echo != nil {
            view.labelFromHybrid = echo!
            pluginResult = CDVPluginResult(status: .ok, messageAs: echo!)
            self.viewController?.present(view, animated: true, completion: nil)
        }

        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
    }
}
