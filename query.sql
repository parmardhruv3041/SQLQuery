
/*pivot query*/
SELECT <table>.<attributes>,
[1] AS Itme1,
[2] AS Itme2,
[3] AS Itme3,
[4] AS Itme4,
[5] AS Itme5,
[6] AS Itme6
/* etc items*/
FROM <table> t inner join 
(select <table attr>, [1],[2],[3],[4],[5],[6] from 
 (select <table attr> from <table>) P pivot 
 ( sum(<attrNumb>) for <table> in ([1],[2],[3],[4],[5],[6])) as pvt ) 
 as res on <table attr> = <table attr>
 /* relation on table to be pivot  */
 
 
