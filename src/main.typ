/*
* @author: Elias Pöschl
* @description: Template für Protokolle
*/

#import "@preview/icu-datetime:0.2.2"

#import "src/titlepage.typ": *
#import "src/boxes.typ": *

#let template(
  body,
  author: "Your Name",
  class-long: "Protokoll",
  logo: image,
  school-year: "2025/26",
  title: "Title",
  subtitle: "Subtitle",
  task-title: "Task Title",
  task-content: "Task Content",
  class: "Class",
  date: datetime.today().display("[Day padding:None].[month].[year]"),
  subject: "Subject",
  school: "School",
  department: "Department",
  teachers: ("Frau Mag. Mustermann", "Herr Mag. Muster"),
  do-lof: true,
  do-lot: true,
  do-bib: true,
  bib-src: "refs.bib",
  fancy-design: true
) = {
  let htlorange = rgb(255, 108, 76)
  
  set heading(
    numbering: "1.",
  )
  show heading: set text(fill: htlorange)
  
  set page(
    paper: "a4",
    margin: (top: 2.95cm, bottom: 2.54cm, left: 1.57cm, right: 1.57cm),
    numbering: "1",
    header: context {
      if counter(page).get().first() > 1 {
        
      grid(
        columns: 3 * (1fr,),
        rows: (7fr, 1fr),
        [
          #author
          #if fancy-design {
             place(
              left + top,
              dx: -1.7cm,
              dy: -0.7cm,
              rect(
                width: 0.5cm,
                height: 31cm,
                fill: rgb(195, 17, 12)
              )
            )
          }
        ],
        align(center)[
          #class-long
        ],
        align(right)[
          #if logo != none [
            #show image: set image(width: 3cm)
            #logo
          ]
        ],
        
        [
          #line(length: 300%, stroke: 0.5pt)
        ],
      )
      }
    },
    footer: context {
      if counter(page).get().first() > 1 [
        #grid(
          columns: 2 * (1fr,),
          [
            #school-year
          ],
          align(right)[
            #counter(page).display("1")
          ],
        )
      ]
    },
  )
  
  set document(
    title: title,
    author: author,
  )
  
  set text(
    font: "Arial",
    size: 12pt,
    lang: "de",
  )
  
  titlepage(
    title,
    subtitle,
    task-title,
    task-content,
    author,
    class,
    school-year,
    date,
    logo,
    subject,
    school,
    department,
    teachers,
    fancy-design
  )
  
  outline()
  pagebreak()
  
  if do-lof {
    show outline.entry: it => {
      it.indented(none, it.prefix() + ": " + it.inner())
    }
    outline(
      title: [Abbildungsverzeichnis],
      target: figure.where(kind: image),
    )
  }
  if do-lot {
    show outline.entry: it => {
      it.indented(none, it.prefix() + ": " + it.inner())
    }
    outline(
      title: [Tabellenverzeichnis],
      target: figure.where(kind: table),
    )
  }
  if do-lot or do-lof {
    pagebreak()
  }
  
  body
  
  if do-bib {
    bibliography(bib-src, style: "ieee",
    title: [Literaturverzeichnis])
  }
}



