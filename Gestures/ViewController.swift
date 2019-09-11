import UIKit

class ViewController: UIViewController {
    
    // MARK: Views
    
    private let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.setTitleColor(.lightGray, for: .highlighted)
        return button
    }()
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Gestures"
        view.backgroundColor = .white
        
        view.addSubview(button)
        
        setupButtonConstraint()
        setupLongPressGesture()
    }
    
    // MARK: Setup Constraints
    
    private func setupButtonConstraint() {
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    // MARK: Gestures
    
    private func setupLongPressGesture() {
        let longPressGesture = UILongPressGestureRecognizer(
            target: self,
            action: #selector(onLongPressed)
        )
        button.addGestureRecognizer(longPressGesture)
    }
    
    // MARK: Actions
    
    @objc func onLongPressed(sender: Any) {
        print("long pressed")
    }
    
}

