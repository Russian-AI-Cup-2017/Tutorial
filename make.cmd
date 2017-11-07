call wipe.bat

if exist JavaDocsRu.tex ( if exist TutorialRu.tex (
    pdflatex JavaDocsRu.tex
    pdflatex JavaDocsRu.tex
))

if exist JavaDocsEn.tex ( if exist TutorialEn.tex (
    pdflatex JavaDocsEn.tex
    pdflatex JavaDocsEn.tex
))

call wipe-except-pdf.bat

if exist JavaDocsRu.pdf (
    ren JavaDocsRu.pdf TutorialRu.pdf

    if exist ..\code\site\src\main\webapp\assets\documentation\ (
        copy /Y TutorialRu.pdf ..\code\site\src\main\webapp\assets\documentation\codewars2017-docs-ru.pdf
    )
)

if exist JavaDocsEn.pdf (
    ren JavaDocsEn.pdf TutorialEn.pdf

    if exist ..\code\site\src\main\webapp\assets\documentation\ (
        copy /Y TutorialEn.pdf ..\code\site\src\main\webapp\assets\documentation\codewars2017-docs-en.pdf
    )
)
