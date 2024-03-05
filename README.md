# LearnApexJava
#

There is no master detail between Account and Contact, Account and Opportunity. There exists a special lookup with cascade delete. On Account < Opportunity we can have rollup summary fields but not on Account < Contact.
Account < Contact
Account < Opportunity
