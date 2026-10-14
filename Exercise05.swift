import Foundation

func describeTemperature(_ temperature: Int) {
    switch temperature {
    case ..<0:
        print("\(temperature)°C -> Freezing")
    case 0...15:
        print("\(temperature)°C -> Cold")
    case 16...25:
        print("\(temperature)°C -> Moderate")
    case 26...35:
        print("\(temperature)°C -> Warm")
    default:
        print("\(temperature)°C -> Hot")
    }
}

// Activity 5: Testing at least three temperatures
describeTemperature(-5)
describeTemperature(12)
describeTemperature(22)
describeTemperature(27)
describeTemperature(40)