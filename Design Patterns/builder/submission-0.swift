class Meal {
    private var cost: Double = 0.0
    private var takeOut: Bool = false
    private var main: String? = nil
    private var drink: String? = nil

    func getCost() -> Double { return cost }
    func getTakeOut() -> Bool { return takeOut }
    func getMain() -> String? { return main }
    func getDrink() -> String? { return drink }

    func setCost(_ cost: Double) { self.cost = cost }
    func setTakeOut(_ takeOut: Bool) { self.takeOut = takeOut }
    func setMain(_ main: String) { self.main = main }
    func setDrink(_ drink: String) { self.drink = drink }
}

class MealBuilder {

    private let meal: Meal = Meal() 

    func addCost(_ cost: Double) -> MealBuilder {
        meal.setCost(cost)
        return self 
    }

    func addTakeOut(_ takeOut: Bool) -> MealBuilder {
        meal.setTakeOut(takeOut) 
        return self 
    }

    func addMainCourse(_ main: String) -> MealBuilder {
        meal.setMain(main)
        return self 
    }

    func addDrink(_ drink: String) -> MealBuilder {
        meal.setDrink(drink)
        return self 
    }

    func build() -> Meal {
        return meal 
    }
}
