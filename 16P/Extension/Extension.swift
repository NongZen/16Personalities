import SwiftUI

// Color(hex: "")
extension Color {
    init(hex: String) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
        print(cleanHexCode)
        var rgb: UInt64 = 0
        
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = Double((rgb >> 16) & 0xFF) / 255.0
        let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
        let blueValue = Double(rgb & 0xFF) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue)
    }
    
    static let purpleHouse = Color(hex: "#E7DFEA")
    static let purpleHouseHolder = Color(hex: "C2B5C9")
    static let purpleHouseText = Color(hex: "5B4C74")
    
    static let greenHouse = Color(hex: "#D6ECE3")
    static let greenHouseHolder = Color(hex: "B5C9B7")
    static let greenHouseText = Color(hex: "4C7455")
    
    static let blueHouse = Color(hex: "#D9EAF0")
    static let blueHouseHolder = Color(hex: "B5BEC9")
    static let blueHouseText = Color(hex: "4C5C74")
    
    static let yellowHouse = Color(hex: "#F9EED7")
    static let yellowHouseHolder = Color(hex: "C9C6B5")
    static let yellowHouseText = Color(hex: "746B4C")
}

struct qDivider: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.00755*width, y: 0.5*height))
        path.addLine(to: CGPoint(x: 0.99245*width, y: 0.5*height))
        return path
    }
}

extension Array where Element: Hashable {
    func removingDuplicates() -> [Element] {
        var addedDict = [Element: Bool]()

        return filter {
            addedDict.updateValue(true, forKey: $0) == nil
        }
    }

    mutating func removeDuplicates() {
        self = self.removingDuplicates()
    }
}
