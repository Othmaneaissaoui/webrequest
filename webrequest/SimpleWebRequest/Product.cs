using System;
using System.Collections.Generic;

namespace SimpleWebRequest
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }
    }

    public class ApiResponse<T>
    {
        public string Message { get; set; }
        public T Data { get; set; }
    }
}