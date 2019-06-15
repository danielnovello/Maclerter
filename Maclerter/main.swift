//
//  main.swift
//  Maclerter
//
//  Created by Daniel Novello on 2019/06/12.
//  Copyright © 2019 Daniel Novello. All rights reserved.
//

import Foundation
import AppKit

func run() {
    
    if CommandLine.argc < 2 {
        print("No arguments are passed. Please give me something to do")
        print("Type 'maclerter -help' for more information")
        let firstArgument = CommandLine.arguments[0]
        } else {
                //print("Arguments are passed.")
                let arguments = CommandLine.arguments[1]
                for argument in arguments {
                    if CommandLine.arguments[1] == "-help" {
                        print("Usage:")
                        print(" -help")
                        print(" -title 'VALUE'")
                        print(" -subtitle 'VALUE'")
                        print(" -appicon URL://VALUE")
                        print(" Example: maclerter -title 'New Alert!' -subtitle 'You have a new update pending' -appicon 'http://www.test.com/test.png'")
                        return
                    } else {
                        //print("Displayed help files")
                        }
                    }
                }
    
    if CommandLine.argc < 2 {
        let firstArgument = CommandLine.arguments[0]
    } else {
        if CommandLine.arguments[1] != "-help -title" &&  CommandLine.arguments[3] != "-subtitle" &&  CommandLine.arguments[5] != "-appicon"{
            print("Not a valid argument. Type 'maclerter -help' for more information ")
            return
        }
        let arguments = CommandLine.arguments[1]
        if CommandLine.arguments[1] == "-title" && CommandLine.arguments[3] == "-subtitle" {
            //print("This is a title and subtitle argument")
            func dialogOKCancel(title: String, subtitle: String, appicon: String) -> Bool
            {
                let alert = NSAlert()
                let image = NSImage(byReferencing:NSURL(string: CommandLine.arguments[6])! as URL)
                let imageView = NSImageView()
                imageView.image = image
                alert.icon = image
                alert.messageText = CommandLine.arguments[2]
                alert.informativeText = CommandLine.arguments[4]
                alert.alertStyle = NSAlert.Style.warning
                //alert.showsHelp = true
                alert.addButton(withTitle: "Dismiss")
                return alert.runModal() == NSApplication.ModalResponse.alertFirstButtonReturn
            }
            _ = dialogOKCancel(title: "", subtitle: "", appicon: "")
        }else {
        
        }
    }
}
run()

