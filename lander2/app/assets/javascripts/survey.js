var survey = new Survey.Survey(
{pages:[{name:"page1"}]});
survey.onComplete.add(function (s) {
alert("The results are:" + JSON.stringify(s.data));
 });
survey.render("mySurveyJSName");