namespace Newgit;

using sap.workflow from './WorkflowObject';

entity Books
{
    key ID : Integer;
    title : String(100);
    stock : Integer;
    price : Decimal(10,2);
    currency : String(8);
    author : Association to one Authors;
}

entity Authors
{
    key ID : UUID
        @Core.Computed;
    createdAt : DateTime;
    createdBy : String(100);
    modifiedAt : DateTime;
    modifiedBy : String(100);
    books : Association to many Books on books.author = $self;
}
