
-- Determine how many copies of the book 'Dracule'

-- Are Available for library patrons to borrow.

-- Check how many  copy of  Dracula books do we have 
Select 
Count(Title)
from Books
where Books.Title = 'Dracula'

-- how many Copy are not availble at the present time
Select 
    Count(b.Title)
from loans as l
join Books as b on l.BookID =b.BookID
where b.Title = 'Dracula' and l.ReturnedDate is null


Select 
    (Select 
        Count(b.Title)
    from Books as b
    where b.Title = 'Dracula') -
        ( Select 
              Count(b.Title)
        from Books as b
        join loans as l on l.BookID =b.BookID
        where b.Title = 'Dracula' and 
        l.ReturnedDate is null)  as AvailableCopies ;

/*
 Add those to Books Table 

Title: Dracula
Author: Bram Stoker
Year: 1897
New ID: 4819277482

Title: Gulliver's Travels
Author: Jonathan Swift
Year: 1729
New ID: 4899254401
*/
SELECT * FROM books

INSERT INTO Books (Title,Author,Published ,Barcode)
Values 
('Gulliver''s Travels into Serveral Remote Nations of the World','Jonathan Swift','1729','4899254401'),
('Dracula','Bram Stoker','1897','4819277482')

Select * FROM Books 
order by BookID DESC
limit 5 ;


-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the
-- due date is September 8, 2022.


INSERT INTO loans (BookID ,PatronID , LoanDate , DueDate )
Values(

    (SELECT BookID FROM Books 
        where Barcode = '2855934983') ,
    (SELECT PatronID FROM patrons
         where Email= 'jvaan@wisdompets.com') ,
    '2022-08-25', 
    '2022-09-08'
);


INSERT INTO loans (BookID ,PatronID , LoanDate , DueDate )
Values(
    (SELECT BookID FROM Books 
        where Barcode = '4043822646') ,
    (SELECT PatronID FROM patrons
        where Email= 'jvaan@wisdompets.com') ,
    '2022-08-25' , 
    '2022-09-08'
)

-- Check Code 
Select * 
From loans as l 
join Books as b on l.BookID = b.BookID
where  PatronID = (
        Select 
            PatronID 
        FROM patrons
       where Email = 'jvaan@wisdompets.com');



-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.


Select 
    l.LoanId,
    b.BookID,
    b.Title,
    p.FirstName ,
    p.Email,
    l.DueDate
From loans as l
join books as b on l.BookID = b.BookID 
join patrons as p on l.PatronID = p.PatronID
where  l.DueDate ='2022-07-13' and l.ReturnedDate is null ;



-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613

Update loans 
set ReturnedDate = '2022-07-05'
where BookID = 
  (
    Select BookID  from Books where Barcode = '6435968624')
    and ReturnedDate is null ;
  


Update loans 
set ReturnedDate = '2022-07-05'
where BookID = 
  (
    Select BookID  from Books where Barcode = '5677520613')
    and ReturnedDate is null;
  

Update loans 
set ReturnedDate = '2022-07-05'
where BookID = 
  (
    Select BookID  from Books where Barcode = '8730298424')
    and ReturnedDate is null;

-- Prepare a report of the library patrons
-- who have checked out the fewest books.

with FewestPatrons  as (
  Select 
    PatronID , 
    Count(LoanId) TotalBooks 
  from loans
  group by PatronID
)
SELECT 
    p.PatronID,
    p.FirstName ,
    p.Email,
    f.TotalBooks
FROM patrons as p join FewestPatrons as f
on p.PatronID = f.PatronID
order by TotalBooks asc 
limit 10 ;



-- Create a list of books to feature in an exhibit.
-- Make a pick list of books published from 1890-1899
-- which are not currently checked out.


Select
    BookID,
    Title,
    Barcode
From Books  
where Published Between 1890 and 1899
and (BookID not in 
    (
    SELECT 
      BookID
    From loans 
    where ReturnedDate is null ))
order by Title ;


--Create a report showing
--how many books were ublished each year.

Select 
  published,
 Count (Distinct Title) as NrBook
 from books
group by published
order by NrBook DESC;

-- Report 2: Show the five books that have been
-- checked out the most.

Select 
    B.Title,
    count(l.LoanId) as LoanCount
from loans as l join books as b 
on l.BookID = b.BookID
group by b.Title
order by LoanCount DESC
limit 5;
