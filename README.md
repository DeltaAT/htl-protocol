# HTLium

A Template for Protocolls for higher Technical Colleges for Informatin Technology.

## Typst

In ``examples/main.typ`` is a example file on how to use my template.

Here the documentation for typst in general: <https://typst.app/docs/>

### Compiler Download

<https://typst.app/open-source/>

## Usage

### Local Package

Copy all files and folders to `~\AppData\Local\typst\packages\{namespace}\{package}\{version}`.
For Example: `~\AppData\Local\typst\packages\local\htlium\1.1.1\`.
Then use it in your file like this:

```typst
#import "@local/htlium:1.1.1": template

#show: body => template(body)
```

1. The following parameter can be set:
   1. `author` string: Full Name
   2. `class-long` string: Center Header
   3. `logo-url` string (path): path to logo
   4. `school-year` string: e.g.: 2025/26
   5. `title` string: Protocol Title
   6. `subtitle` string: Subtitle
   7. `task-title` string: Task Title
   8. `task-content` string: Task description
   9. `class` string: school class
   10. `date` string: date of your protocol
   11. `subject` string: school subject
   12. `school` string: your school name
   13. `department` string: your school debartment
   14. `teachers` list(string): list of teachers
   15. `do_lof` bool: if you want a list of figures
   16. `do_lot` bool: if you want a list of tables
   17. `do_bib` bool: if you want a bibliography
   18. `bib-src` string(path): path to bibliography file
   19. `fancy_design` bool: if you want fancy color design

There are standard Values for everything.
