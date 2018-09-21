import Foundation

class Pyto: Project {

    override var name: String {
        return "Pyto"
    }

    override var description: String {
        return "Python IDE for iOS"
    }

    override var urls: [URLForProject] {
        return [URLForProject(title: "  App Store", url: URL(string:"https://itunes.apple.com/us/app/pyto-python-ide/id1436650069?l=fr&ls=1&mt=8")!), URLForProject(title: "<img src='octocat.png' width=50> GitHub", url: URL(string:"https://github.com/ColdGrub1384/Pyto")!)]
    }

    override func details() {

        "iframe".htm(["src='https://coldgrub1384.github.io/Pyto'", "width=100%", "height=100%", "frameBorder=0", "style='border-radius:25px'"])
    }

}
