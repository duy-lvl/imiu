﻿using DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repository.Interface
{
    public interface ITagRepository
    {
        Tag GetTagBaseOnMealTag(Guid tagID);
        Tag GetTagByAnswerID(Guid? answerID);
        List<Tag> GetAllTags();
        List<Tag> GetAllTagsExceptDiseases();
    }
}
