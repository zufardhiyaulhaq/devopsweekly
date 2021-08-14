package devopsweekly

import (
	"net/http"
	"regexp"

	"github.com/PuerkitoBio/goquery"
	communityv1alpha1 "github.com/cloudnative-id/community-operator/pkg/apis/community/v1alpha1"
	"github.com/zufardhiyaulhaq/devopsweekly/pkg/scrappers"
)

type DevOpsWeekly struct {
	URL string
}

func NewDevOpsWeekly(URL string) scrappers.Scrapper {
	return DevOpsWeekly{
		URL: URL,
	}
}

func (g DevOpsWeekly) GetName() (string, error) {
	response, err := http.Get(g.URL)
	if err != nil {
		return "", err
	}

	defer response.Body.Close()

	document, err := goquery.NewDocumentFromReader(response.Body)
	if err != nil {
		return "", err
	}

	text := document.Find("div#content").ChildrenFiltered("table:first-of-type").First().Find("td:first-of-type").First().Find("p").Text()
	regex, err := regexp.Compile(`\d+`)
	if err != nil {
		return "", err
	}

	name := "DevOps Weekly " + regex.FindString(text)

	return name, nil
}

func (g DevOpsWeekly) GetArticles() ([]communityv1alpha1.ArticleSpec, error) {
	var articles []communityv1alpha1.ArticleSpec

	response, err := http.Get("https://devopsweekly.com/issues/latest?layout=bare")
	if err != nil {
		return articles, err
	}

	defer response.Body.Close()

	document, err := goquery.NewDocumentFromReader(response.Body)
	if err != nil {
		return articles, err
	}

	document.Find("div#content").Each(func(i int, div *goquery.Selection) {
		div.Find("span.mainlink").Each(func(i int, span *goquery.Selection) {
			var article communityv1alpha1.ArticleSpec
			article.Title = span.Find("a").Text()
			article.Type = "News"
			article.Url, _ = span.Find("a").Attr("href")

			articles = append(articles, article)
		})
	})

	return articles, nil
}
