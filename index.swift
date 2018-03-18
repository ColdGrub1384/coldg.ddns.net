
// MARK: - Head

"head".htm() {

	"meta".htm(["name=viewport", "content='width=device-width, initial-scale=1'"])
    "link".htm(["rel='stylesheet'", "href='style.css'"])
	"meta".htm(["charset='UTF-8'"])
	"title".htm() {
		print("ColdGrub1384")
	}
}

// MARK: Body

"body".htm() {
    
    print("<center>")
	
    "div".htm(["class='section'"]) {
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
}
