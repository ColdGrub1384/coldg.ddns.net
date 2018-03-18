import Foundation

/// URL and its title.
struct URLForProject {
	var title: String
	var url: URL
}

/// Template class for a project.
class Project {

	/// Name of project.
	var name: String {
		return ""
	}

	/// Description of project.
	var description: String {
		return ""
	}

	/// URL for project.
	var urls: [URLForProject] {
		return []
	}

	/// Render the project as HTML.
	/// Do not override without calling the super function!
	func render() {
        
        "div".htm(["class='container'"]) {
            
            "br/".htm(single: true)
            
            "h2".htm() {
                print(self.name)
            }
            
            "p".htm() {
                print(self.description+"<br>")
                
                for url in self.urls {
                    "br".htm(single: true)
                    "a".htm(["href='\(url.url.absoluteString)'"]) {
                        print(url.title)
                    }
                }
            }
            
            "br/".htm(single: true)
        }
	}
}
