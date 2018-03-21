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
    
    /// Details.
    func details() {
        
    }

	/// Render the project as HTML.
	/// Do not override without calling the super function!
    ///
    /// - Parameters:
    ///     - showDetails: If print the details and show the page in full screen.
    func render(showDetails: Bool = false) {
        
        var style = ""
        
        if showDetails {
            style = "width: 100%;"
        }
        
        "div".htm(["class='container'", "onclick='window.location.href = \"?project=\(name.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")\"'", "style='\(style)'"]) {
            
            "br/".htm(single: true)
            
            "center".htm() {
                "h2".htm() {
                    print(self.name)
                }
                
                "p".htm() {
                    print(self.description+"<br>")
                }
                
                if showDetails {
                    self.details()
                }
                
                "br".htm(single: true)
                
                for url in self.urls {
                    "br/".htm(single: true)
                    "a".htm(["href='\(url.url.absoluteString)'"]) {
                        print(url.title)
                    }
                }
            }
            
            "br/".htm(single: true)
        }
	}
}
