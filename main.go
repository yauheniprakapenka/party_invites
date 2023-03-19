package main

import (
	"fmt"
	"html/template"
	"net/http"
)

func main() {
	loadTemplates()

	http.HandleFunc("/", welcomehanlder)
	http.HandleFunc("/list", listHandler)
	http.HandleFunc("/form", fromHandler)

	err := http.ListenAndServe(":5001", nil)
	if err != nil {
		fmt.Println(err)
	}
}

var responses = make([]*Rsvp, 0, 10)
var templates = make(map[string]*template.Template, 3)

func loadTemplates() {
	templateNames := [5]string{"welcome", "form", "thanks", "sorry", "list"}
	for index, name := range templateNames {
		t, err := template.ParseFiles("layout.html", name+".html")
		if err == nil {
			templates[name] = t
			fmt.Println("loaded template", index, name)
		} else {
			panic(err)
		}
	}
}

func welcomehanlder(writer http.ResponseWriter, request *http.Request) {
	templates["welcome"].Execute(writer, nil)
}

func listHandler(writer http.ResponseWriter, request *http.Request) {
	templates["list"].Execute(writer, responses)
}

func fromHandler(writer http.ResponseWriter, request *http.Request) {
	if request.Method == http.MethodGet {
		templates["form"].Execute(writer, formData{
			Rsvp: &Rsvp{}, Errors: []string{},
		})
	} else if request.Method == http.MethodPost {
		request.ParseForm()
		responsesData := Rsvp{
			Name:       request.Form["name"][0],
			Email:      request.Form["email"][0],
			Phone:      request.Form["phone"][0],
			WillAttend: request.Form["willattend"][0] == "true",
		}

		responses = append(responses, &responsesData)

		if responsesData.WillAttend {
			templates["thanks"].Execute(writer, responsesData.Name)
		} else {
			templates["sorry"].Execute(writer, responsesData.Name)
		}
	}
}

type Rsvp struct {
	Name, Email, Phone string
	WillAttend         bool
}

type formData struct {
	*Rsvp
	Errors []string
}
