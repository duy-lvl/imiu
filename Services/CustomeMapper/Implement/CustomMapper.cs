using DAL.Entities;
using Services.CustomeMapper.Interface;
using Services.ServiceModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata;
using System.Text;
using System.Threading.Tasks;

namespace Services.CustomeMapper.Implement
{
	public class CustomMapper : ICustomMapper
	{
		public Account Map(AccountModel accountModel)
		{
			return new Account
			{
				Id = accountModel.Id,
				Name = accountModel.Name,
				Email = accountModel.Email,
				Password = accountModel.Password,
				Dob = accountModel.Dob,
				Role = accountModel.Role,
				Status = accountModel.Status,
								
			};
		}

		public AccountModel Map(Account account)
		{
			return new AccountModel
			{
				Id = account.Id,
				Name = account.Name,
				Email = account.Email,
				Password = account.Password,
				Dob = account.Dob,
				Role = account.Role,
				Status = account.Status,

			};
		}
	}
}
