## Interactive Introduction to R via Shiny - Repository

### Directory 
- To run the tutorial, please follow this [Link](https://simondjs.shinyapps.io/final_tutorial/).
- 



### Notes about repository
This repository serves to contain a script for a Shiny app of an interactive introduction to R tutorial and simultaneously a proof of concept for further tutorials of a similar interactive style. <br> My motivation to create it was to attempt a more interactive approach to (the otherwise excellent) [Coding Club Tutorials](https://ourcodingclub.github.io) as I found a lack of interaction to be a major downside in tutorials there. I had seen other interactive approaches such as the one by [codeacademy](https://www.codecademy.com/learn/learn-r), which involves Rmd inputs and html outputs, and was inspired by them. I figured that similar interactive features could be recreated in Shiny and then various interactive Shiny graphics added to cement understanding of concepts. Additionally, I reasoned that not using R Studios, which can appear overwhelmingly complicated to beginners, would reduce intimidation caused by the language.  I soon began to learn, however, that creating interactive components in Shiny is a lot more difficult than anticipated. I had originally intended to print custom error messages using the *validate()* function, with the aid of which the user could be guided to the answer in a rewarding and non-frustrating manner, but implementing this proved to be overly complicated. Neither was I able to have Shiny retain variables and perform functions based on user inputs (except by having users type within parentheses of functions already provided). Finally, any alternative ideas of implementing such functionality that I could think of failed, and the code often seemed to stop working without me having made any changes (requiring a restart of R Studios). These issues encountered over the development of the app means that the product here falls short of my original vision. However, I am aware that most of these issues could be negated with greater Shiny expertise. Thus, I hope this proof of concept might inspire contributors of Coding Club to realize the benefits shiny tutorials would have by expanding upon the script herein provided. Alternatively, I hope that I might learn enough about Shiny in the future so that I might myself be able to improve upon this foundation.




