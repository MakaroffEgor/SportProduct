//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SportProduct.DataBase
{
    using System;
    using System.Collections.Generic;
    
    public partial class Orders
    {
        public int Number { get; set; }
        public string Content { get; set; }
        public System.DateTime DateOrder { get; set; }
        public System.DateTime DateDelivery { get; set; }
        public int PointIssueId { get; set; }
        public Nullable<int> UserId { get; set; }
        public string CodeToGet { get; set; }
        public int StatusId { get; set; }
    
        public virtual PointIssue PointIssue { get; set; }
        public virtual Status Status { get; set; }
        public virtual Users Users { get; set; }
    }
}