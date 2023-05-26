using DAL.Entities;
using DAL.Repository.Interface;
using Services.CustomeMapper.Interface;
using Services.Service.Interface;
using Services.ServiceModel;

namespace Services.Service;

public class AccountService : IAccountService
{
	private readonly IAccountRepository _accountRepository;
	private readonly ICustomMapper _customMapper;
	public AccountService(IAccountRepository accountRepository, ICustomMapper customMapper)
	{
		_accountRepository = accountRepository;
		_customMapper = customMapper;
	}
	public AccountModel Login(string email, string password)
	{
		var target= _accountRepository.Login(email, password);
		if (target != null)
		{
			return _customMapper.Map(target);
		}
		return null;
	}

	public void RegisterAccount(AccountModel registerAccountModel)
	{
		throw new NotImplementedException();
	}
}