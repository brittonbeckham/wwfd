SET IDENTITY_INSERT [dbo].[Document] ON

INSERT [dbo].[Document] ([DocumentId], [DocumentTypeId], [DocumentName], [DocumentText]) VALUES (1,2, 
		'Biography of John Jay',
		'<p>John Jay was an American statesman, Patriot, diplomat, one of the Founding Fathers of the United States, signer of the Treaty of Paris, and first Chief Justice of the United States (1789–95).</p>
		<p>Jay was born into a wealthy family of merchants and government officials in New York City. He became a lawyer and joined the New York Committee of Correspondence and organized opposition to British rule. He joined a conservative political faction that, fearing mob rule, sought to protect property rights and maintain the rule of law while resisting British violations of human rights.</p>
		<p>Jay served as the President of the Continental Congress (1778–79), an honorific position with little power. During and after the American Revolution, Jay was Minister (Ambassador) to Spain, a negotiator of the Treaty of Paris by which Great Britain recognized American independence, and Secretary of Foreign Affairs, helping to fashion United States foreign policy. His major diplomatic achievement was to negotiate favorable trade terms with Great Britain in the Treaty of London of 1794.</p>
		<p >Jay, a proponent of strong, centralized government, worked to ratify the U.S. Constitution in New York in 1788 by pseudonymously writing five of The Federalist Papers, along with the main authors Alexander Hamilton and James Madison. After the establishment of the U.S. government, Jay became the first Chief Justice of the United States, serving from 1789 to 1795.</p>
		<p>As a leader of the new Federalist Party, Jay was the Governor of New York State (1795–1801), where he became the state''s leading opponent of slavery. His first two attempts to end slavery in New York in 1777 and 1785 failed, but a third in 1799 succeeded. The 1799 Act, a gradual emancipation he signed into law, eventually gave all slaves in New York their freedom before his death in 1829.</p>')

SET IDENTITY_INSERT [dbo].[Document] OFF

INSERT INTO [dbo].[FounderDocument] VALUES (4,1)