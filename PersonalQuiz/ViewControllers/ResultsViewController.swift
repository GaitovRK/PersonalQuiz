
import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var animalTypeLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var answers: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        let maxAnimal = getMaxAnimal()
        updateUI(with: maxAnimal)
    }
}

// MARK: - Private Methods
extension ResultsViewController {
    private func getMaxAnimal() -> AnimalType? {
        return Dictionary(grouping: answers, by: { $0.type })
            .sorted(by: {$0.value.count > $1.value.count})
            .first?.key
    }
    
    private func updateResult() {
    }
    
    private func updateUI(with animal: AnimalType?) {
        animalTypeLabel.text = "You are - \(animal?.rawValue ?? "🐶" )!"
        descriptionLabel.text = animal?.definition ?? ""
    }
}
