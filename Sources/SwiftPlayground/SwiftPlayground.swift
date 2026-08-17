// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        // Prints the welcome statement.
        print("welcome to Sleep Tracker.")

        /// Arrasy for all the days of the week.
        let daysOfWeek: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

        /// Collects total and average hours slept.
        var totalHours: Int = 0
        var averageHours: Int = 0

        /// Starts the while loop.
        var isRunning: Bool = true

        while isRunning {
            print("Let's start be recording your sleep.")

            // Printing days of the week and collecting number of hours slept.
            for day in daysOfWeek {
                print("How many howrs did you sleep on \(day)?")
                let hoursSlept: Int = Int(readLine()!)!
                totalHours += hoursSlept
        }

        /// Calculates average hours.
        averageHours = totalHours / 7
        // Prints the total and average hours.
        print("You got total of \(totalHours) hours of sleep this week, which averages to \(averageHours) per day.")

        // Checks the average hours and gives sleep rating.
        if averageHours >= 8 {
            print("You have met the recommended 8 hours of sleep per night this week.")
            print("Your sleep rating is: Healthy")
        } else if averageHours >= 6 {
            print("You have not met the recommended 8 hours of sleep per night this week.")
            print("Your sleep rating is: Ok")
        } else {
            print("You have not met the recommended 8 hours of sleep per night this week.")
            print("Your sleep rating is: Poor")
        }
    }
}
