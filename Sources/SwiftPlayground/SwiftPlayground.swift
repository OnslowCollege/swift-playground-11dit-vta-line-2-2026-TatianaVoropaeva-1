// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        // Constants

        /// The max hours of work time.
        let maxHours: Double = 20.00

        /// The minimum hours of work time.
        let minHours: Double = 1.00

        /// The minimum wage for youths.
        let youthMinimumWage: Double = 18.80

        /// The minimum wage for adults.
        let adultMinimumWage: Double = 23.50

        /// The number of tax for the calculation.
        let tax: Double = 0.15

        /// The minimum cost per week on an expense.
        let minimumCost: Double = 0.00

        // Variables

        /// The list of the users expenses names. It is empty because the users Input will fill it up.
        var expensesName: [String] = []

        /// The list of the users cost for those expenses. It is empty because the users Input will fill it up.
        var expensesMoney: [Double] = []

        /// The number of hours the user spent working this week.
        var hoursSpent: Double = 0.00

        /// The number of the users hourly rate.
        var hourlyRate: Double = 0.00

        /// The number of money the user earns weekly.
        var weeklyEarning: Double = 0.00

        /// How much money is subtracted from the users weeklyEarning because of the tax.
        var incomeTaxed: Double = 0.00

        /// The variable to start the while loop that is gathering user expenses information. The 'Bool' means that askingExpenses always stays either true or false.
        var askingExpenses: Bool = true

        /// The variable to start the while loop that is asking how many hours the user has spent working. The 'Bool' means that askingHours always stays either true or false.
        var askingHours: Bool = true

        /// The variable to start the while loop that is asking how much the users hourly rate is. The 'Bool' means that askingRate always stays either true or false.
        var askingRate: Bool = true

        /// The variable to start the while loop that is asking how much is the cost of the expenses per week. The 'Bool' means that askingCost always stays either true or false.
        var askingCost: Bool = true

        // The title of my Assesment.
        print("Welcome to Rayan's Personal Finances Tracker")

        // Asks how many hours the user worked this week.
        while askingHours {
            print("Enter your work hours this week from \(minHours) to \(maxHours):")
            if let hourInput = readLine(),
                let hours: Double = Double(hourInput)
            {
                if hours <= maxHours && hours >= minHours {
                    hoursSpent += hours
                    askingHours = false
                    // Else statement for if the user types something that isn't in the boundaries
                } else {
                    print("Enter a valid integer from \(minHours) to \(maxHours)")
                }
                // Else statement for if the user types something that isn't a Double.
            } else {
                print("Enter a valid integer from \(minHours) to \(maxHours)")
            }
        }

        while askingRate {
            print("Enter your hourly rate:")
            if let rateInput = readLine(),
                let rate: Double = Double(rateInput)
            {
                if rate <= adultMinimumWage && rate >= youthMinimumWage {
                    hourlyRate += rate
                    weeklyEarning = (rate * hoursSpent)
                    askingRate = false
                    // Else statement for if the user types something that isn't in the boudaries
                } else {
                    print("Enter a valid Double from \(youthMinimumWage) to \(adultMinimumWage)")
                }
                // Else statement for if the user types something that isn't a Double.
            } else {
                print("Enter a valid Double from \(youthMinimumWage) to \(adultMinimumWage)")
            }
        }
        // Prints the weeklyEarning.
        print("You earn $\(weeklyEarning) per week before tax.")

        // Calculates how much needs to be subtracted from the weeklyEarning for the tax.
        incomeTaxed = (weeklyEarning * tax)

        // Prints how much is subtracted because of the tax.
        print("You pay $\(incomeTaxed) in income tax")

        // Calculates the final total after tax.
        weeklyEarning = (weeklyEarning - incomeTaxed)

        // Prints the final total after tax.-
        print("You earn $\(weeklyEarning) after tax TOTAL.")

        // Gathering the user expenses information.
        while askingExpenses {
            print("Enter a name for your expense:")
            if let nameInput: String = readLine() {
                        expensesName.append(nameInput)
                    askingExpenses = false
                // Else statement for if the user types something that isn't a String.
            } else {
                print("Enter a valid expense name:")
            } 

        
        }

        // Asks the user how much the expense cost them per week
        while askingCost {
            print("Enter \(expensesName) cost per week:")
            if let costInput = readLine(),
                let cost: Double = Double(costInput)
            {
                if cost >= minimumCost {
                    expensesMoney.append(cost)
                    askingCost = false
                    // Else statement for if the user types something that isn't in the boundary.
                } else {
                    print("Enter a valid Double:")
                }
                // Else statement for if the user types something that isn't a Double.
            } else {
                print("Enter a valid Double:")
            }
             // Asks the user if they want to add another expense with a 'y' or 'n' answer.
            print("Add another expense? (y/n):")
                    let moreExpenses = readLine()
                    if moreExpenses == "y" {
                        askingExpenses = true
                        askingCost = true
                    } else if moreExpenses == "n" {
                        askingCost = false
                        askingExpenses = false
                    } else {
                        print("Enter a valid answer (y/n)")
                        askingCost = true
                        askingExpenses = true
                        
                    }

        }

        print(weeklyEarning)
        for expense in expensesMoney {
            for name in expensesName {
                print("\(expensesMoney[0]) for \(expensesName[0])")
            }
        }
        




    }
}
