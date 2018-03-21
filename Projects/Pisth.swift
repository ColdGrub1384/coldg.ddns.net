import Foundation

class Pisth: Project {

	override var name: String {
		return "Pisth"
	}

	override var description: String {
		return "SSH and SFTP client for iOS."
	}

	override var urls: [URLForProject] {
		return [URLForProject(title: " App Store", url: URL(string:"https://itunes.apple.com/cl/app/pisth/id1331070425?l=en&mt=8")!), URLForProject(title: "<img src='octocat.png' width=50%> GitHub", url: URL(string: "https://github.com/ColdGrub1384/Pisth")!)]
	}
    
    override func details() {
        "img".htm(["src='https://pisth.github.io/screenshots.png'", "width=90%"])
    }

}
