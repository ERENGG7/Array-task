import Foundation

struct ConstValues{
    static let readCountMessage = "Enter items count: "
    static let invalidInputMessage = "Invalid input"
    static let enterItemMessage = "Enter item into list: "
    static let emptyItemsListMessage = "Items list is empty"

    private init (){}
}

func readNumber(_ readMessage: String) -> UInt16{

    while true{
          print(readMessage,terminator: "")
          guard let count = UInt16(readLine() ?? "") else{
            print(ConstValues.invalidInputMessage)
            continue
        }
        return count
    }
}
func main() -> Void{

    var items: [String] = []
    let countOfElements = readNumber(ConstValues.readCountMessage)

    mainLoop: for _ in  0..<countOfElements{

        while true{
            print(ConstValues.enterItemMessage,terminator: "")
            guard let item = readLine(), !item.isEmpty else{
                print(ConstValues.invalidInputMessage)
                continue
            }
            if item == "end" { 
               break mainLoop
            }
            items.append(item)
            break
        }
    }

    if items.isEmpty{
        print(ConstValues.emptyItemsListMessage)
    }

    for i in 0..<items.count {
        print("Item \(i+1): \(items[i])")
    }
}

main()