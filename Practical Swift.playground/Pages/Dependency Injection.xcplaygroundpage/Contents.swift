import UIKit
import Foundation

//: ## Dependency Injection

//: #### Without Dependency Injection

class Service {
    func doSomething() {
        print("hello")
    }
}

class Client {
    let service: Service
    
    init() {
        service = Service()
    }
    
    func startSomething() {
        service.doSomething()
    }
}

let client = Client()
client.startSomething()

//: #### With Dependency Injection

class DIClient {
    var service: Service
    
    init(service: Service = Service()) {
        self.service = service
    }
    
    func startSomething() {
        service.doSomething()
    }
}

let diClient = DIClient()
diClient.startSomething()

//: #### Inversion of Control Container

class Container {
    typealias Closure = (Void) -> AnyObject
    var registry: [String: Closure] = [:]
    
    func register(name: String, for type: @escaping Closure) {
        registry[name] = type
    }
    
    func resolve(name: String) -> AnyObject? {
        return registry[name]?()
    }
}

let container = Container()
container.register(name: "Service", for: {
    Service()
})
container.register(name: "Client", for: {
    DIClient(service: container.resolve(name: "Service") as! Service)
})
let result = container.resolve(name: "Client") as? DIClient
result?.startSomething()



class MyModel {
    var date: Date = Date()
}

class ViewModel {
    var model: MyModel
    var dateFormatter: DateFormatter
    
    init(model: MyModel) {
        self.model = model
        self.dateFormatter = DateFormatter()
        self.dateFormatter.dateStyle = .short
    }
    
    var modelDate: String {
        return dateFormatter.string(from: model.date)
    }
}

class MyViewController: UIViewController {
    var viewModel: ViewModel?
    var model = MyModel()
    
    @IBOutlet var dateLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel(model: model)
    }
    
    @IBAction func setDate() {
        dateLabel?.text = viewModel?.modelDate
    }
}

