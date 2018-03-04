import Foundation

class SwiftyWeb: Project {

	override var name: String {
		return "SwiftyWeb"
	}

	override var description: String {
		return "Tool for doing CGIs with Swift."
	}

	override var urls: [URLForProject] {
		return [URLForProject(title: "<img src='http://coldg.ddns.net/octocat.png'> GitHub", url: URL(string: "https://github.com/ColdGrub1384/SwiftyWeb")!)]
	}

}