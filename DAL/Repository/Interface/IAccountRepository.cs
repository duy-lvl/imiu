﻿using DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repository.Interface
{
    public interface IAccountRepository
    {
        Account Login(string email, string password);
        void Create(Account account);
        Account GetByEmail(string email);
        Account GetByID(Guid userID);

        void Update(Account account);
        List<Account> GetAll();

        void SaveAccount(Account account);
        void ActivateAccount(Guid accountId);
    }
}
