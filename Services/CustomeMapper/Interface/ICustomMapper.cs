using DAL.Entities;
using Services.ServiceModel;

namespace Services.CustomeMapper.Interface
{
	public interface ICustomMapper
	{
		public Account Map(AccountModel accountModel);
		public AccountModel Map(Account account);
	}
}
