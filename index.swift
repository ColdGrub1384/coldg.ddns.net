
// MARK: - Head

"head".htm() {

	"meta".htm(["name=viewport", "content='width=device-width, initial-scale=1'"])
    "link".htm(["rel='stylesheet'", "href='style.css'"])
	"meta".htm(["charset='UTF-8'"])
	"title".htm() {
		print(GET["project"] ?? "ColdGrub1384")
	}
}

// MARK: Body

"body".htm() {
    
    print("<center>")
	
    "div".htm(["class='section'"]) {
        if GET["project"] == nil || GET["project"] == "" { // Show projects
            "div".htm(["class='container'", "onclick='showProjects()'"]) {
                
                "br/".htm(single: true)
                
                "center".htm() {
                    "h1".htm() {
                        print("My projects")
                    }
                    
                    "a".htm(["href='https://github.com/ColdGrub1384'"]) {
                        "img".htm(["src='octocat.png'"])
                        print("GitHub")
                    }
                    
                    for i in 1...3 {
                        "br/".htm(single: true)
                    }
                    
                    "a".htm(["onclick='clickProjects()'"]) {
                        print("Click to show more")
                    }
                }
                
                "br/".htm(single: true)
                "br/".htm(single: true)
            }
             
            "br/".htm(single: true)
            
            "div".htm(["id='projects'"]) {
                Pisth().render()
                "br/".htm(single: true)
                SwiftyWeb().render()
		"br/".htm(single: true)
		PisthAPT().render()
            }
        } else { // Show requested project
            guard let project = GET["project"] else {
                return
            }

             "div".htm(["class='container'", "onclick='window.location.href = \"?showProjects\"'"]) {

                "br/".htm(single: true)

                "center".htm() {
                    "h1".htm() {
                        print("My projects")
                    }

                    "a".htm(["href='https://github.com/ColdGrub1384'"]) {
                        "img".htm(["src='octocat.png'"])
                        print("GitHub")
                    }

                    for i in 1...3 {
                        "br/".htm(single: true)
                    }

                    "a".htm(["onclick='window.location.href = \"?showProjects\"'"]) {
                        print("Click to show more")
                    }
                }

                "br/".htm(single: true)
                "br/".htm(single: true)
            }

            "br/".htm(single: true)

            "div".htm(["id='projects'"]) {
                Pisth().render()
                "br/".htm(single: true)
                SwiftyWeb().render()
            }
            

            switch project {
            case "Pisth":
                Pisth().render(showDetails: true)
            case "SwiftyWeb":
                SwiftyWeb().render(showDetails: true)
	    case "Pisth APT":
		PisthAPT().render(showDetails: true)
            default:
                "h1".htm() {
                    print("Project not found!")
                }
            }
        }
    }
    
    print("</center>")
}

// MARK: - Script

"script".htm() {
    
    print("var projects = document.getElementById('projects');")
    print("projects.style.display = 'none';")
    
    print("function showProjects() {")
    print(" if (projects.style.display == 'none') {")
    print("  projects.style.display = 'block';")
    print(" } else {")
    print("  projects.style.display = 'none';")
    print(" }")
    print("}")

    if GET["showProjects"] != nil || GET["showProjects"] == "true" {
        print("showProjects()")
    }
}
