 
DELETE FROM Usr
--TRUNCATE TABLE Usr
SET IDENTITY_INSERT Usr ON

INSERT INTO Usr (K, Email, FirstName, LastName, Password, IsMale, IsFemale, IsAdmin, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, LoginString, NickName, IsSalesPerson, SalesTeam, PlacesVisitCount, MusicTypesFavouriteCount, PicPhotoK, AdminLevel) VALUES (1, 'user1@domain.com', 'user', 'one', 'password', 0, 1, 1, 1, 1, 1, '123456', 'NickName1', 1, 2, 1, 1, 1 , 3)
INSERT INTO Usr (K, Email, NickName, Password, IsMale, IsFemale) VALUES (2, 'user2@domain.com', 'Nickname2', 'password', 1, 0)
INSERT INTO Usr (K, Email, Password, IsMale, IsPromoter, IsEmailVerified, Nickname, FirstName, LastName, LegalTermsUser1, LegalTermsUser2, LegalTermsPromoter2) VALUES (3, 'promoter1@domain.com', 'password', 1, 1, 1, 'Promoter1', 'Promoter', 'McPromoterson', 1, 1, 1)
INSERT INTO Usr (K, Email, NickName, Password, IsMale, IsFemale) VALUES (4, 'user4@domain.com', 'Nickname4', 'password', 1, 0)
INSERT INTO Usr (K, Email, FirstName, LastName, IsPromoter, LegalTermsPromoter2, Password, IsMale, IsFemale, IsAdmin, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, IsSalesPerson, SalesTeam, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (5, 'super@domain.com', 'super', 'user', 1, 1, 'pass', 0, 1, 1, 1, 1, 1, 'super', 1, 2, 1, 1, 'rgfeas')
INSERT INTO Usr (K, Email, FirstName, LastName, IsPromoter, LegalTermsPromoter2, Password, IsMale, IsFemale, IsAdmin, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, IsSalesPerson, SalesTeam, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (6, 'super1@domain.com', 'super1', 'user', 1, 1, 'pass', 0, 1, 1, 1, 1, 1, 'super1', 1, 2, 1, 1, 'rhgreg')
INSERT INTO Usr (K, Email, FirstName, LastName, IsPromoter, LegalTermsPromoter2, Password, IsMale, IsFemale, IsAdmin, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, IsSalesPerson, SalesTeam, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (7, 'super2@domain.com', 'super2', 'user', 1, 1, 'pass', 0, 1, 1, 1, 1, 1, 'super2', 1, 2, 1, 1, 'regreg')
INSERT INTO Usr (K, Email, FirstName, LastName, IsPromoter, LegalTermsPromoter2, Password, IsMale, IsFemale, IsAdmin, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, IsSalesPerson, SalesTeam, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (8, 'system@donstayin.com', 'system', 'user', 1, 1, 'pass', 0, 1, 1, 1, 1, 1, 'system', 1, 2, 1, 1, 'egfdas')
INSERT INTO Usr (K, Email, FirstName, LastName, IsPromoter, LegalTermsPromoter2, Password, IsMale, IsFemale, IsAdmin, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, IsSalesPerson, SalesTeam, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (9, 'super4@domain.com', 'super4', 'user', 1, 1, 'pass', 0, 1, 1, 1, 1, 1, 'super4', 1, 2, 1, 1, 'gegegs')
INSERT INTO Usr (K, Email, FirstName, LastName, IsPromoter, LegalTermsPromoter2, Password, IsMale, IsFemale, IsAdmin, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, IsSalesPerson, SalesTeam, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (10, 'super5@domain.com', 'super5', 'user', 1, 1, 'pass', 0, 1, 1, 1, 1, 1, 'super5', 1, 2, 1, 1, 'blahdd')
INSERT INTO Usr (K, Email, FirstName, LastName, IsPromoter, LegalTermsPromoter2, Password, IsMale, IsFemale, IsAdmin, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, IsSalesPerson, SalesTeam, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (11, 'super6@domain.com', 'super6', 'user', 1, 1, 'pass', 0, 1, 1, 1, 1, 1, 'super6', 1, 2, 1, 1, 'asfass')
INSERT INTO Usr (K, Email, FirstName, LastName, IsPromoter, LegalTermsPromoter2, Password, IsMale, IsFemale, IsAdmin, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, IsSalesPerson, SalesTeam, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (12, 'super7@domain.com', 'super7', 'user', 1, 1, 'pass', 0, 1, 1, 1, 1, 1, 'super7', 1, 2, 1, 1, 'asdfsa')
INSERT INTO Usr (K, Email, FirstName, LastName, IsPromoter, LegalTermsPromoter2, Password, IsMale, IsFemale, IsAdmin, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, IsSalesPerson, SalesTeam, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (13, 'super8@domain.com', 'super8', 'user', 1, 1, 'pass', 0, 1, 1, 1, 1, 1, 'super8', 1, 2, 1, 1, 'dsasds')
INSERT INTO Usr (K, Email, FirstName, LastName, IsPromoter, LegalTermsPromoter2, Password, IsMale, IsFemale, IsAdmin, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, IsSalesPerson, SalesTeam, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (14, 'super9@domain.com', 'super9', 'user', 1, 1, 'pass', 0, 1, 1, 1, 1, 1, 'super9', 1, 2, 1, 1, 'aggweg')


INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (15, 'dummy1@domain.com', 'dummy1', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy1', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (16, 'dummy2@domain.com', 'dummy2', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy2', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (17, 'dummy3@domain.com', 'dummy3', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy3', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (18, 'dummy4@domain.com', 'dummy4', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy4', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (19, 'dummy5@domain.com', 'dummy5', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy5', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (20, 'dummy6@domain.com', 'dummy6', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy6', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (21, 'dummy7@domain.com', 'dummy7', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy7', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (22, 'dummy8@domain.com', 'dummy8', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy8', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (23, 'dummy9@domain.com', 'dummy9', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy9', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (24, 'dummy10@domain.com', 'dummy10', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy10', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (25, 'dummy11@domain.com', 'dummy11', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy11', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (26, 'dummy12@domain.com', 'dummy12', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy12', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (27, 'dummy13@domain.com', 'dummy13', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy13', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (28, 'dummy14@domain.com', 'dummy14', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy14', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (29, 'dummy15@domain.com', 'dummy15', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy15', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (30, 'dummy16@domain.com', 'dummy16', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy16', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (31, 'dummy17@domain.com', 'dummy17', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy17', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (32, 'dummy18@domain.com', 'dummy18', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy18', 1, 1, 'abcdef')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (33, 'dummy19@domain.com', 'dummy19', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy19', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (34, 'dummy20@domain.com', 'dummy20', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy20', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (35, 'dummy21@domain.com', 'dummy21', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy21', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (36, 'dummy22@domain.com', 'dummy22', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy22', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (37, 'dummy23@domain.com', 'dummy23', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy23', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (38, 'dummy24@domain.com', 'dummy24', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy24', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (39, 'dummy25@domain.com', 'dummy25', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy25', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (40, 'dummy26@domain.com', 'dummy26', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy26', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (41, 'dummy27@domain.com', 'dummy27', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy27', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (42, 'dummy28@domain.com', 'dummy28', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy28', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (43, 'dummy29@domain.com', 'dummy29', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy29', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (44, 'dummy30@domain.com', 'dummy30', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy30', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (45, 'dummy31@domain.com', 'dummy31', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy31', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (46, 'dummy32@domain.com', 'dummy32', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy32', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (47, 'dummy33@domain.com', 'dummy33', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy33', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (48, 'dummy34@domain.com', 'dummy34', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy34', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (49, 'dummy35@domain.com', 'dummy35', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy35', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (50, 'dummy36@domain.com', 'dummy36', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy36', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (51, 'dummy37@domain.com', 'dummy37', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy37', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (52, 'dummy38@domain.com', 'dummy38', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy38', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (53, 'dummy39@domain.com', 'dummy39', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy39', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (54, 'dummy40@domain.com', 'dummy40', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy40', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (55, 'dummy41@domain.com', 'dummy41', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy41', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (56, 'dummy42@domain.com', 'dummy42', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy42', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (57, 'dummy43@domain.com', 'dummy43', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy43', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (58, 'dummy44@domain.com', 'dummy44', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy44', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (59, 'dummy45@domain.com', 'dummy45', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy45', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (60, 'dummy46@domain.com', 'dummy46', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy46', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (61, 'dummy47@domain.com', 'dummy47', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy47', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (62, 'dummy48@domain.com', 'dummy48', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy48', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (63, 'dummy49@domain.com', 'dummy49', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy49', 1, 1, '')
INSERT INTO Usr (K, Email, FirstName, LastName, LegalTermsPromoter2, Password, IsMale, IsFemale, IsEmailVerified, LegalTermsUser1, LegalTermsUser2, NickName, PlacesVisitCount, MusicTypesFavouriteCount, LoginString) VALUES (64, 'dummy50@domain.com', 'dummy50', 'user', 1, 'pass', 0, 1, 1, 1, 1, 'dummy50', 1, 1, '')



SET IDENTITY_INSERT Usr OFF