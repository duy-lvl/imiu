using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.UnitOfWork
{
	public class UnitOfWork : IUnitOfWork
	{
		private readonly ImiuDbContext _context;
		public UnitOfWork(ImiuDbContext context)
		{
			_context = context;
		}
		public bool Commit()
		{
			return _context.SaveChanges() > 0;
		}

		public async Task<bool> CommitAsync()
		{
			return await _context.SaveChangesAsync() > 0;
		}
	}
}
