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
    
    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Label"
        label.textColor = .black
        label.isUserInteractionEnabled = true
        return label
    }()
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Gestures"
        view.backgroundColor = .white
        
        view.addSubview(button)
        view.addSubview(label)
        
        setupButtonConstraint()
        setupLabelConstraint()
        
        setupButtonLongPressGesture()
        setupLabelLongPressGesture()
    }
    
    // MARK: Setup Constraints
    
    private func setupButtonConstraint() {
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func setupLabelConstraint() {
        label.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 40).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    // MARK: Gestures
    
    private func setupButtonLongPressGesture() {
        let longPressGesture = UILongPressGestureRecognizer(
            target: self,
            action: #selector(buttonOnLongPressed)
        )
        
        button.addGestureRecognizer(longPressGesture)
    }
    
    private func setupLabelLongPressGesture() {
        let longPressGesture = UILongPressGestureRecognizer(
            target: self,
            action: #selector(labelOnLongPressed)
        )

        label.addGestureRecognizer(longPressGesture)
    }
    
    // MARK: Actions
    
    @objc func buttonOnLongPressed(sender: Any) {
        print("button long pressed")
    }
    
    @objc func labelOnLongPressed(sender: Any) {
        print("label long pressed")
    }
    
}

