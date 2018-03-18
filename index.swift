
// MARK: - Head

"head".htm() {

	"meta".htm(["name=viewport", "content='width=device-width, initial-scale=1'"])

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

// MARK: - Style

"style".htm() {
	print("* {")
    print(" font-family: 'Helvetica', 'Arial', sans-serif;")
	print(" color: white;")
	print("}")

	print("a:link {")
	print(" color: rgb(0, 122, 255);")
	print(" text-decoration: none;")
	print("}")

	print("a:visited {")
	print(" color: rgb(0, 122, 255);")
	print(" text-decoration: none;")
	print("}")

	print("a img {")
  	print(" height: 1em;")
  	print(" width: auto;")
	print("}")

	print("center {")
	print(" background-color: transparent;")
	print("}")

	print("body {")
	print(" background-image: url('background.jpg');")
	print(" background-position: center;")
	print("}")
    
	print(".container {")
	print(" background-color: rgba(0,0,0,0.5);")
	print(" border-radius: 25px")
	print("}")
    
    print(".section {")
    print(" width: 50%;")
    print("}")
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
