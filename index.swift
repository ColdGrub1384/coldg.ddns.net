"center".htm(single: true)

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
	"div".htm(["class='container'"]) {
        
        "br/".htm(single: true)
        
        "h1".htm() {
            print("My projects")
        }
        
        "a".htm(["href='https://github.com/ColdGrub1384'"]) {
            "img".htm(["src='octocat.png'"])
            print("GitHub")
        }
        
        "br/".htm(single: true)
        "br/".htm(single: true)
	}
    
    "br/".htm(single: true)
    
    Pisth().render()
    "br/".htm(single: true)
    SwiftyWeb().render()
}

"/center".htm(single: true)


// MARK: - Style

"style".htm() {
	print("* {")
    print("font-family: 'Helvetica', 'Arial', sans-serif;")
	print("color: white;")
	print("}")

	print("a:link {")
	print("color: rgb(0, 122, 255);")
	print("text-decoration: none;")
	print("}")

	print("a:visited {")
	print("color: rgb(0, 122, 255);")
	print("text-decoration: none;")
	print("}")

	print("a img {")
  	print("height: 1em;")
  	print("width: auto;")
	print("}")

	print("center {")
	print("background-color: transparent;")
	print("}")

	print("body {")
	print("background-image: url('background.jpg');")
	print("background-position: center;")
	print("}")
    
	print(".container {")
	print("background-color: rgba(0,0,0,0.5);")
	print("border-radius: 25px")
	print("}")
}
