using System;
using System.Runtime.Serialization;

namespace Wwfd.Core.Exceptions
{
	[Serializable]
	public class InvalidTokenExceptionException : Exception
	{
		//
		// For guidelines regarding the creation of new exception types, see
		//    http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpgenref/html/cpconerrorraisinghandlingguidelines.asp
		// and
		//    http://msdn.microsoft.com/library/default.asp?url=/library/en-us/dncscol/html/csharp07192001.asp
		//

		public InvalidTokenExceptionException()
		{
		}

		public InvalidTokenExceptionException(string message) : base(message)
		{
		}

		public InvalidTokenExceptionException(string message, Exception inner) : base(message, inner)
		{
		}

		protected InvalidTokenExceptionException(
			SerializationInfo info,
			StreamingContext context) : base(info, context)
		{
		}
	}
}