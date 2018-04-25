import Foundation

class PisthAPT: Project {

        override var name: String {
                return "Pisth APT"
        }

        override var description: String {
                return "Aptitude GUI package manager for iOS."
        }

        override var urls: [URLForProject] {
                return [URLForProject(title: " App Store", url: URL(string:"https://itunes.apple.com/us/app/pisth-apt/id1369552277?ls=1&mt=8")!), URLForProject(title: "<img src='octocat.png' width=50px</img> GitHub", url: URL(string:"https://github.com/ColdGrub1384/Pisth#pisth-apt")!)]
        }

    override func details() {

        "iframe".htm(["src='https://pisth.github.io/apt'", "width=100%", "height=100%", "frameBorder=0", "style='border-radius:25px'"])
    }

}
