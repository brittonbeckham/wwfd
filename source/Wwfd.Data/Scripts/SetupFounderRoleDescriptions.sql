ALTER TABLE FounderRole
	ADD [Description] varchar(512) NULL;
	
UPDATE FounderRole SET [Description] = 'The framers of the Constitution can refer alternatively to the 39 signers of the U.S. Constitution or to the 55 delegates present at the Constitutional Convention (sixteen did not sign).' WHERE Id = 1
UPDATE FounderRole SET [Description] = 'Signed one of the four major Founding Documents: The Declaration of the United States, The Articles of Confederation, The Constitution of the United States of America, or the Treaty of Paris.' WHERE Id = 2
UPDATE FounderRole SET [Description] = 'Commissioned or sent by the people to represent them at in Congress, at the Constitutional Convention or in some other public capacity.' WHERE Id = 3
UPDATE FounderRole SET [Description] = 'Represented either the 13 original colonies or the United States of America in a foreign country.' WHERE Id = 4
