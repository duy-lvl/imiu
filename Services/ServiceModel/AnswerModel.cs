﻿
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.ServiceModel
{
    public class AnswerModel
    {
        public Guid Id { get; set; }

        public string Content { get; set; }

        public TagModel Tag { get; set; }
    }
}
