using { Newgit as my } from '../db/schema';

@path : 'service/Newgit'
@requires : 'authenticated-user'
service NewgitService
{
    entity SrvBooks as
        projection on my.Books;

    entity SrvAuthors as
        projection on my.Authors;
}
