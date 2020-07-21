//
//  CordovaPluginExample.swift
//  MyApp
//
//  Created by Augusto Hurtado on 21/07/20.
//

import Foundation

@objc(CordovaPluginExample) class CordovaPluginExample : CDVPlugin {

    @objc(coolMethod:)
    func coolMethod(command: CDVInvokedUrlCommand) {
        /// Respuesta del plugin para la parte hibrida
        var pluginResult = CDVPluginResult(
            status: CDVCommandStatus_ERROR
        )
        pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: "Hoola")
        self.commandDelegate!.send(pluginResult, callbackId: command.callbackId)
    }

}
