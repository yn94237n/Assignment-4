# Assignment-4

The database DB_PAPER_REVIEWERS allow to researchers submit their research papers for consideration. Reviews by reviewers are recorded for use in the paper selection process. The database system caters primarily to reviewers who record answers to evaluation questions for each paper they review and make recommendations regarding whether to accept or reject the paper. The data requirements are summarized as follows:
- Authors of papers are uniquely identified by e-mail id. First and last names are also recorded.
- Each paper is assigned a unique identifier by the system and is described by a title, abstract, and the name of the electronic file containing the paper.
- A paper may have multiple authors.
- Reviewers of papers are uniquely identified by e-mail address. Each reviewer’s first name, last name, phone number, affiliation, author feedback, committee feedback and topics of interest are also recorded. A reviewer might have different topics of interest.
- Each paper is assigned to different reviewers. A reviewer rates each paper assigned to him or her on a scale of 1 to 10 in four categories: technical merit, readability, originality, and relevance to the conference.
Finally, each reviewer provides an overall recommendation regarding each paper.

This MySQL scripts will build the DB schema and populate the database DB_PAPER_REVIEWERS based on the previous system description.
