import Foundation

class SwiftyWeb: Project {

	override var name: String {
		return "SwiftyWeb"
	}

	override var description: String {
		return "Tool for doing CGIs with Swift."
	}
    
    override func details() {
        print("With SwiftyWeb, you can code HTML with a Swifty syntax and do server side things.")
    }

	override var urls: [URLForProject] {
		return [URLForProject(title: "<img src='octocat.png'> GitHub", url: URL(string: "https://github.com/ColdGrub1384/SwiftyWeb")!)]
	}

}
