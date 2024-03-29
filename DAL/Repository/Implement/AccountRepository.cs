﻿using DAL.Entities;
using DAL.Repository.Interface;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using DAL.Enum;

namespace DAL.Repository
{
    public class AccountRepository : IAccountRepository
	{
		protected readonly ImiuDbContext _context;
		protected readonly DbSet<Account> _dbSet;
		public AccountRepository(ImiuDbContext context)
		{
			_context = context;
			_dbSet = context.Set<Account>();
		}
		public void Create(Account account)
		{
			//Create account
			_dbSet.Add(account);
		}

		public List<Account> GetAll()
		{
			return _dbSet.ToList();
		}
		
		public void ActivateAccount(Guid accountId)
		{
			var account = _dbSet.Find(accountId);
			if (account != null)
			{
				account.Status = AccountStatus.ACTIVE;
				_dbSet.Update(account);
			}
		}

		public Account GetLocalByEmail(string email)
		{
			return _dbSet.Local.FirstOrDefault(a => a.Email == email);
		}

		public List<Account> GetAll(AccountStatus status, Role role)
		{
			return _dbSet.Where(a => a.Status == status && a.Role == role).ToList();
		}

		public Account GetByEmail(string email)
		{
			return _dbSet.Include(a=>a.Plans).FirstOrDefault(x => x.Email == email);
		}

		public Account GetByID(Guid userID)
		{
			return _dbSet.Include(a=>a.Plans).FirstOrDefault(x => x.Id == userID);
		}

		public Account Login(string email, string password)
		{
			Account account = _dbSet.FirstOrDefault(x => x.Email == email && x.Password == password);
			if (account != null)
			{
				return account;
			}
			return null;
		}

		public void Update(Account account)
		{
			_dbSet.Update(account);
		}
	}
}
