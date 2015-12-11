using System.ComponentModel;

namespace Wwfd.Data.Enums
{
	public enum FounderRole
	{
		//key positions
        Framer = 1,
		Signer = 2,
        Delegate = 4,
		Diplomat = 5,
        
        //public offices
        [Description("Public Servant")]
        PublicServant = 20,
        President = 21,
        [Description("Vice President")]
        VicePresident = 22,
        [Description("Chief Justice")]
        ChiefJustice = 23,
        Governor = 24,
		Politician = 25,

        //educational positions
        Philosopher = 30,
		Influencer = 31,
		Educator = 32,
        Author = 33,

        //military
        [Description("Solider")]
        Soilder = 50,
        [Description("War-time General")]
        General = 51,
        [Description("War-time Lieutenant")]
        Lieutenant = 52,
        [Description("War-time Colonel")]
        Colonel = 53,
        [Description("War-time Captain")]
        Captain = 54,
        [Description("War-time Major")]
        Major = 55,
        [Description("War-time Sergeant")]
        Sergeant = 56,
        [Description("War-time Corporal")]
        Corporal = 57,
        [Description("War-time Spy")]
        Spy = 58
	}
}