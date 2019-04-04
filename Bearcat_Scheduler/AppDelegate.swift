
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let APP_ID = "5DA6DB45-BEC7-F288-FFB5-5034129EA300"
    let API_KEY = "17D7C210-0F91-D234-FF7D-A39442DA2800"
    
    var backendless = Backendless.sharedInstance()
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        backendless!.initApp(APP_ID, apiKey:API_KEY)
        return true
    }
}

